VERSION 4.00
Begin VB.Form fuentes 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Fuentes"
   ClientHeight    =   3375
   ClientLeft      =   1395
   ClientTop       =   1575
   ClientWidth     =   7710
   Height          =   3780
   Left            =   1335
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3375
   ScaleWidth      =   7710
   ShowInTaskbar   =   0   'False
   Top             =   1230
   Width           =   7830
   Begin VB.CommandButton btncancelar 
      Cancel          =   -1  'True
      Caption         =   "Cancelar"
      Height          =   375
      Left            =   6480
      TabIndex        =   11
      Top             =   1560
      Width           =   1095
   End
   Begin VB.CommandButton btnAceptar 
      Caption         =   "Aceptar"
      Default         =   -1  'True
      Height          =   375
      Left            =   6480
      TabIndex        =   10
      Top             =   960
      Width           =   1095
   End
   Begin VB.Frame Frame1 
      Caption         =   "Muestra"
      Height          =   1095
      Left            =   2760
      TabIndex        =   7
      Top             =   840
      Width           =   3495
      Begin VB.Label muestra 
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "aAbBcCxXyYzZ123"
         Height          =   735
         Left            =   120
         TabIndex        =   8
         Top             =   240
         Width           =   3255
      End
   End
   Begin VB.ComboBox tamaño 
      Height          =   315
      Left            =   4920
      TabIndex        =   6
      Top             =   360
      Width           =   1215
   End
   Begin VB.ComboBox Estilo 
      Height          =   315
      ItemData        =   "h8e1.frx":0000
      Left            =   2880
      List            =   "h8e1.frx":0010
      Style           =   2  'Dropdown List
      TabIndex        =   4
      Top             =   360
      Width           =   1575
   End
   Begin VB.ComboBox fuente 
      Height          =   1545
      Left            =   120
      Sorted          =   -1  'True
      Style           =   1  'Simple Combo
      TabIndex        =   2
      Top             =   360
      Width           =   2415
   End
   Begin VB.CommandButton btnCrgaFont 
      Caption         =   "Cargar fuentes"
      Height          =   495
      Left            =   600
      TabIndex        =   1
      Top             =   2280
      Width           =   1455
   End
   Begin ComctlLib.ProgressBar BarraProg 
      Align           =   2  'Align Bottom
      Height          =   375
      Left            =   0
      TabIndex        =   9
      Top             =   3000
      Visible         =   0   'False
      Width           =   7710
      _Version        =   65536
      _ExtentX        =   13600
      _ExtentY        =   661
      _StockProps     =   192
      BorderStyle     =   1
   End
   Begin VB.Label Label3 
      Caption         =   "Tamaño"
      Height          =   255
      Left            =   4920
      TabIndex        =   5
      Top             =   120
      Width           =   975
   End
   Begin VB.Label Label2 
      Caption         =   "Estilo"
      Height          =   255
      Left            =   2880
      TabIndex        =   3
      Top             =   120
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "Fuentes"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   615
   End
End
Attribute VB_Name = "fuentes"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit

Private Sub btnAceptar_Click()
MsgBox muestra.Font & Chr(10) & tamaño.Text & Chr(10) & Estilo.Text
End Sub

Private Sub btncancelar_Click()
End
End Sub

Private Sub btnCrgaFont_Click()
Dim fnt As Integer
fuente.Clear:
MousePointer = 13
BarraProg.Max = Printer.FontCount
BarraProg.Visible = True
For fnt = 0 To Printer.FontCount - 1
    fuente.AddItem Printer.Fonts(fnt)
    BarraProg.Value = fnt:
    DoEvents
Next
fuente.ListIndex = 0
MousePointer = 0
BarraProg.Visible = False
End Sub

Private Sub Combo1_Change()

End Sub

Private Sub Estilo_Click()
With muestra
Select Case Estilo.ListIndex
Case 0: .FontBold = False: .FontItalic = False
Case 1: .FontBold = True: .FontItalic = False
Case 2: .FontBold = False: .FontItalic = True
Case 3: .FontBold = True: .FontItalic = True
End Select
End With

End Sub

Private Sub Form_Load()
Dim tam As Integer
Estilo.ListIndex = 0: tamaño.Clear
For tam = 8 To 72 Step 2
tamaño.AddItem Format(tam)
Next
tamaño.ListIndex = 2
'Color.ListIndex = 0

End Sub

Private Sub fuente_Click()
On Error GoTo corregir_error
With muestra
    .FontName = fuente.Text:
    .FontSize = tamaño.Text
    .FontBold = False: .FontItalic = False
    Estilo.ListIndex = 0:
    Exit Sub
corregir_error:
    .FontName = "Courier": .FontSize = 10: Exit Sub
End With
End Sub

Private Sub tamaño_Change()
On Error Resume Next
muestra.FontSize = tamaño.Text
End Sub

Private Sub tamaño_Click()
muestra.FontSize = tamaño.Text
End Sub
