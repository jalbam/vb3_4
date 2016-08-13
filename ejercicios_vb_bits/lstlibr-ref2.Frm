VERSION 4.00
Begin VB.Form libros 
   BackColor       =   &H00C0FFC0&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Biblioteca"
   ClientHeight    =   3180
   ClientLeft      =   555
   ClientTop       =   3285
   ClientWidth     =   7875
   Height          =   3585
   Icon            =   "lstlibr-ref2.frx":0000
   Left            =   495
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3180
   ScaleWidth      =   7875
   Top             =   2940
   Width           =   7995
   Begin VB.CommandButton pal1 
      Caption         =   "<-"
      Height          =   855
      Left            =   3000
      TabIndex        =   12
      Top             =   1080
      Width           =   375
   End
   Begin VB.CommandButton pal2 
      Caption         =   "->"
      Height          =   855
      Left            =   3000
      TabIndex        =   11
      Top             =   2160
      Width           =   375
   End
   Begin VB.ListBox lstLibros2 
      BackColor       =   &H00808000&
      Columns         =   2
      BeginProperty Font 
         name            =   "Arial"
         charset         =   0
         weight          =   400
         size            =   9.75
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      Height          =   1980
      Left            =   3480
      MultiSelect     =   2  'Extended
      Sorted          =   -1  'True
      TabIndex        =   10
      Top             =   1080
      Width           =   2775
   End
   Begin VB.CommandButton btnsalir 
      Caption         =   "&Salir"
      Height          =   375
      Left            =   6480
      TabIndex        =   8
      Top             =   2640
      Width           =   1215
   End
   Begin VB.CommandButton btnreempl 
      BackColor       =   &H00808000&
      Caption         =   "&Reemplazar"
      Height          =   375
      Left            =   6480
      TabIndex        =   7
      Top             =   1920
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.CommandButton btnvaciar 
      Caption         =   "&Vaciar"
      Enabled         =   0   'False
      Height          =   375
      Left            =   6480
      TabIndex        =   6
      Top             =   1320
      Width           =   1215
   End
   Begin VB.CommandButton btnEliminar 
      Caption         =   "&Eliminar"
      Enabled         =   0   'False
      Height          =   375
      Left            =   6480
      TabIndex        =   5
      Top             =   720
      Width           =   1215
   End
   Begin VB.CommandButton btnañadir 
      BackColor       =   &H00C0C0C0&
      Caption         =   "&Añadir"
      Default         =   -1  'True
      Enabled         =   0   'False
      Height          =   375
      Left            =   6480
      TabIndex        =   4
      Top             =   120
      Width           =   1215
   End
   Begin VB.ListBox lstLibros 
      BackColor       =   &H00808000&
      Columns         =   2
      BeginProperty Font 
         name            =   "Arial"
         charset         =   0
         weight          =   400
         size            =   9.75
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      Height          =   1980
      Left            =   120
      MultiSelect     =   2  'Extended
      Sorted          =   -1  'True
      TabIndex        =   2
      Top             =   1080
      Width           =   2775
   End
   Begin VB.TextBox titlibro 
      BackColor       =   &H00808000&
      Height          =   285
      Left            =   1440
      TabIndex        =   1
      Top             =   120
      Width           =   3615
   End
   Begin VB.Label numlibros2 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0"
      Height          =   255
      Left            =   4800
      TabIndex        =   14
      Top             =   720
      Width           =   975
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Total Libros:"
      BeginProperty Font 
         name            =   "MS Sans Serif"
         charset         =   0
         weight          =   700
         size            =   8.25
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   3600
      TabIndex        =   13
      Top             =   720
      Width           =   1080
   End
   Begin VB.Label numlibros 
      Alignment       =   2  'Center
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0"
      Height          =   255
      Left            =   1440
      TabIndex        =   9
      Top             =   720
      Width           =   975
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Total Libros:"
      BeginProperty Font 
         name            =   "MS Sans Serif"
         charset         =   0
         weight          =   700
         size            =   8.25
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   240
      TabIndex        =   3
      Top             =   720
      Width           =   1080
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Titulo del Libro:"
      Height          =   195
      Left            =   240
      TabIndex        =   0
      Top             =   120
      Width           =   1080
   End
End
Attribute VB_Name = "libros"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit
Private ind As Integer
Private ndx As Integer, seleccionado As Boolean

Private Sub btnañadir_Click()
lstLibros.AddItem titlibro.Text
numlibros.Caption = Format(lstLibros.ListCount, "##,##0")
titlibro.Text = ""
titlibro.SetFocus
btnvaciar.Enabled = lstLibros.ListCount > 0
End Sub

Private Sub btnEliminar_Click()

' @ Codigo Anterior ->
'If lstLibros.ListIndex <> -1 Then
'lstLibros.RemoveItem lstLibros.ListIndex
'Else
'MsgBox "No se ha seleccionado ningun libro", 16
'End If
'numlibros.Caption = Format(lstLibros.ListCount, "#,##0")
'btnEliminar.Enabled = lstLibros.ListCount > 0
' <- Fin del codigo anterior @


'Dim i As Integer, seleccionado As Boolean  'La i es el ndx

seleccionado = False
For ndx = lstLibros.ListCount - 1 To 0 Step -1
    If lstLibros.Selected(ndx) = True Then
        lstLibros.RemoveItem ndx
        seleccionado = True
    End If
Next
If Not seleccionado Then MsgBox "No se ha seleccionado ningun libro", 16
numlibros.Caption = Format(lstLibros.ListCount, "#,##0")
btnEliminar.Enabled = lstLibros.ListCount > 0

If lstLibros.ListCount > 0 Then
btnvaciar.Enabled = True
Else: btnvaciar.Enabled = False
End If

End Sub

Private Sub btnreempl_Click()
lstLibros.List(ind) = titlibro
titlibro.Text = ""
btnreempl.Visible = False

End Sub

Private Sub btnsalir_Click()
End
End Sub

Private Sub btnvaciar_Click()
Dim quitar As Integer
quitar = MsgBox("Se eleminaran todos los libros de la lista!!!" & Chr(10) & Chr(10) & _
        "¿Deseas continuar?", 1 + 48 + 256, "Eliminar")
If quitar = 2 Then Exit Sub
lstLibros.Clear
numlibros.Caption = 0 'lstLibros.ListCount
btnEliminar.Enabled = False 'lstLibros.ListCount > 0
btnvaciar.Enabled = False 'lstLibros.ListCount > 0

If lstLibros.ListCount > 0 Then
btnvaciar.Enabled = True
Else: btnvaciar.Enabled = False: btnEliminar.Enabled = False
End If

End Sub

Private Sub lstLibros_Click()
btnEliminar.Enabled = (lstLibros.ListIndex <> -1)
End Sub

Private Sub lstLibros_DblClick()
ind = lstLibros.ListIndex
titlibro = lstLibros.List(ind)
titlibro.SetFocus
btnreempl.Visible = True
End Sub

Private Sub pal1_Click()
seleccionado = False
ndx = 0
For ndx = lstLibros2.ListCount - 1 To 0 Step -1
    If lstLibros2.Selected(ndx) = True Then
        lstLibros.AddItem lstLibros2.List(ndx)
        lstLibros2.RemoveItem ndx
        seleccionado = True
    End If
Next
If Not seleccionado Then MsgBox "No se ha seleccionado ningun libro", 16
numlibros.Caption = Format(lstLibros.ListCount, "#,##0")
btnEliminar.Enabled = lstLibros.ListCount > 0
numlibros2.Caption = Format(lstLibros2.ListCount, "#,##0")
btnEliminar.Enabled = lstLibros2.ListCount > 0

If lstLibros.ListCount > 0 Then
btnvaciar.Enabled = True

Else: btnvaciar.Enabled = False: btnEliminar.Enabled = False
End If
End Sub

Private Sub pal2_Click()

seleccionado = False
ndx = 0
For ndx = lstLibros.ListCount - 1 To 0 Step -1
    If lstLibros.Selected(ndx) = True Then
        lstLibros2.AddItem lstLibros.List(ndx)
        lstLibros.RemoveItem ndx
        seleccionado = True
    End If
Next
If Not seleccionado Then MsgBox "No se ha seleccionado ningun libro", 16
numlibros.Caption = Format(lstLibros.ListCount, "#,##0")
btnEliminar.Enabled = lstLibros.ListCount > 0
numlibros2.Caption = Format(lstLibros2.ListCount, "#,##0")
btnEliminar.Enabled = lstLibros2.ListCount > 0

If lstLibros.ListCount > 0 Then
btnvaciar.Enabled = True
Else: btnvaciar.Enabled = False: btnEliminar.Enabled = False
End If
End Sub

Private Sub titlibro_Change()
btnañadir.Enabled = Len(titlibro.Text) > 0

'@ Esto hace lo mismo que lo anterior, pero en mas lineas ->
'If Len(titlibro.Text) > 0 Then
'    btnañadir.Enabled = True
'Else
'    btnañadir.Enabled = False
'End If
' <- Fin del codigo ejemplo alargado @

End Sub

Private Sub titlibro_GotFocus()
titlibro.SelStart = 0
titlibro.SelLength = Len(titlibro.Text)
End Sub
