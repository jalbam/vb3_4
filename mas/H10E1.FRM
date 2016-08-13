VERSION 2.00
Begin Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4020
   ClientLeft      =   1395
   ClientTop       =   1380
   ClientWidth     =   7365
   Height          =   4425
   Left            =   1335
   LinkTopic       =   "Form1"
   ScaleHeight     =   540
   ScaleWidth      =   540
   Top             =   1035
   Width           =   7485
End
Option Explicit

Sub Form_Load ()
Dim abcd As String, numletra As Integer, letra As String
Dim nl As String, msg As String
nl = Chr(10)
abcd = "ABCDEFGHIJKLMNÑOPQRSTUVWXYZ"
Do
letra = UCase(InputBox("Escribe una letra del abecedario."))
If letra = "" Then MsgBox "no has escrito nada", 48: End
Loop Until Len(letra) = 1
numletra = InStr(1, abcd, letra)
If numletra = 0 Then
MsgBox "no has escrito ninguna letra del abecedario.", 48
End
End If
msg = "La letra '" & letra & "' es el numero: " & numletra
msg = msg & " de " & Len(abcd) & "." & nl
msg = msg & nl & "Las 6 primeras letras del abecedario son: '"
msg = msg & Left(abcd, 6) & "'"
msg = msg & nl & "Las 6 ultimas letras del alfabeto son: '"
msg = msg & Right(abcd, 6) & "'"
msg = msg & nl & "Las cinco letras dem medio son: '"
msg = msg & Mid(abcd, 12, 5) & "'"
MsgBox msg, 64, abcd
End
End Sub

