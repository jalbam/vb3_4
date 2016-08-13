VERSION 4.00
Begin VB.Form Form1 
   Caption         =   "Libreria"
   ClientHeight    =   3930
   ClientLeft      =   1140
   ClientTop       =   1515
   ClientWidth     =   8025
   Height          =   4335
   Icon            =   "h13e1.frx":0000
   Left            =   1080
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   3930
   ScaleWidth      =   8025
   Top             =   1170
   Width           =   8145
   Begin VB.TextBox titulo 
      BackColor       =   &H00E0E0E0&
      Height          =   285
      Left            =   1860
      TabIndex        =   26
      Top             =   180
      Width           =   3765
   End
   Begin VB.CommandButton salir 
      Caption         =   "Salir"
      Height          =   525
      Left            =   6840
      TabIndex        =   25
      Top             =   2940
      Width           =   825
   End
   Begin VB.CommandButton listar 
      Caption         =   "&Listar"
      Enabled         =   0   'False
      Height          =   405
      Left            =   6720
      TabIndex        =   24
      Top             =   1350
      Width           =   1125
   End
   Begin VB.CommandButton reemplazar 
      Caption         =   "Ree&mplazar"
      Enabled         =   0   'False
      Height          =   405
      Left            =   6720
      TabIndex        =   23
      Top             =   720
      Width           =   1125
   End
   Begin VB.CommandButton nuevo 
      Caption         =   "&Nuevo"
      Enabled         =   0   'False
      Height          =   345
      Left            =   6720
      TabIndex        =   22
      Top             =   180
      Width           =   1125
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&<"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   225
      Left            =   1860
      TabIndex        =   21
      Top             =   3480
      Width           =   255
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&>"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   225
      Left            =   5370
      TabIndex        =   20
      Top             =   3480
      Width           =   255
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   225
      Left            =   2100
      TabIndex        =   19
      Top             =   3480
      Width           =   3255
   End
   Begin VB.Frame Frame1 
      Caption         =   "Ficha:"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   720
      Left            =   480
      TabIndex        =   17
      Top             =   2460
      Width           =   1230
      Begin VB.Label ficha 
         Caption         =   "? de ?"
         Height          =   210
         Left            =   360
         TabIndex        =   18
         Top             =   330
         Width           =   585
      End
   End
   Begin VB.TextBox ano 
      BackColor       =   &H00E0E0E0&
      Height          =   285
      Left            =   4920
      TabIndex        =   15
      Top             =   1590
      Width           =   540
   End
   Begin VB.ComboBox mes 
      BackColor       =   &H00E0E0E0&
      Height          =   315
      ItemData        =   "h13e1.frx":0442
      Left            =   3090
      List            =   "h13e1.frx":046A
      TabIndex        =   13
      Text            =   "Enero"
      Top             =   1560
      Width           =   1395
   End
   Begin VB.TextBox dia 
      BackColor       =   &H00E0E0E0&
      Height          =   285
      Left            =   1860
      TabIndex        =   11
      Top             =   1575
      Width           =   450
   End
   Begin VB.TextBox resumen 
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00000000&
      Height          =   1335
      Left            =   1860
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   9
      Top             =   2070
      Width           =   3735
   End
   Begin VB.ComboBox genero 
      BackColor       =   &H00E0E0E0&
      Height          =   315
      ItemData        =   "h13e1.frx":04D3
      Left            =   1860
      List            =   "h13e1.frx":04F2
      TabIndex        =   8
      Text            =   "Accion"
      Top             =   840
      Width           =   2085
   End
   Begin VB.TextBox editorial 
      BackColor       =   &H00E0E0E0&
      Height          =   285
      Left            =   1860
      TabIndex        =   7
      Top             =   1230
      Width           =   3765
   End
   Begin VB.TextBox autor 
      BackColor       =   &H00E0E0E0&
      Height          =   285
      Left            =   1860
      TabIndex        =   6
      Top             =   480
      Width           =   3765
   End
   Begin Spin.SpinButton SpinButton2 
      Height          =   300
      Left            =   5460
      TabIndex        =   16
      Top             =   1590
      Width           =   315
      _Version        =   65536
      _ExtentX        =   556
      _ExtentY        =   529
      _StockProps     =   73
   End
   Begin VB.Label Label8 
      Caption         =   "de"
      Height          =   210
      Left            =   4590
      TabIndex        =   14
      Top             =   1620
      Width           =   255
   End
   Begin VB.Label Label7 
      Caption         =   "de"
      Height          =   195
      Left            =   2730
      TabIndex        =   12
      Top             =   1635
      Width           =   285
   End
   Begin Spin.SpinButton SpinButton1 
      Height          =   285
      Left            =   2310
      TabIndex        =   10
      Top             =   1575
      Width           =   330
      _Version        =   65536
      _ExtentX        =   582
      _ExtentY        =   503
      _StockProps     =   73
   End
   Begin VB.Label Label6 
      Caption         =   "&Resumen"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   900
      TabIndex        =   5
      Top             =   2070
      Width           =   795
   End
   Begin VB.Label Label5 
      Caption         =   "&Fecha de Edicion"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   180
      TabIndex        =   4
      Top             =   1590
      Width           =   1515
   End
   Begin VB.Label Label4 
      Caption         =   "&Editorial"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   960
      TabIndex        =   3
      Top             =   1230
      Width           =   735
   End
   Begin VB.Label Label3 
      Caption         =   "&Genero"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   210
      Left            =   1080
      TabIndex        =   2
      Top             =   885
      Width           =   615
   End
   Begin VB.Label Label2 
      Caption         =   "&Autor"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   210
      Left            =   1215
      TabIndex        =   1
      Top             =   525
      Width           =   495
   End
   Begin VB.Label Label1 
      Caption         =   "&Titulo"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   1200
      TabIndex        =   0
      Top             =   195
      Width           =   495
   End
End
Attribute VB_Name = "Form1"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit

Private Sub Text1_Change()

End Sub

Private Sub ano_Change()
If ano.Text = "" Then
Else
If Val(ano.Text) <= 0 Or Val(ano.Text) > Year(Date) Then MsgBox "fecha presuntamente erronea!!!", 32, "Fecha Equivoca"
End If
End Sub

Private Sub dia_Change()
If dia.Text = "" Then
Else
If Val(dia.Text) > 31 Or Val(dia.Text) <= 0 Then MsgBox "Fecha presuntamente erronea!!!", 32, "Fecha Equivoca"
End If
End Sub

Private Sub salir_Click()
End
End Sub

Private Sub Text4_Change()

End Sub

Private Sub SpinButton1_SpinDown()
dia.Text = Val(dia.Text) - 1
If Val(dia.Text) <= 0 Then MsgBox "fecha presuntamente erronea!!!", 32, "Fecha Equivoca"
End Sub

Private Sub SpinButton1_SpinUp()
dia.Text = Val(dia.Text) + 1
If Val(dia.Text) > 31 Then MsgBox "Fecha presuntamente erronea!!!", 32, "Fecha Equivoca"
End Sub

Private Sub SpinButton2_SpinDown()
ano.Text = Val(ano.Text) - 1
If Val(ano.Text) <= 0 Then MsgBox "fecha presuntamente erronea!!!", 32, "Fecha Equivoca"

End Sub

Private Sub SpinButton2_SpinUp()
ano.Text = Val(ano.Text) + 1
If Val(ano.Text) > Year(Date) Then MsgBox "Fecha presuntamente erronea!!!", 32, "Fecha Equivoca"
End Sub

Private Sub titulo_Change()
nuevo.Enabled = True
If titulo.Text = "" Then nuevo.Enabled = False
End Sub
