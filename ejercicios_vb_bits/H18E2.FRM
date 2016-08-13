VERSION 4.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5925
   ClientLeft      =   2445
   ClientTop       =   2220
   ClientWidth     =   7305
   Height          =   6330
   Left            =   2385
   LinkTopic       =   "Form1"
   ScaleHeight     =   5925
   ScaleWidth      =   7305
   Top             =   1875
   Width           =   7425
End
Attribute VB_Name = "Form1"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Click()
Dim i As Integer
Cls
For i = 1 To indice
Print datos(i).nombre; Tab(5); datos(i).apellidos; Tab(10); datos(i).localidad; Tab(5); datos(i).provincia; Tab(6); datos(i).pais; Tab(10); datos(i).est_prof; Tab(5); Tab(10); datos(i).edad
Next
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
Select Case KeyAscii
Case 9  '<TAB>
If indice = 15 Then
MsgBox "Se ha intentado sobrepasar el numero de registros posibles.", 48, "Nº Registros Max. 15"
Exit Sub
End If
indice = indice + 1
datos(indice).nombre = InputBox("Escribe el Nombre: ", "Registro: " & Str(indice), Format(indice) & "º")
datos(indice).apellidos = InputBox("Escribe los Apellidos: ", "Registro: " & Str(indice), Format(indice) & "º")
datos(indice).localidad = InputBox("Escribe la Localidad: ", "Registro: " & Str(indice), Format(indice) & "º")
datos(indice).provincia = InputBox("Escribe la Provincia: ", "Registro: " & Str(indice), Format(indice) & "º")
datos(indice).pais = InputBox("Escribe el País: ", "Registro: " & Str(indice), Format(indice) & "º")
datos(indice).est_prof = InputBox("Escribe los Estudios y/o Prefesion: ", "Registro: " & Str(indice), Format(indice) & "º")
datos(indice).nombre = Val(InputBox("Escribe el Nombre: ", "Registro: " & Str(indice), Format(indice) & "º"))
Case 8:  '<Retroceso>
indice = 0
Kill fichero
MsgBox "El fichero ha sido Eliminado", 64, "Borrar Archivo"
Case 27:    '<ESC>
Unload Me
Case Else
Exit Sub
End Select
End Sub

Private Sub Form_Load()
Dim lonreg As Integer, rg As Integer, fichero As String
fichero = "datos.dat"
On Error GoTo err_abrir
If FileLen(fichero) > 0 Then
MsgBox "El Archivo ya Existe."
Else
MsgBox "El Archivo esta Vacío."
Exit Sub
End If
lonreg = Len(datos(1))
Open fichero For Random As #1 Len = lonreg
indice = LOF(1) / lonreg
Do Until rg >= indice
rg = rg + 1: Get #1, , datos(rg)
Loop
Close
Exit Sub
err_abrir:
Select Case Err
Case 53
MsgBox "El fichero NO Existe.", 64, "Fichero inexistente."
Exit Sub
Case Else
MsgBox Error, 64, "Error Nº " & Err
End Select
Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer)
Dim i As Integer, msg, resp
msg = "Los Datos no se han Guardado."
msg = msg & Chr(10) & "Guardar los Datos antes de Cerrar?"
resp = MsgBox(msg, 3 + 32, "Guardar Archivo")
Select Case resp
Case 2
Cancel = True
MsgBox "La Orden ha sido Cancelada"
Case 6
Open fichero For Random As #1 Len = Len(datos(1))
For i = 1 To indice
Put #1, , datos(i)
Next
Close
msg = "Los Datos han sido Guardados"
Case 7
msg = "Los Datos NO se han Guardado"
End Select
MsgBox msg, 0, "Salir del Programa"
End Sub
