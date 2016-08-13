VERSION 2.00
Begin Form Form1 
   AutoRedraw      =   -1  'True
   BackColor       =   &H0080FFFF&
   Caption         =   "Form1"
   ClientHeight    =   4020
   ClientLeft      =   1095
   ClientTop       =   1485
   ClientWidth     =   7365
   FillStyle       =   4  'Upward Diagonal
   FontBold        =   -1  'True
   FontItalic      =   0   'False
   FontName        =   "GeoSlab703 Lt BT"
   FontSize        =   18
   FontStrikethru  =   0   'False
   FontTransparent =   0   'False
   FontUnderline   =   0   'False
   Height          =   4425
   Left            =   1035
   LinkTopic       =   "Form1"
   ScaleHeight     =   4020
   ScaleWidth      =   7365
   Top             =   1140
   Width           =   7485
End
Option Explicit
Dim txt, letra As String
Dim numcar As Integer, pos As Integer, lng As Integer
Dim msg As String, spc1 As Integer, spc2 As Integer
Dim pizda As String, pdcha As String, pmedio As String

Sub Form_KeyPress (KeyAscii As Integer)
For numcar = 1 To lng
Refresh
letra = Left(txt, numcar)
currenty = (form1.ScaleHeight - TextHeight(txt)) / 2
currentx = (form1.ScaleWidth - TextWidth(letra)) / 2
Print letra
Next
spc1 = InStr(1, txt, Chr(32))
If spc1 = 0 Then
msg = "solo has escrito una palabra de: "
MsgBox msg & Str(lng) & " caracteres", , txt
End
End If
pizda = Left(txt, spc1 - 1)
For pos = lng To 1 Step -1
letra = Mid(txt, pos, 1)
If letra = Chr(32) Then spc2 = lng - pos: Exit For
Next
pdcha = Right(txt, spc2)
pmedio = Mid(txt, spc1 + 1, pos - spc1)
If pmedio = "" Then pmedio = "ninguno"
msg = "palabra izquierda: " & LCase(pizda)
msg = msg & Chr(10) & "palabra derecha: " & pdcha
msg = msg & Chr(10) & "Texto entre palabras: " & UCase(pmedio)
msg = msg & Chr(10) & "Numero de caracteres: " & Str(lng)
MsgBox msg, , "frase: " & txt
'End
End Sub

Sub Form_Load ()
Do While lng < 2
txt = Trim(InputBox("Escribe una frase:", , "Hola como estas"))
If txt = "" Then
MsgBox "Has cancelado la operacion", 48, "CANCELAR": End
End If
lng = Len(txt)
Loop
End Sub

