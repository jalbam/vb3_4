VERSION 4.00
Begin VB.Form Form1 
   BackColor       =   &H0000FFFF&
   Caption         =   "Hoja 17; Ejercicio 3..."
   ClientHeight    =   5940
   ClientLeft      =   2220
   ClientTop       =   2400
   ClientWidth     =   7305
   Height          =   6345
   Left            =   2160
   LinkTopic       =   "Form1"
   ScaleHeight     =   5940
   ScaleWidth      =   7305
   Top             =   2055
   Width           =   7425
   Begin RichtextLib.RichTextBox RichTextBox1 
      Height          =   1935
      Left            =   3360
      TabIndex        =   0
      Top             =   3960
      Width           =   3855
      _Version        =   65536
      _ExtentX        =   6800
      _ExtentY        =   3413
      _StockProps     =   69
      BackColor       =   255
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BorderStyle     =   0
      TextRTF         =   $"h17e3.frx":0000
      Filename        =   "A:\opciones.txt"
   End
End
Attribute VB_Name = "Form1"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit
Dim datos(20, 2) As String
Dim ficha As Integer, contable As Integer, file As String
Sub form_click()
Cls
For contable = 1 To 20
datos(contable, 1) = InputBox("Entra Nombre: ", "Entrada Datos; NOMBRE.", "Rita la Cantaora " & contable)
If datos(contable, 1) = "" Then End
datos(contable, 2) = InputBox("Entra Localidad: ", "Entrada Datos; LOCALIDAD.", "Villabecerros City" & contable)
If datos(contable, 2) = "" Then End
Next
End Sub
Private Sub Form_KeyPress(KeyAscii As Integer)
On Error GoTo errorn
file = "datos.dat"
Select Case KeyAscii
Case 48
abrir:
contable = 0
Open file For Input As #1
For contable = 1 To 20
Input #1, datos(contable, 1)
Input #1, datos(contable, 2)
Next
MsgBox "El Archivo ha sido cargado correctamente en Memoria como DATOS.DAT..." & Chr(10) & "Presiona una Tecla para Visualizarlo" & Chr(10) & "Recuerda: No presiones ni Cero(Cargar en Memoria) ni Barra Espaciadora(Guardad)."
Close

Case 32
guardar:
Cls
contable = 0
Open file For Output As #1
For contable = 1 To 20
Print Tab(30):
Print #1, datos(contable, 1): Print Tab(60):
Print #1, datos(contable, 2)
Next
MsgBox "El Archivo ha sido guardado correctamente como DATOS.DAT..."
Close

Case Else
ForeColor = &HFFAADD
contable = 0
Cls
Print
Print
Print
Print
Print
For contable = 1 To 20
Print Tab(20); datos(contable, 1);: Print Tab(60); datos(contable, 2)
Next
End Select
Exit Sub

errorn:
Select Case Err
Case 53: MsgBox "Archivo Inexistente. Imposible su apertura.", 48, _
    "Error! <Archivo Inexistente>"
  If KeyAscii = Chr(32) Then Open file For Output As #1
Case 55: MsgBox "El archivo ya esta Abierto", 48, _
    "Error. <Archivo Abierto Anteriormente>"
Case Else: MsgBox "Error Nº " & Err & Chr(10) & Error, 16, _
    "Error Inesperado!"
End Select

End Sub



