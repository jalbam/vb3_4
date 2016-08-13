VERSION 4.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5940
   ClientLeft      =   2670
   ClientTop       =   2265
   ClientWidth     =   7305
   Height          =   6345
   Left            =   2610
   LinkTopic       =   "Form1"
   ScaleHeight     =   5940
   ScaleWidth      =   7305
   Top             =   1920
   Width           =   7425
End
Attribute VB_Name = "Form1"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub Form_Click()
Dim media As Single, i As Integer
Cls
For i = 1 To indice
Print datos(i).nomb; Tab(15); datos(i).edad
media = media + datos(i).edad / indice
Next
Print "Media Edades:"; Tab(15); media
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
Select Case KeyAscii
Case 9 'Tecla <TAB>
If indice = 15 Then
MsgBox "No se puede añadir mas registros", 48, "Añadir Datos"
Exit Sub
End If
indice = indice + 1
datos(indice).nomb = InputBox("escribe el nombre", "Registro: " & Str(indice), Format(indice) & "º nombre")
datos(indice).edad = Val(InputBox("escribir la edad", "registro" & Str(indice), Format(indice)))
Case 8: 'tecla <Retroceso>
indice = 0
Kill "ficha.dat"
MsgBox "El fichero ha sido eliminado", 64, "Borrar Archivo"
Case 27: 'tecla <ESC>
Unload Me
Case Else
Exit Sub
End Select
End Sub

Private Sub Form_Load()
Dim lonreg As Integer, rg As Integer
On Error GoTo err_abrir
If FileLen("ficha.dat") > 0 Then
MsgBox "El Archivo ya Existe"
Else
MsgBox "El Archivo esta vacio o no existe..."
Exit Sub
End If
lonreg = Len(datos(1))
Open "ficha.dat" For Random As #1 Len = lonreg
indice = LOF(1) / lonreg
Do
rg = rg + 1: Get #1, , datos(rg)
Loop Until rg >= indice
Close
Exit Sub
err_abrir:
Select Case Err
Case 53
MsgBox "el fichero no existe"
Exit Sub
Case Else
MsgBox Error & " Nº" & Err
End Select
Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer)
Dim i As Integer, msg, resp
msg = "Los Datos no se han guardado"
msg = msg & Chr(10) & "¿guardar los datos antes de cerrar?"
resp = MsgBox(msg, 3 + 32, "Guardar archivo")
Select Case resp
Case 2
Cancel = True:
msg = "La orden ha sido cancelada"
Case 6
Open "ficha.dat" For Random As #1 Len = Len(datos(1))
For i = 1 To indice
Put #1, , datos(i)
Next
Close
msg = "Los datos han sido guardados"
Case 7
msg = "Los datos no se han guardado"
End Select
MsgBox msg, 0, "Salir del programa"
End Sub
