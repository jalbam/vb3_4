VERSION 4.00
Begin VB.Form Form1 
   Caption         =   "Longitud y Area de un Circulo"
   ClientHeight    =   2085
   ClientLeft      =   1470
   ClientTop       =   1935
   ClientWidth     =   4740
   Height          =   2490
   Icon            =   "h4e3-c2.frx":0000
   Left            =   1410
   LinkTopic       =   "Form1"
   ScaleHeight     =   2085
   ScaleWidth      =   4740
   Top             =   1590
   Width           =   4860
   Begin VB.CommandButton btnSalir 
      Caption         =   "&Salir"
      Height          =   330
      Left            =   2730
      TabIndex        =   11
      Top             =   1680
      Width           =   1590
   End
   Begin VB.CheckBox activar 
      Caption         =   "&Activar unidades de medida"
      Height          =   225
      Left            =   2415
      TabIndex        =   10
      Top             =   1365
      Width           =   2325
   End
   Begin VB.Frame Frame1 
      Caption         =   "Unidad de medida"
      Height          =   1275
      Left            =   2730
      TabIndex        =   6
      Top             =   0
      Width           =   1590
      Begin VB.OptionButton mm 
         Caption         =   "&Milimetros"
         Height          =   225
         Left            =   105
         TabIndex        =   9
         Top             =   945
         Width           =   1275
      End
      Begin VB.OptionButton cm 
         Caption         =   "&Centimetros"
         Height          =   225
         Left            =   105
         TabIndex        =   8
         Top             =   630
         Width           =   1170
      End
      Begin VB.OptionButton pulgadas 
         Caption         =   "&Pulgadas"
         Height          =   225
         Left            =   105
         TabIndex        =   7
         Top             =   315
         Width           =   960
      End
   End
   Begin VB.CommandButton btnCalc_Long 
      Caption         =   "Calcular &Longitud"
      Height          =   225
      Left            =   735
      TabIndex        =   3
      Top             =   840
      Width           =   1485
   End
   Begin VB.CommandButton btnCalc_Area 
      Caption         =   "Calcular &Area"
      Height          =   225
      Left            =   735
      TabIndex        =   2
      Top             =   525
      Width           =   1485
   End
   Begin VB.TextBox radio 
      Height          =   285
      Left            =   630
      TabIndex        =   1
      Text            =   "0"
      Top             =   105
      Width           =   1695
   End
   Begin VB.Label Label3 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Label3"
      Height          =   330
      Left            =   840
      TabIndex        =   5
      Top             =   1365
      Width           =   1380
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      Height          =   225
      Left            =   105
      TabIndex        =   4
      Top             =   1365
      Width           =   1065
   End
   Begin VB.Label Label1 
      Caption         =   "Radio:"
      Height          =   225
      Left            =   105
      TabIndex        =   0
      Top             =   105
      Width           =   540
   End
End
Attribute VB_Name = "Form1"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit
Public contador As Byte, r As Double

Private Sub activar_Click()
If activar.Value = 1 Then
pulgadas.Enabled = True
cm.Enabled = True
mm.Enabled = True
Else
pulgadas.Enabled = False
cm.Enabled = False
mm.Enabled = False
End If
End Sub

Private Sub btnCalc_Area_Click()
'PI*R^2
Label3.Caption = Format(3.1416 * Radio ^ 2, "#,##0.0;-#,##0.0")
Label2.Caption = "Area "
End Sub

Private Sub btnCalc_Long_Click()
'2*PI*R
Label3.Caption = Format(2 * 3.1416 * Radio, "#,##0.0;-#,##0.0")
Label2.Caption = "Longitud "
End Sub

Private Sub btnSalir_Click()
End
End Sub

Private Sub cm_Click()
r = Radio
'Calculando con anterioridad
If contador = 1 Then
Radio.Text = Format(r * 2.54, "#,##0.0;-#,##0.0")
End If
If contador = 3 Then
Radio.Text = Format(r / 10, "#,##0.0;-#,##0.0")
End If
contador = 2
End Sub

Private Sub Form_Activate()
pulgadas.Value = 1
Label2.Caption = "Valor "
End Sub

Private Sub Form_Load()
r = Radio
activar.Value = 1
End Sub

Private Sub Option1_Click()
End Sub

Private Sub mm_Click()
r = Radio
'Calculando con anterioridad
If contador = 1 Then
Radio.Text = Format(r * 25.4, "#,##0.0;-#,##0.0")
End If
If contador = 2 Then
Radio.Text = Format(r * 10, "#,##0.0;-#,##0.0")
End If
contador = 3
End Sub

Private Sub pulgadas_Click()
'Calculando con anterioridad
r = Radio
If contador = 2 Then
Radio.Text = Format(r / 2.54, "#,##0.0;-#,##0.0")
End If
If contador = 3 Then
Radio.Text = Format(r / 25.4, "#,##0.0;-#,##0.0")
End If
contador = 1
End Sub

Private Sub Radio_Change()
If Valor(Radio.Text) = 0 Then
btnCalc_Area.Enabled = False
btnCalc_Long.Enabled = False
Else
btnCalc_Area.Enabled = True
btnCalc_Long.Enabled = True
End If
End Sub
