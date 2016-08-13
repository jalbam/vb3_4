VERSION 4.00
Begin VB.Form Form1 
   Caption         =   "Operacions de Calculo"
   ClientHeight    =   3390
   ClientLeft      =   2070
   ClientTop       =   2385
   ClientWidth     =   4965
   Height          =   3795
   Left            =   2010
   LinkTopic       =   "Form1"
   ScaleHeight     =   3390
   ScaleWidth      =   4965
   Top             =   2040
   Width           =   5085
   Begin VB.OptionButton Option1 
      Caption         =   "Option1"
      Height          =   255
      Left            =   4200
      TabIndex        =   12
      Top             =   360
      Width           =   255
   End
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
      Text            =   "Text2"
      Top             =   600
      Width           =   1575
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   2040
      TabIndex        =   2
      Text            =   "Text1"
      Top             =   120
      Width           =   1575
   End
   Begin VB.Line Line6 
      X1              =   3960
      X2              =   4680
      Y1              =   120
      Y2              =   120
   End
   Begin VB.Line Line5 
      X1              =   4680
      X2              =   4680
      Y1              =   840
      Y2              =   120
   End
   Begin VB.Line Line4 
      X1              =   3960
      X2              =   4680
      Y1              =   840
      Y2              =   840
   End
   Begin VB.Line Line3 
      X1              =   3960
      X2              =   3960
      Y1              =   120
      Y2              =   840
   End
   Begin VB.Line Line2 
      X1              =   4680
      X2              =   3960
      Y1              =   120
      Y2              =   840
   End
   Begin VB.Line Line1 
      X1              =   3960
      X2              =   4680
      Y1              =   120
      Y2              =   840
   End
   Begin VB.Label resultado 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Label4"
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

Private Sub Label4_Click()

End Sub

Private Sub Text1_Change()
Text1_KeyPress
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
If KeyAscii > 41 And KeyAscii < 58 Or KeyAscii = 8 Or KeyAscii = 32 Then
Val resultado.Caption = Val(resultado.Caption) & KeyAscii
Else: MsgBox "Error esa Tecla No esta Permitida", 64, "ERROR": resultado.Caption = Val(resultado.Caption - KeyAscii)

End If
End Sub
