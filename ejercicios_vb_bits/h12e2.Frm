VERSION 4.00
Begin VB.Form Form1 
   Caption         =   "Seleccion de archivos"
   ClientHeight    =   3330
   ClientLeft      =   1380
   ClientTop       =   1410
   ClientWidth     =   6735
   Height          =   3735
   Icon            =   "h12e2.frx":0000
   Left            =   1320
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   MouseIcon       =   "h12e2.frx":0442
   MousePointer    =   99  'Custom
   ScaleHeight     =   3330
   ScaleWidth      =   6735
   Top             =   1065
   Width           =   6855
   Begin VB.CommandButton Command2 
      Caption         =   "Cancelar"
      Height          =   495
      Left            =   5520
      TabIndex        =   8
      Top             =   1680
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Aceptar"
      Height          =   495
      Left            =   5520
      TabIndex        =   7
      Top             =   840
      Width           =   1095
   End
   Begin VB.DriveListBox unidad 
      Height          =   315
      Left            =   2400
      TabIndex        =   6
      Top             =   2880
      Width           =   2895
   End
   Begin VB.DirListBox directorio 
      Height          =   1830
      Left            =   2400
      TabIndex        =   4
      Top             =   600
      Width           =   2895
   End
   Begin VB.FileListBox archivos 
      Height          =   2790
      Left            =   120
      MultiSelect     =   1  'Simple
      System          =   -1  'True
      TabIndex        =   0
      Top             =   360
      Width           =   2055
   End
   Begin VB.Label U 
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
      Height          =   255
      Left            =   3360
      TabIndex        =   5
      Top             =   2640
      Width           =   855
   End
   Begin VB.Label ruta 
      Caption         =   "ruta"
      Height          =   255
      Left            =   2400
      TabIndex        =   3
      Top             =   360
      Width           =   4215
   End
   Begin VB.Label Label2 
      Caption         =   "Buscar en:"
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
      Left            =   3360
      TabIndex        =   2
      Top             =   120
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "Lista de archivos"
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
      TabIndex        =   1
      Top             =   120
      Width           =   1575
   End
End
Attribute VB_Name = "Form1"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit

Private Sub Drive1_Change()

End Sub
Private Sub Command1_Click()

Dim x, seleccionaos, seleccion As Boolean, lala As Integer
seleccion = False
For x = archivos.ListCount - 1 To 0 Step -1
If archivos.Selected(x) = True Then
'seleccionaos = seleccionaos & archivos.filename & "; "
'seleccionaos = seleccionaos & archivos.ListIndex & "; "
seleccionaos = seleccionaos & archivos.List(x) & "; "
seleccion = True
'seleccionados!listaseleccionados.List(lala) = archivos.filename
'seleccionados!listaseleccionados.List(lala) = archivos.ListIndex
If Right(archivos.Path, 1) = "\" Then
seleccionados!listaseleccionados.List(lala) = archivos.Path & archivos.List(x)
Else
seleccionados!listaseleccionados.List(lala) = archivos.Path & "\" & archivos.List(x)
End If
lala = lala + 1
End If
Next

If seleccion = True Then
'MsgBox "Archivos seleccionaos: " & seleccionaos, 64, archivos.Path
Me.Hide
seleccionados.Show
Else
beep: beep: beep
MsgBox "Selecciona primero uno o mas archivos!", 64, "No se encuentra seleccion!"
End If
End Sub

Private Sub Command2_Click()
Me.Hide
End Sub

Private Sub directorio_Change()
archivos.Path = directorio.Path

ruta.Caption = directorio.Path
End Sub

Private Sub Form_Load()

directorio.Path = "\"
ruta.Caption = directorio.Path
End Sub

Private Sub unidad_Change()
directorio.Path = unidad.Drive
archivos.Path = directorio.Path

ruta.Caption = directorio.Path
End Sub
