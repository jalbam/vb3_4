VERSION 4.00
Begin VB.Form Form1 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   Caption         =   "Form1"
   ClientHeight    =   4020
   ClientLeft      =   1530
   ClientTop       =   1620
   ClientWidth     =   7365
   BeginProperty Font 
      name            =   "MS Sans Serif"
      charset         =   0
      weight          =   700
      size            =   8.25
      underline       =   0   'False
      italic          =   0   'False
      strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H80000008&
   Height          =   4425
   Icon            =   "H8E6.frx":0000
   Left            =   1470
   LinkTopic       =   "Form1"
   ScaleHeight     =   4020
   ScaleWidth      =   7365
   Top             =   1275
   Width           =   7485
End
Attribute VB_Name = "Form1"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Activate()
AutoRedraw = True
Dim contraseña, respuesta
contraseña = "Tabla BOOM de JAM"
respuesta = InputBox("Introduce la contraseña: ", "Clave", "?")
If respuesta = contraseña Then MsgBox "Contraseña correcta, puedes entrar" Else MsgBox "Lo siento, me das pena, pero... Adiós", 16: End
FontSize = 150
Font = "Carols"
ScaleMode = 7
ForeColor = &HFF0000
CurrentX = 6: Print "J";:
ForeColor = &HFF&
Print "A";:
ForeColor = &HFFFF&
Print "M";:
ForeColor = &HAACCDA
FontName = "Times new roman"
FontSize = 20
Print "®"
Dim N, x As Single, P As Single, nota As Single
N = InputBox("Pon el numero de tabla a repasar: ", "TABLA", "0")
If N = "" Then End
For x = 0 To 10
P = InputBox(N & "x" & x & "=", N & "x" & x, "?")
If P = N * x Then MsgBox "¡ Muy Bien !", 64 Else MsgBox "¡ Muy mal !, FATAL, la respuesta es: " & N * x, 48: nota = nota + 1
Next
If nota <= 2 Then MsgBox "Muy bien, has aprobado, Nº de errores: " & nota Else MsgBox "Muy mal, suspendido, nº de errores: " & nota
End
End Sub

