VERSION 4.00
Begin VB.Form ASCII 
   AutoRedraw      =   -1  'True
   BackColor       =   &H000000C0&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "ASCII"
   ClientHeight    =   1200
   ClientLeft      =   1845
   ClientTop       =   1860
   ClientWidth     =   1605
   Height          =   1605
   Icon            =   "h5e2.frx":0000
   Left            =   1785
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   1200
   ScaleWidth      =   1605
   Top             =   1515
   Width           =   1725
   Begin VB.CommandButton Command2 
      Caption         =   "..."
      Height          =   225
      Left            =   1155
      TabIndex        =   4
      Top             =   945
      Width           =   330
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00FFFFFF&
      Caption         =   "&Cerrar"
      Height          =   225
      Left            =   105
      TabIndex        =   3
      Top             =   945
      Width           =   960
   End
   Begin VB.TextBox caracter 
      BackColor       =   &H00C0FFC0&
      ForeColor       =   &H000080FF&
      Height          =   285
      Left            =   945
      MaxLength       =   1
      TabIndex        =   2
      Top             =   90
      Width           =   250
   End
   Begin VB.TextBox ascii 
      BackColor       =   &H00C0FFC0&
      BeginProperty Font 
         name            =   "Small Fonts"
         charset         =   0
         weight          =   400
         size            =   6.75
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   240
      Left            =   420
      MaxLength       =   3
      TabIndex        =   1
      Text            =   "0"
      Top             =   105
      Width           =   330
   End
   Begin ComctlLib.Slider Deslizador 
      Height          =   540
      Left            =   0
      TabIndex        =   0
      Top             =   420
      Width           =   1620
      _Version        =   65536
      _ExtentX        =   2858
      _ExtentY        =   953
      _StockProps     =   64
      LargeChange     =   16
      Max             =   255
      TickStyle       =   1
      TickFrequency   =   5
   End
End
Attribute VB_Name = "ASCII"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit

Private Sub ascii_Change()
'If ASCII.Text = "" Then ASCII.Text = 0
If Val(ASCII.Text) < 0 Then ASCII.Text = 0
If Val(ASCII.Text) > 255 Then ASCII.Text = 255
caracter.Text = Chr(Val(ASCII.Text))
Deslizador.Value = Val(ASCII.Text)
End Sub

Private Sub caracter_Change()
If caracter.Text <> "" Then
ASCII.Text = Asc(caracter.Text):
Deslizador.Value = Val(ASCII.Text)
End If
End Sub

Private Sub Command1_Click()
End
End Sub

Private Sub Command2_Click()
MsgBox "Por DreamLord(Anti o A-Kristo) Dedicado a GüebZine y a Toda Su Gente", 64, "  @ Saludos y Gracias (:            [http://www.emumania.com/guebzine/]"
End Sub

Private Sub Deslizador_Change()
ASCII.Text = Deslizador.Value
caracter.Text = Chr(Deslizador.Value)
End Sub

Private Sub Deslizador_Scroll()
Deslizador_Change
End Sub

Private Sub Form_Activate()
caracter.Text = Chr(32)
End Sub

