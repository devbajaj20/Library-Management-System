import ttkbootstrap as ttk
from ttkbootstrap.constants import *
from tkinter import messagebox, simpledialog
import pymysql

# Database Connection
def db_connect():
    try:
        connection = pymysql.connect(
            host='localhost',
            user='root',
            password='Dev@180404',  # Your MySQL password
            database='libmgt',      # Your database name
            charset='utf8mb4',
            cursorclass=pymysql.cursors.DictCursor
        )
        return connection
    except pymysql.MySQLError as e:
        messagebox.showerror("Database Connection Error", str(e))
        return None

# Custom Dialog for Data Entry
class DataEntryDialog(ttk.Toplevel):
    def __init__(self, parent, title, fields):
        super().__init__(parent)
        self.title(title)
        self.result = None

        entry_frame = ttk.Frame(self, padding=10)
        entry_frame.pack(fill='x', expand=True)

        self.entries = {}
        for field in fields:
            row = ttk.Frame(entry_frame)
            row.pack(side='top', fill='x', pady=5)

            label = ttk.Label(row, text=f"{field}:", width=18)
            label.pack(side='left')

            entry = ttk.Entry(row)
            entry.pack(side='right', expand=True, fill='x')
            self.entries[field] = entry

        button_frame = ttk.Frame(self, padding=10)
        button_frame.pack()

        ttk.Button(button_frame, text="Submit", command=self.on_submit, bootstyle="success").pack(side='left', padx=5)
        ttk.Button(button_frame, text="Cancel", command=self.cancel, bootstyle="danger").pack(side='left', padx=5)

    def on_submit(self):
        self.result = {field: entry.get() for field, entry in self.entries.items()}
        self.destroy()

    def cancel(self):
        self.destroy()

    def show(self):
        self.wait_window()
        return self.result

# CRUD Operations
def add_data(table, columns, treeview):
    dialog = DataEntryDialog(window, f"Add Data to {table}", columns)
    data = dialog.show()
    if data:
        conn = db_connect()
        if conn is None:
            return
        with conn.cursor() as cursor:
            # 🧠 Humanized insert logging (printed in console)
            log_str = f"\n📥 Inserting new record into table '{table}':\n"
            for col, val in data.items():
                emoji = "🔹"
                if "id" in col:
                    emoji = "🆔"
                elif "name" in col:
                    emoji = "🧑" if "author" in table.lower() or "staff" in table.lower() else "📚"
                elif "date" in col:
                    emoji = "📅"
                elif "price" in col or "amount" in col:
                    emoji = "💰"
                elif "status" in col:
                    emoji = "✅"
                elif "location" in col:
                    emoji = "📍"
                elif "contact" in col:
                    emoji = "📞"
                log_str += f"{emoji} {col}: {val}\n"
            print(log_str)

            # 🔁 Actual Insert Query
            placeholders = ', '.join(['%s'] * len(data))
            column_names = ', '.join(columns)
            sql = f"INSERT INTO {table} ({column_names}) VALUES ({placeholders})"
            try:
                cursor.execute(sql, list(data.values()))
                conn.commit()
                messagebox.showinfo("Success", f"Data added to {table} successfully")
                # Refresh Treeview after insert
                view_data(table, treeview, columns)
            except Exception as e:
                messagebox.showerror("Error", str(e))
            finally:
                conn.close()

def view_data(table, treeview, columns):
    conn = db_connect()
    if conn is None:
        return
    with conn.cursor() as cursor:
        sql = f"SELECT * FROM {table}"
        cursor.execute(sql)
        records = cursor.fetchall()
        treeview.delete(*treeview.get_children())
        for row in records:
            treeview.insert('', 'end', values=[row[col] for col in columns])
    conn.close()

def delete_data(table, id_column, treeview, columns):
    record_id = simpledialog.askstring("Delete Record", f"Enter {id_column} to delete:")
    if record_id:
        conn = db_connect()
        if conn is None:
            return
        with conn.cursor() as cursor:
            sql = f"DELETE FROM {table} WHERE {id_column} = %s"
            try:
                cursor.execute(sql, (record_id,))
                conn.commit()
                if cursor.rowcount == 0:
                    messagebox.showinfo("Info", "No record found with the given ID.")
                else:
                    messagebox.showinfo("Success", "Record deleted successfully.")
                    # Refresh Treeview after delete
                    view_data(table, treeview, columns)
            except Exception as e:
                messagebox.showerror("Error", str(e))
            finally:
                conn.close()
    else:
        messagebox.showinfo("Info", "Deletion cancelled, no ID provided.")

# Setup GUI with Tabs
def setup_ui(window):
    window.title("📚 Library Management System")
    window.geometry('1400x750')

    tab_control = ttk.Notebook(window, bootstyle="primary")

    # Define tables and columns
    tables = {
    'LIBRARY': ['LIBRARY_ID', 'LIBRARY_NAME', 'LIBRARY_LOCATION'],
    'MEMBER': ['MEMBER_ID', 'MEMBER_TYPE', 'MEMBER_ADDRESS', 'MEMBER_CONTACT_NO', 'MEMBER_NAME_FIRST', 'MEMBER_NAME_LAST'],
    'STAFF': ['STAFF_ID', 'STAFF_NAME_FIRST', 'STAFF_NAME_LAST', 'STAFF_POSITION', 'STAFF_SALARY'],
    'STUDENT': ['STUDENT_ID', 'STUDENT_NAME'],
    'FACULTY_STAFF': ['FACULTY_ID', 'FACULTY_NAME'],
    'AUTHOR': ['AUTHOR_ID', 'AUTHOR_NAME_FIRST', 'AUTHOR_NAME_LAST', 'AUTHOR_NATIONALITY'],
    'LIBRARY_CARD': ['CARD_ID', 'EXPIRY_DATE', 'CARD_STATUS', 'MEMBER_ID'],
    'PAYMENT': ['PAYMENT_ID', 'PAYMENT_DATE', 'MEMBER_ID'],
    'LOAN_HISTORY': ['LOAN_ID', 'BOOK_ID', 'MEMBER_ID', 'LOAN_DATE'],
    'BORROWING_RECORD': ['RECORD_ID', 'BORROWED_DATE', 'RETURN_DATE', 'BOOK_ID', 'MEMBER_ID'],
    'GENRE': ['GENRE_NAME', 'GENRE_TYPE'],
    'BOOKS': ['BOOK_ID', 'BOOK_TITLE', 'BOOK_PRICE', 'BOOK_STATUS'],
    'OVERDUE_NOTICE': ['NOTICE_ID', 'MEMBER_ID', 'NOTICE_STATUS', 'NOTICE_DATE', 'BOOK_ID'],
    'ADMIN': ['ADMIN_ID', 'ADMIN_NAME_FIRST', 'ADMIN_NAME_LAST', 'ADMIN_CONTACT_NO', 'ADMIN_ROLE'],
    'FINE': ['FINE_ID', 'FINE_AMOUNT', 'MEMBER_ID', 'FINE_DATE'],
    'SUPPLIER': ['SUPPLIER_ID', 'SUPPLIER_NAME_FIRST', 'SUPPLIER_NAME_LAST', 'SUPPLIER_LOCATION', 'SUPPLIER_CONTACT_NO'],
    'PUBLISHER': ['PUBLISHER_ID', 'PUBLISHER_NAME_FIRST', 'PUBLISHER_NAME_LAST', 'PUBLISHER_LOCATION']
}

    for table, cols in tables.items():
        tab = ttk.Frame(tab_control)
        tab_control.add(tab, text=table)

        frame = ttk.Frame(tab, padding=10)
        frame.pack(expand=True, fill='both')

        # Scrollbars and Treeview
        tree_scroll_y = ttk.Scrollbar(frame, orient='vertical')
        tree_scroll_y.pack(side='right', fill='y')

        tree = ttk.Treeview(frame, columns=cols, show='headings', yscrollcommand=tree_scroll_y.set)
        tree_scroll_y.config(command=tree.yview)

        for col in cols:
            tree.heading(col, text=col)
            tree.column(col, anchor='center', width=120)
        tree.pack(expand=True, fill='both')

        # Buttons
        btn_frame = ttk.Frame(tab, padding=10)
        btn_frame.pack(fill='x')

        ttk.Button(btn_frame, text="🔍 View Data", command=lambda t=table, tr=tree, c=cols: view_data(t, tr, c), bootstyle="info").pack(side='left', padx=5)
        ttk.Button(btn_frame, text="➕ Add Data", command=lambda t=table, c=cols, tr=tree: add_data(t, c, tr), bootstyle="success").pack(side='left', padx=5)
        ttk.Button(btn_frame, text="❌ Delete Data", command=lambda t=table, id_col=cols[0], tr=tree, c=cols: delete_data(t, id_col, tr, c), bootstyle="danger").pack(side='left', padx=5)

    tab_control.pack(expand=1, fill='both')

# Main
def main():
    global window
    window = ttk.Window(themename="superhero")  # Try others like "flatly", "darkly", etc.
    setup_ui(window)
    window.mainloop()

if __name__ == "__main__":
    main()
