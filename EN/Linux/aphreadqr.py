import cv2
from pyzbar.pyzbar import decode
import time
import tkinter as tk
from PIL import Image, ImageTk

cap = cv2.VideoCapture(0)
cap.set(4, 600)  # 3 - Width
cap.set(3, 480)  # 4 - Height
used_codes = []

root = tk.Tk()
root.title("AlphaReaderQR 1.2.03ab by GatoVerde95")

canvas = tk.Canvas(root, width=600, height=480)
canvas.pack()

label = tk.Label(root, text="")
label.pack()

def update_frame():
    success, frame = cap.read()

    for code in decode(frame):
        if code.data.decode('utf-8') not in used_codes:
            label.config(text="Ready QR Code registered.\n" + code.data.decode('utf-8'))
            used_codes.append(code.data.decode('utf-8'))
            time.sleep(3)
        else:
            label.config(text="Sorry, this code has already been used!")
            time.sleep(2)

    image = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)
    image = Image.fromarray(image)
    image = ImageTk.PhotoImage(image)
    canvas.create_image(0, 0, anchor=tk.NW, image=image)
    canvas.image = image

    root.after(1, update_frame)

update_frame()

root.mainloop()

cap.release()
cv2.destroyAllWindows()

