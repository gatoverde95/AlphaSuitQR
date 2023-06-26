import qrcode
import tkinter as tk
from tkinter import messagebox

def generate_qr_code():
    content = input_entry.get()
    if content:
        img = qrcode.make(content)
        img.save("qr_generated.png")
        messagebox.showinfo("QR Code Generation", "QR Code generated successfully!")
    else:
        messagebox.showwarning("QR Code Generation", "Please enter the content to generate the QR code.")

root = tk.Tk()
root.title("AlphaGenQR 1.1ab")
root.geometry("400x300")

label = tk.Label(root, text="Welcome to the QR Code Generator!", font=("Arial", 14))
label.pack(pady=20)

input_label = tk.Label(root, text="QR code content:")
input_label.pack()

input_entry = tk.Entry(root, font=("Arial", 12), width=30)
input_entry.pack(pady=10)

generate_button = tk.Button(root, text="Generate QR Code", command=generate_qr_code)
generate_button.pack(pady=10)

exit_button = tk.Button(root, text="Exit", command=root.quit)
exit_button.pack()

root.mainloop()
