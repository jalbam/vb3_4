VERSION 4.00
Begin VB.Form Form1 
   Caption         =   "Operacions de Calculo"
   ClientHeight    =   3390
   ClientLeft      =   2730
   ClientTop       =   2430
   ClientWidth     =   4845
   Height          =   3795
   Left            =   2670
   LinkTopic       =   "Form1"
   ScaleHeight     =   3390
   ScaleWidth      =   4845
   Top             =   2085
   Width           =   4965
   Begin VB.CommandButton Command6 
      Caption         =   "&Salir"
      Height          =   495
      Left            =   1560
      TabIndex        =   11
      Top             =   2760
      Width           =   1935
   End
   Begin VB.CommandButton Command5 
      Caption         =   "&^"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3840
      TabIndex        =   8
      Top             =   1200
      Width           =   735
   End
   Begin VB.CommandButton Command4 
      Caption         =   "&/"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3000
      TabIndex        =   7
      Top             =   1200
      Width           =   615
   End
   Begin VB.CommandButton Command3 
      Caption         =   "&×"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2160
      TabIndex        =   6
      Top             =   1200
      Width           =   615
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&-"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "OCR A Extended"
         Size            =   27.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1200
      TabIndex        =   5
      Top             =   1200
      Width           =   615
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&+"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   240
      TabIndex        =   4
      Top             =   1200
      Width           =   615
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   2040
      TabIndex        =   3
      Top             =   600
      Width           =   1575
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   2040
      TabIndex        =   2
      Top             =   120
      Width           =   1575
   End
   Begin VB.Label resultado 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Height          =   255
      Left            =   1680
      TabIndex        =   10
      Top             =   2160
      Width           =   2655
   End
   Begin VB.Label Label3 
      Caption         =   "Resultado: "
      Height          =   255
      Left            =   720
      TabIndex        =   9
      Top             =   2160
      Width           =   855
   End
   Begin VB.Label Label2 
      Caption         =   "Segundo Numero:"
      Height          =   255
      Left            =   480
      TabIndex        =   1
      Top             =   600
      Width           =   1335
   End
   Begin VB.Label Label1 
      Caption         =   "Primer Numero:"
      Height          =   255
      Left            =   720
      TabIndex        =   0
      Top             =   120
      Width           =   1095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit
Private result As Single

Private Sub Command1_Click()
result = 0
result = Valor(Text1) + Valor(Text2): resultado = result
End Sub

Private Sub Command2_Click()
result = 0
result = Valor(Text1) - Valor(Text2): resultado = result
End Sub

Private Sub Command3_Click()
result = 0
result = Valor(Text1) * Valor(Text2): resultado = result
End Sub

Private Sub Command4_Click()
result = 0
If Valor(Text2) = 0 Then
MsgBox "Error Segundo Numero es 0 o esta Vacio..."
Else: result = Valor(Text1) / Valor(Text2): resultado = result
End If
End Sub

Private Sub Command5_Click()
result = 0
result = Valor(Text1) ^ Valor(Text2): resultado = result
End Sub

Private Sub Command6_Click()
MsgBox "Adios!!!"
End
End Sub

Private Sub SoundRec1_GotFocus()

End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
Select Case KeyAscii
    Case Asc("0") To Asc("9"), 8, Asc(","), Asc("-")
    Case Asc("."): KeyAscii = Asc(",")
    Case Else: KeyAscii = 0
End Select
End Sub

Private Sub Text2_KeyPress(KeyAscii As Integer)
Select Case KeyAscii
    Case Asc("0") To Asc("9"), 8, Asc(","), Asc("-")
    Case Asc("."): KeyAscii = Asc(",")
    Case Else: KeyAscii = 0
End Select
End Sub
