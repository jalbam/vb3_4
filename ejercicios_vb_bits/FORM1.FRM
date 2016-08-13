VERSION 4.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5940
   ClientLeft      =   1140
   ClientTop       =   1515
   ClientWidth     =   7305
   Height          =   6345
   Left            =   1080
   LinkTopic       =   "Form1"
   ScaleHeight     =   5940
   ScaleWidth      =   7305
   Top             =   1170
   Width           =   7425
End
Attribute VB_Name = "Form1"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit
Dim nom(15) As String * 32
Dim edad(15) As Single
Dim indice As Integer

Private Sub Form_Click()
Dim media As Single
Cls
For indice = 1 To 15
Print nom(indice); Tab(35); edad(indice)
Next
End Sub
Private Sub Form_KeyPress(KeyAscii As Integer)
Select Case KeyAscii
Case 32 'Tecla <Barra Espaciadora>
For indice = 1 To 15
nom(indice) = InputBox("Escribir el Nombre", "Registro: " & Str(indice), Format(indice) & "º Nombre")
edad(indice) = Val(InputBox("Escribir la Edad", "Registro: " & Str(indice), Format(indice)))
Next
Case 9 'Tecla <TAB>
Open "datos.dat" For Output As #1
For indice = 1 To 15
Print #1, nom(indice)
Print #1, edad(indice)
Next
Close
MsgBox "Los Datos han sido Guardados"
End Select
End Sub


Private Sub Form_Load()
Open "datos.dat" For Input As #1
For indice = 1 To 15
Input #1, nom(indice)
Input #1, edad(indice)
Next
Close
MsgBox "Los Datos han sido Cargados"
End Sub


