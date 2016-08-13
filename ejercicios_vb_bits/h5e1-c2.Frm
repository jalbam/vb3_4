VERSION 4.00
Begin VB.Form Form1 
   Caption         =   "Barras de Desplazamiento"
   ClientHeight    =   1575
   ClientLeft      =   1170
   ClientTop       =   1515
   ClientWidth     =   4485
   Height          =   1980
   Left            =   1110
   LinkTopic       =   "Form1"
   ScaleHeight     =   1575
   ScaleWidth      =   4485
   Top             =   1170
   Width           =   4605
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   945
      TabIndex        =   6
      Text            =   "0"
      Top             =   1155
      Width           =   1065
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   3255
      TabIndex        =   5
      Text            =   "0"
      Top             =   630
      Width           =   1065
   End
   Begin VB.TextBox Text1 
      Height          =   330
      Left            =   3255
      TabIndex        =   4
      Text            =   "0"
      Top             =   105
      Width           =   1065
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Cerrar"
      Height          =   330
      Left            =   3255
      TabIndex        =   3
      Top             =   1155
      Width           =   1170
   End
   Begin VB.HScrollBar BarraH 
      Height          =   330
      LargeChange     =   10
      Left            =   105
      Max             =   100
      Min             =   -100
      TabIndex        =   0
      Top             =   105
      Width           =   3060
   End
   Begin Spin.SpinButton btnContar 
      Height          =   330
      Left            =   2100
      TabIndex        =   2
      Top             =   1155
      Width           =   330
      _Version        =   65536
      _ExtentX        =   582
      _ExtentY        =   582
      _StockProps     =   73
      Delay           =   150
      TdThickness     =   1
   End
   Begin ComctlLib.Slider Deslizador 
      Height          =   225
      Left            =   105
      TabIndex        =   1
      Top             =   630
      Width           =   3060
      _Version        =   65536
      _ExtentX        =   5398
      _ExtentY        =   397
      _StockProps     =   64
      LargeChange     =   10
      Max             =   100
      Min             =   -100
      TickFrequency   =   5
   End
End
Attribute VB_Name = "Form1"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit

Private Sub BarraH_Change()
text1.Text = BarraH.Value
End Sub

Private Sub btnContar_SpinDown()
text3.Text = text3.Text - 1
If text3.Text <= -100 Then text3.Text = 0
End Sub

Private Sub btnContar_SpinUp()
text3.Text = text3.Text + 1
If text3.Text >= 100 Then text3.Text = 0
End Sub

Private Sub Command1_Click()
End
End Sub

Private Sub Deslizador_Change()
text2.Text = Deslizador.Value
End Sub

