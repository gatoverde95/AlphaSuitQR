Set objShell = CreateObject("WScript.Shell")
MsgBox "Hola, Presione ''Aceptar'' para seguir, Nota: esta version es la Legacy puede dar errores. " & strInput & "!", vbInformation, "AlphaSuiteQR 1.2 Legacy (Experimental)"
intOption = MsgBox("Seleccione una herramienta:" & vbCrLf & _
                   "1. Ejecutar AlphaReaderQR (presione Si)" & vbCrLf & _
                   "2. Ejecutar AlphaGenQR (presione No)", vbQuestion + vbYesNo, "AlphaSuiteQR 1.2 Legacy (Experimental)")
If intOption = vbYes Then
    objShell.Run "pycore\aphreadqr.py"
Else
    objShell.Run "pycore\aphgenqr.py"
End If
