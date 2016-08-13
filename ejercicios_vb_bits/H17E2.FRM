VERSION 4.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   5  'Sizable ToolWindow
   Caption         =   "Datos '98"
   ClientHeight    =   5955
   ClientLeft      =   1275
   ClientTop       =   1785
   ClientWidth     =   7305
   DrawWidth       =   6
   FillColor       =   &H000000FF&
   Height          =   6360
   Icon            =   "h17e2.frx":0000
   Left            =   1215
   LinkTopic       =   "Datos '98"
   ScaleHeight     =   5955
   ScaleWidth      =   7305
   ShowInTaskbar   =   0   'False
   Top             =   1440
   WhatsThisButton =   -1  'True
   WhatsThisHelp   =   -1  'True
   Width           =   7425
   Begin VB.Frame Frame1 
      BackColor       =   &H00000000&
      Caption         =   "Datos"
      ForeColor       =   &H000000FF&
      Height          =   5115
      Left            =   420
      TabIndex        =   0
      Top             =   360
      Width           =   6375
      Begin VB.CommandButton Command1 
         BackColor       =   &H00000000&
         Caption         =   "Nombre Completo:"
         Height          =   315
         Left            =   300
         TabIndex        =   2
         Top             =   600
         Width           =   1815
      End
      Begin VB.TextBox Text1 
         BackColor       =   &H00000000&
         ForeColor       =   &H0000FFFF&
         Height          =   315
         Left            =   2160
         TabIndex        =   1
         Text            =   "Text1"
         Top             =   600
         Width           =   2775
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit
Dim NombArch, Texto As String
Private Sub Form_Click()
Dim lng As Single
On Error GoTo err_abrir
abrir:
NombArch = InputBox("Entra en nombre del archivo.", "ABRIR ARCHIVO", NombArch)
If NombArch = "" Then Exit Sub
lng = FileLen(NombArch)
Open NombArch For Input As #1
Texto = Input(lng, #1)
Close #1
MsgBox Texto, 64, NombArch
Exit Sub
err_abrir:
Select Case Err
Case 53
MsgBox "El archivo no se encuentra", 48, NombArch
Resume abrir
Case Else
MsgBox "Error Nº: " & Err & Chr(10) & Error, 16, "Error Inesperado"
Exit Sub
End Select
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
On Error GoTo err_guardar
NombArch = InputBox("Entra el Nombre del Archivo.", "Guardar Archivo", NombArch)
If NombArch = "" Then Exit Sub
If FileLen(NombArch) >= 0 Then
MsgBox "El fichero ya existe", 48, NombArch
Exit Sub
End If
guardar:
Open NombArch For Output As #1
Print #1, Texto
Close #1
Exit Sub
err_guardar:
Select Case Err
Case 53: Resume guardar
Case Else
MsgBox "Error nº " & Err & Chr(10) & Error, 16, "Error Inesperado"
Exit Sub
End Select
End Sub

