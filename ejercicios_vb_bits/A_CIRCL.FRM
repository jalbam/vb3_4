VERSION 4.00
Begin VB.Form Circulo 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Longitud y Area de un Circulo"
   ClientHeight    =   2055
   ClientLeft      =   2265
   ClientTop       =   4470
   ClientWidth     =   4005
   Height          =   2460
   Left            =   2205
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   2055
   ScaleWidth      =   4005
   Top             =   4125
   Width           =   4125
   Begin VB.CommandButton btnSalir 
      Caption         =   "&Salir"
      Height          =   375
      Left            =   1320
      TabIndex        =   6
      Top             =   1560
      Width           =   1575
   End
   Begin VB.CommandButton btnLong 
      Caption         =   "Calcular &Longitud"
      Height          =   255
      Left            =   2160
      TabIndex        =   3
      Top             =   600
      Width           =   1695
   End
   Begin VB.CommandButton btnArea 
      Caption         =   "Calcular &Area"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   600
      Width           =   1815
   End
   Begin VB.TextBox Radio 
      Height          =   285
      Left            =   1080
      TabIndex        =   1
      Text            =   "0"
      Top             =   120
      Width           =   2295
   End
   Begin VB.Label Resultado 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "<Vacio>"
      Height          =   255
      Left            =   1080
      TabIndex        =   5
      Top             =   1080
      Width           =   2535
   End
   Begin VB.Label Texto 
      Alignment       =   1  'Right Justify
      Caption         =   "Label2"
      Height          =   255
      Left            =   360
      TabIndex        =   4
      Top             =   1080
      Width           =   615
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      Caption         =   "Radio:"
      Height          =   255
      Left            =   360
      TabIndex        =   0
      Top             =   120
      Width           =   615
   End
End
Attribute VB_Name = "Circulo"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit
Dim r, pi
Private Sub btnArea_Click()
Dim area_result
r = Val(Radio.Text)
area_result = pi * r ^ 2
Texto.Caption = "Area = "
resultado.Caption = Format(area_result, "#,##0.0;-#,##0.0")
End Sub

Private Sub btnLong_Click()
Dim long_result
r = Val(Radio.Text)
long_result = 2 * pi * r
Texto.Caption = "Longitud = "
resultado.Caption = Format(long_result, "#,##0.0;-#,##0.0")
End Sub
Private Sub btnSalir_Click()
End
End Sub

Private Sub Form_Load()
pi = 3.1416
End Sub

