<!-- Logo -->
<p align="center">
  <img src="alpha.png" alt="Logo" width="200" height="200">
</p>

<!-- Título del proyecto -->
# AlphaSuitQR + Launcher (No Legacy)

<!-- Descripción -->
## Descripcion - Description

- Español 

Es un programa basico de uso educativo en las clases de Programacion orientado a escaneo de codigos incriptados en lenguaje QR, basado en el lenguaje de Python, VBScript y su interfaz programado en Visual Basic en Objetos. En este repositorio se encuentra su codigo fuente con todos los assets, recursos y de manera portable solo si Python se encuentra en el ordenador que tenga Windows (Ocupa Wine en Linux y macOS). Basado en su version Legacy, reprogramado con un Launcher nuevo y caracteristicas.

No es compatible Android con el uso de archivos . sh como ejecutables pero si con el formato PY. Para Linux y macOS solo esta disponible en Source Code sin instalacion mientas en Windows solo en portable y Auto-extraible.

Este codigo fuente esta protegido por una GNU General Public License v3.0 lo cual lo hace libre su uso y su codigo fuente.

- English 

It is a basic program for educational use in programming classes oriented to scan encrypted codes in QR language, based on the Python language, VBScript and its interface programmed in Visual Basic in Objects. In this repository you can find its source code with all the assets, resources and in a portable way only if Python is in the computer that has Windows (it uses Wine in Linux and macOS). Based on its Legacy version, reprogrammed with a new Launcher and features.

Android is not compatible with the use of . sh files as executables but with the PY format. For Linux and macOS it is only available in Source Code without installation while in Windows only in portable and Auto-extractable.

This source code is protected by a GNU General Public License v3.0 which makes it free to use and source code.

<!-- Capturas de pantalla -->
## Capturas de pantalla - Screenshots

| Descripción | Captura de pantalla |
| ----------- | ------------------ |
| Launcher (Solo en Windows)(Only en Windows) | ![Lanzador](home.png) |
| AlphaGenQR | ![Generador de Codigo QR](AlphaGenQR.png) |
| AlphaReadQR | ![Lector de Codigo QR](AlphaReadQR.png) |

<!-- Instalación -->
## Instalación - Installation

- Español

En Windows se tiene la version Portable que solo para extraer y el Auto-Extraible que hace el trabajo de una sola vez. Nota: debe estar instalado Python en Windows para no tener confilictos en la ejecucion del codigo.

En Linux y macOS se tiene que extraer el .zip en una carpeta.

- Para Windows se deben instalar los proximos repositorios con Windows PowerShell (Administrador):

   pip install qrcode | pip install pyzbar | pip install pillow
  

- Para Linux y macOS se deben instalar los proximos repositorios con su respectiva Terminal ejecutando Python:

   pip install qrcode | pip install pyzbar

- English

In Windows you have the Portable version that only extracts and the Auto-Extractable that does the job in one go. Note: Python must be installed in Windows to not have confilicts in the execution of the code.

On Linux and macOS you have to extract the .zip file in a folder.

- For Windows you must install the following repositories with Windows PowerShell (Administrator):

   pip install qrcode | pip install pyzbar | pip install pillow
  

- For Linux and macOS you must install the following repositories with their respective Terminal running Python:

   pip install qrcode | pip install pyzbar

<!-- Uso -->
## Uso - Usage

- Español

Su uso es intractivo en Windows ya cuenta con una interfaz lo cual lo hace facil. Pero Linux y macOS se debe ejecutar desde el codigo osea desde su respectivo archivo PY. 

aphgenqr.py es un generador de codigos QR el cual solo se ejecuta, se escribe un maximo de 150 letras para que luego se compile en un archivo de imagen con formato PNG.

aphreadqr.py es un lector de codigos QR el cual solo se ejecuta, se visualiza una ventana el cual imprimira el codigo en texto en la terminal al ejecutarse puede ser links o texto natural.

- English

Its use is intractive in Windows already has an interface which makes it easy. But Linux and macOS must be run from the code that is to say from their respective PY file. 

aphgenqr.py is a QR code generator which only runs, you write a maximum of 150 letters and then compiles into an image file in PNG format.

aphreadqr.py is a QR code reader which only runs, it displays a window which will print the code in text on the terminal when executed can be links or natural text.

<!-- Contribución -->
## Contribución

This project is designed for experimental and educational use.

Este proyecto esta diseñado para uso experimental y educativo.

<!-- Licencia -->
## Licencia

This project is licensed under the GNU General Public License v3.0

Este proyecto tiene su licencia GNU General Public License v3.0
