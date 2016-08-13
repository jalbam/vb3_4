VERSION 4.00
Begin VB.Form seleccionados 
   Caption         =   "-- Archivos seleccionados --"
   ClientHeight    =   3255
   ClientLeft      =   1140
   ClientTop       =   1515
   ClientWidth     =   6090
   Height          =   3660
   Icon            =   "seleccionados.frx":0000
   Left            =   1080
   LinkTopic       =   "Form2"
   ScaleHeight     =   3255
   ScaleWidth      =   6090
   Top             =   1170
   Width           =   6210
   Begin VB.CommandButton Command2 
      Caption         =   "&Cerrar"
      Height          =   375
      Left            =   4440
      TabIndex        =   3
      Top             =   2640
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Seleccionar"
      Height          =   375
      Left            =   2640
      TabIndex        =   2
      Top             =   2640
      Width           =   1575
   End
   Begin VB.ListBox listaseleccionados 
      Height          =   2010
      ItemData        =   "seleccionados.frx":0442
      Left            =   240
      List            =   "seleccionados.frx":0444
      TabIndex        =   1
      Top             =   480
      Width           =   5535
   End
   Begin VB.Label Label1 
      Caption         =   "Lista de archivos seleccionados"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   2775
   End
End
Attribute VB_Name = "seleccionados"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
Form1.Show 1
End Sub

Private Sub Command2_Click()
End
End Sub

Private Sub Form_Load()
'Dim pass, passwd
'passwd = "PW"
'pass = InputBox("Introduce la Contraseña: ", "Comprobacion de Contraseña", "Password")
'pass = UCase(pass)
'If pass = passwd Then
'MsgBox "Contraseña aceptada. Bienvenido a casa.", 64, "Contraseña Correcta"
'Else: MsgBox "Contraseña erronea", 64, "Despedida": End
'End If
End Sub
