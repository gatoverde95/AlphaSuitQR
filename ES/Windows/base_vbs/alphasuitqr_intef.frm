VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "AlphaSuitQR Launcher 1.4a"
   ClientHeight    =   5805
   ClientLeft      =   7380
   ClientTop       =   3375
   ClientWidth     =   7395
   Icon            =   "alphasuitqr_intef.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   MouseIcon       =   "alphasuitqr_intef.frx":1084A
   ScaleHeight     =   5805
   ScaleWidth      =   7395
   Begin VB.PictureBox Picture2 
      Height          =   615
      Left            =   5520
      Picture         =   "alphasuitqr_intef.frx":11914
      ScaleHeight     =   530
      ScaleLeft       =   9
      ScaleMode       =   0  'User
      ScaleWidth      =   1506.921
      TabIndex        =   13
      Top             =   720
      Width           =   1558
   End
   Begin VB.Frame Frame2 
      Caption         =   "Ejecucion por VBScript (Experimental)"
      Height          =   1095
      Left            =   3840
      TabIndex        =   11
      Top             =   3480
      Width           =   3135
      Begin VB.CommandButton Command4 
         Caption         =   "Ejecutar VBScript (Modo Basico)"
         Height          =   495
         Left            =   600
         TabIndex        =   12
         Top             =   360
         Width           =   1815
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Suit"
      Height          =   1335
      Left            =   360
      TabIndex        =   6
      Top             =   3240
      Width           =   3255
      Begin VB.CommandButton Command1 
         Caption         =   "AlphaReaderQR"
         Height          =   735
         Left            =   1680
         TabIndex        =   10
         Top             =   360
         Width           =   1335
      End
      Begin VB.CommandButton Command2 
         Caption         =   "AlphaGenQR"
         Height          =   735
         Left            =   240
         TabIndex        =   9
         Top             =   360
         Width           =   1215
      End
   End
   Begin VB.PictureBox Picture1 
      Height          =   1215
      Left            =   360
      Picture         =   "alphasuitqr_intef.frx":15386
      ScaleHeight     =   1155
      ScaleWidth      =   4755
      TabIndex        =   1
      Top             =   480
      Width           =   4815
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Salir del Launcher"
      Height          =   375
      Left            =   5400
      TabIndex        =   0
      Top             =   5160
      Width           =   1695
   End
   Begin VB.Label Label2 
      Caption         =   "1. AlphaReaderQR - Lector de Codigo QR"
      Height          =   255
      Index           =   0
      Left            =   360
      TabIndex        =   8
      Top             =   2400
      Width           =   3255
   End
   Begin VB.Label Label2 
      Caption         =   "2. AlphaGenQR - Generador de Codigo QR"
      Height          =   255
      Index           =   1
      Left            =   360
      TabIndex        =   7
      Top             =   2760
      Width           =   3255
   End
   Begin VB.Line Line1 
      X1              =   240
      X2              =   7080
      Y1              =   4800
      Y2              =   4800
   End
   Begin VB.Label Label5 
      Caption         =   "by GatoVerde95. Powered AnyaCodec 1.5aB"
      Height          =   375
      Left            =   1080
      TabIndex        =   5
      Top             =   5280
      Width           =   3255
   End
   Begin VB.Image Image2 
      Height          =   720
      Left            =   240
      Picture         =   "alphasuitqr_intef.frx":28EC8
      Top             =   4920
      Width           =   720
   End
   Begin VB.Label Label4 
      Caption         =   "Hola!! : ) Bienvenido, este programa en Desarrollo"
      Height          =   375
      Left            =   1800
      TabIndex        =   4
      Top             =   1800
      Width           =   4455
   End
   Begin VB.Label Label3 
      Caption         =   "3. Ejecutar por VBScript (Algo inestable)"
      Height          =   255
      Left            =   3960
      TabIndex        =   3
      Top             =   2520
      Width           =   3015
   End
   Begin VB.Label Label1 
      Caption         =   "AlphaSuitQR 1.0 Pre-beta. Seleccione que Suit va a usar."
      Height          =   255
      Left            =   1560
      TabIndex        =   2
      Top             =   120
      Width           =   4335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Text1_Change()

End Sub

Private Sub Command1_Click()
    Dim strCmd As String
    Dim strPath As String
    
    strPath = App.Path & "\pycore\aphreadqr.py"
    
    strCmd = "python " & Chr(34) & strPath & Chr(34)
    
    Shell strCmd, vbNormalFocus
End Sub


Private Sub Command2_Click()
    Dim strCmd As String
    Dim strPath As String
    
    strPath = App.Path & "\pycore\aphgenqr.py"

    strCmd = "python " & Chr(34) & strPath & Chr(34)
    
    Shell strCmd, vbNormalFocus
End Sub

Private Sub Command3_Click()
    End
End Sub

Private Sub Command4_Click()
    Dim scriptPath As String
    scriptPath = App.Path & "\cat\cat.vbs"

    Shell "WScript.exe """ & scriptPath & """", vbNormalFocus
End Sub

Private Sub Picture2_Click()
    Dim filePath As String
    filePath = App.Path & "\NOTICE.log"
    
    Shell "notepad.exe " & filePath, vbNormalFocus
End Sub

