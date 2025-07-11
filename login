import tkinter as tk
from tkinter import messagebox

# Simple user database (in real apps, use a secure database)
users = {
    "admin": "password123",
    "user1": "pass456"
}

def login():
    username = entry_username.get()
    password = entry_password.get()
    
    if username in users and users[username] == password:
        messagebox.showinfo("Success", "Login successful!")
        root.destroy()  # Close the login window
    else:
        messagebox.showerror("Error", "Invalid username or password")

# Create the main window
root = tk.Tk()
root.title("Login App")
root.geometry("300x200")

# Username label and entry
label_username = tk.Label(root, text="Username:")
label_username.pack(pady=10)
entry_username = tk.Entry(root)
entry_username.pack()

# Password label and entry
label_password = tk.Label(root, text="Password:")
label_password.pack(pady=10)
entry_password = tk.Entry(root, show="*")  # Hide password input
entry_password.pack()

# Login button
button_login = tk.Button(root, text="Login", command=login)
button_login.pack(pady=20)

# Start the main loop
root.mainloop()
