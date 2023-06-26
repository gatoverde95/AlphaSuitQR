Set objShell = CreateObject("WScript.Shell")
MsgBox "Hello, Press ''OK'' to continue, Note: this version is the Legacy version and may give errors. " & strInput & "!", vbInformation, "AlphaSuiteQR 1.2 Legacy (Experimental)"
intOption = MsgBox("Select a tool:" & vbCrLf & _
                   "1. Run AlphaReaderQR (press Yes)" & vbCrLf & _
                   "2. Run AlphaGenQR (press No)", vbQuestion + vbYesNo, "AlphaSuiteQR 1.2 Legacy (Experimental)")
If intOption = vbYes Then
    objShell.Run "pycore\aphreadqr.py"
Else
    objShell.Run "pycore\aphgenqr.py"
End If
