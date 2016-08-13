VERSION 4.00
Begin VB.Form FrmDirArchiv 
   BackColor       =   &H00E0E0E0&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Lista de Archivos"
   ClientHeight    =   3300
   ClientLeft      =   1725
   ClientTop       =   3255
   ClientWidth     =   6465
   Height          =   3705
   Icon            =   "lst_arch.frx":0000
   Left            =   1665
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3300
   ScaleWidth      =   6465
   ShowInTaskbar   =   0   'False
   Top             =   2910
   Width           =   6585
   Begin VB.CommandButton informacion2 
      Caption         =   "&Informacion"
      Height          =   495
      Left            =   5280
      TabIndex        =   13
      Top             =   2640
      Width           =   975
   End
   Begin VB.DriveListBox LstUnid 
      Height          =   315
      Left            =   2640
      TabIndex        =   12
      Top             =   2880
      Width           =   2295
   End
   Begin VB.CommandButton btnAtribut 
      Caption         =   "&Opciones"
      Height          =   375
      Left            =   5160
      TabIndex        =   11
      Top             =   2040
      Width           =   1215
   End
   Begin VB.CommandButton btnCancelar 
      Cancel          =   -1  'True
      Caption         =   "Cancelar"
      Height          =   375
      Left            =   5160
      TabIndex        =   10
      Top             =   1080
      Width           =   1215
   End
   Begin VB.CommandButton btnAceptar 
      Caption         =   "Aceptar"
      Default         =   -1  'True
      Height          =   375
      Left            =   5160
      TabIndex        =   9
      Top             =   600
      Width           =   1215
   End
   Begin VB.DirListBox LstDir 
      Height          =   1830
      Left            =   2640
      TabIndex        =   7
      Top             =   600
      Width           =   2295
   End
   Begin VB.ComboBox Tipo 
      Height          =   315
      ItemData        =   "lst_arch.frx":0442
      Left            =   120
      List            =   "lst_arch.frx":045B
      Style           =   2  'Dropdown List
      TabIndex        =   4
      Top             =   2880
      Width           =   2295
   End
   Begin VB.FileListBox LstArch 
      Height          =   1815
      Left            =   120
      Normal          =   0   'False
      TabIndex        =   2
      Top             =   600
      Width           =   2295
   End
   Begin VB.TextBox NombArch 
      Height          =   285
      Left            =   120
      TabIndex        =   1
      Top             =   240
      Width           =   2295
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Unidades"
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
      Left            =   2640
      TabIndex        =   8
      Top             =   2640
      Width           =   810
   End
   Begin VB.Label ruta 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Label4"
      Height          =   195
      Left            =   2640
      TabIndex        =   6
      Top             =   240
      Width           =   480
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Ubicacion"
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
      Left            =   2640
      TabIndex        =   5
      Top             =   0
      Width           =   870
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Lista por Tipo de archivo"
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
      Left            =   120
      TabIndex        =   3
      Top             =   2640
      Width           =   2145
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Nombre del archivo"
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
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   1665
   End
End
Attribute VB_Name = "FrmDirArchiv"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit

Private Sub btnAceptar_Click()
Dim i As Integer, msg As String
If NombArch.Text = "" Then MsgBox "No se ha seleccionado ningun archivo", 48, "Lista de archivos"
For i = 0 To LstArch.ListCount - 1
If NombArch = LstArch.List(i) Then
LstArch.ListIndex = i

'MsgBox "Se ha seleccionado el archivo: " & LstArch.filename, 64, LstDir.Path
'Lo de arriba se ha substituido por las dos lineas siguientes: -->
If Right(LstArch.Path, 1) = "\" Then
frmArchivo!NombArchivo.Text = UCase(LstArch.Path) & LstArch.filename
Else
frmArchivo!NombArchivo.Text = UCase(LstArch.Path) & "\" & LstArch.filename
End If
Me.Hide

Exit Sub
End If
Next
LstArch.Pattern = NombArch

End Sub

Private Sub btnAtribut_Click()
frmOpciones.Show 1

End Sub

Private Sub btnCancelar_Click()
'End
'Linea substituida: -->
Unload FrmDirArchiv
End Sub

Private Sub Form_Load()
'Propiedad frmdirarchiv.normal=false para poder utilizar todos los atributos en el listado de archivos

ruta.Caption = LstDir.Path

Tipo.ListIndex = 0


End Sub

Private Sub informacion_Click()
informacion.Show 1
End Sub

Private Sub informacion2_Click()
informacion.Show 1
End Sub

Private Sub LstArch_Click()
NombArch.Text = LstArch.filename
End Sub

Private Sub LstArch_DblClick()
MsgBox "Se ha seleccionado el archivo: " & LstArch.filename, 64, LstDir.Path

'NombArch.Text = LstArch.filename
'Lo de arriba se ha substituido por las dos lineas siguientes: -->
If Right(LstArch.Path, 1) = "\" Then
frmArchivo!NombArchivo.Text = UCase(LstArch.Path) & LstArch.filename
Else
frmArchivo!NombArchivo.Text = UCase(LstArch.Path) & "\" & LstArch.filename
End If
Me.Hide

End Sub

Private Sub LstDir_Change()
LstArch.Path = LstDir.Path: ruta.Caption = LstDir.Path
End Sub

Private Sub LstUnid_Change()
Dim boton As Integer
On Error GoTo unidaderror
LstDir.Path = LstUnid.Drive
Exit Sub
unidaderror:
boton = MsgBox("No se puede tener acceso a la unidad: " & LstUnid.Drive, 16 + 5, "ERROR: " & Err)
If boton = 2 Then LstUnid.Drive = LstDir.Path: Exit Sub
Resume
End Sub

Private Sub Tipo_Click()

If Tipo.ListIndex = 0 Then LstArch.Pattern = "*.*"
If Tipo.ListIndex = 1 Then LstArch.Pattern = "*.COM;*.EXE;*.BAT"
If Tipo.ListIndex = 2 Then LstArch.Pattern = "*.VBP;*.FRM;*.BAS"
If Tipo.ListIndex = 3 Then LstArch.Pattern = "*.TXT"
If Tipo.ListIndex = 4 Then LstArch.Pattern = "*.BMP;*.PCX;*.DIB"
If Tipo.ListIndex = 5 Then LstArch.Pattern = "*.WMF"
If Tipo.ListIndex = 6 Then LstArch.Pattern = "*.ICO"

End Sub
