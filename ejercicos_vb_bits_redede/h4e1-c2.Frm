VERSION 4.00
Begin VB.Form acceso 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Clave de Acceso"
   ClientHeight    =   630
   ClientLeft      =   1740
   ClientTop       =   2745
   ClientWidth     =   4350
   ControlBox      =   0   'False
   Height          =   1035
   Left            =   1680
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   630
   ScaleWidth      =   4350
   ShowInTaskbar   =   0   'False
   Top             =   2400
   Width           =   4470
   Begin VB.CommandButton btncancelar 
      Cancel          =   -1  'True
      Caption         =   "&Cancelar"
      Height          =   255
      Index           =   1
      Left            =   3360
      TabIndex        =   4
      Top             =   360
      Width           =   975
   End
   Begin VB.CommandButton btnaceptar 
      Caption         =   "&Aceptar"
      Default         =   -1  'True
      Height          =   255
      Index           =   0
      Left            =   3360
      TabIndex        =   3
      Top             =   0
      Width           =   975
   End
   Begin VB.CheckBox May_Min 
      Caption         =   "Ignorar &Mayusculas/Minusculas"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   360
      Width           =   2655
   End
   Begin VB.TextBox clave 
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   960
      MaxLength       =   20
      PasswordChar    =   "*"
      TabIndex        =   1
      Top             =   0
      Width           =   2295
   End
   Begin VB.Label Label1 
      Caption         =   "Contraseña"
      Height          =   255
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   855
   End
End
Attribute VB_Name = "acceso"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit
Dim passw As String, fallos

Private Sub btnaceptar_Click(Index As Integer)
If May_Min = 0 Then
If clave = passw Then
MsgBox "Acceso Concedido", , "Clave Correcta": End
Else: MsgBox "Acceso denegado", , "Contraseña Incorrecta": fallos = fallos + 1
End If
End If
If May_Min = 1 Then
If UCase(clave) = UCase(passw) Then
MsgBox "Acceso Concedido", , "Clave Correcta": End
Else: MsgBox "Acceso denegado", , "Contraseña Incorrecta": fallos = fallos + 1
End If
End If
If fallos = 5 Then MsgBox "5 Intentos Fallidos, el programa procede a finalizar...", , "5 Intentos Fallidos": End
End Sub

Private Sub btncancelar_Click(Index As Integer)
End
End Sub

Private Sub Form_Load()
passw = "Huevos Con Chorizo"
End Sub
