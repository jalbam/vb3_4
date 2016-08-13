VERSION 4.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Easy Colors"
   ClientHeight    =   1935
   ClientLeft      =   1785
   ClientTop       =   2355
   ClientWidth     =   4950
   Height          =   2340
   Icon            =   "pl_color.frx":0000
   Left            =   1725
   LinkTopic       =   "Paleta de Colores"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1935
   ScaleWidth      =   4950
   Top             =   2010
   Width           =   5070
   Begin VB.CommandButton help 
      Caption         =   "···"
      BeginProperty Font 
         name            =   "Symbol"
         charset         =   2
         weight          =   400
         size            =   8.25
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   4200
      TabIndex        =   15
      Top             =   1260
      Width           =   435
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&Cancelar"
      Height          =   330
      Left            =   3045
      TabIndex        =   14
      Top             =   1470
      Width           =   750
   End
   Begin VB.CommandButton Command1 
      Caption         =   "A&ceptar"
      Height          =   330
      Left            =   840
      TabIndex        =   13
      Top             =   1470
      Width           =   1905
   End
   Begin VB.TextBox mezcla 
      BorderStyle     =   0  'None
      Enabled         =   0   'False
      Height          =   850
      Left            =   3990
      TabIndex        =   12
      Top             =   315
      Width           =   850
   End
   Begin VB.TextBox cazul 
      BorderStyle     =   0  'None
      Enabled         =   0   'False
      Height          =   225
      Left            =   3570
      TabIndex        =   11
      Top             =   1050
      Width           =   225
   End
   Begin VB.TextBox cverde 
      BorderStyle     =   0  'None
      Enabled         =   0   'False
      Height          =   225
      Left            =   3570
      TabIndex        =   10
      Top             =   630
      Width           =   225
   End
   Begin VB.TextBox crojo 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Enabled         =   0   'False
      Height          =   225
      Left            =   3570
      TabIndex        =   9
      Top             =   210
      Width           =   225
   End
   Begin VB.TextBox azul 
      Alignment       =   2  'Center
      BorderStyle     =   0  'None
      Height          =   225
      Left            =   3045
      MaxLength       =   3
      TabIndex        =   8
      Top             =   1050
      Width           =   400
   End
   Begin VB.TextBox verde 
      Alignment       =   2  'Center
      BorderStyle     =   0  'None
      Height          =   225
      Left            =   3045
      MaxLength       =   3
      TabIndex        =   7
      Top             =   630
      Width           =   400
   End
   Begin VB.TextBox rojo 
      Alignment       =   2  'Center
      BorderStyle     =   0  'None
      Height          =   225
      Left            =   3045
      MaxLength       =   3
      TabIndex        =   6
      Top             =   210
      Width           =   400
   End
   Begin VB.HScrollBar azulscr 
      Height          =   225
      Left            =   420
      Max             =   255
      TabIndex        =   5
      Top             =   1050
      Width           =   2535
   End
   Begin VB.HScrollBar verdescr 
      Height          =   225
      Left            =   420
      Max             =   255
      TabIndex        =   3
      Top             =   630
      Width           =   2535
   End
   Begin VB.HScrollBar rojoscr 
      Height          =   225
      Left            =   420
      Max             =   255
      TabIndex        =   1
      Top             =   210
      Width           =   2535
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackColor       =   &H00FF0000&
      Caption         =   "&A"
      ForeColor       =   &H000000FF&
      Height          =   225
      Left            =   105
      TabIndex        =   4
      Top             =   1050
      Width           =   225
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackColor       =   &H0000FF00&
      Caption         =   "&V"
      ForeColor       =   &H00FF0000&
      Height          =   225
      Left            =   105
      TabIndex        =   2
      Top             =   630
      Width           =   225
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H000000FF&
      Caption         =   "&R"
      ForeColor       =   &H0000FF00&
      Height          =   225
      Left            =   105
      TabIndex        =   0
      Top             =   210
      Width           =   225
   End
End
Attribute VB_Name = "Form1"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit
Private Sub azul_Change()
If azul.Text = "" Then
Else
If Val(azul.Text) < 0 Then azul.Text = "0"
If Val(azul.Text) > 255 Then azul.Text = "255"
azulscr.Value = Val(azul.Text)
cazul.BackColor = RGB(0, 0, Val(azul.Text))
mezcla.BackColor = RGB(Val(rojo.Text), Val(verde.Text), Val(azul.Text))
End If
End Sub
Private Sub azulscr_Change()
azul.Text = azulscr.Value
End Sub
Private Sub azulscr_Scroll()
azulscr_Change
End Sub

Private Sub Command2_Click()
End
End Sub

Private Sub Form_Load()
rojoscr.Value = 128
verdescr.Value = 128
azulscr.Value = 128
End Sub
Private Sub help_Click()
Form2.Show
End Sub

Private Sub rojo_Change()
If rojo.Text = "" Then
Else
If Val(rojo.Text) < 0 Then rojo.Text = "0"
If Val(rojo.Text) > 255 Then rojo.Text = "255"
rojoscr.Value = Val(rojo.Text)
crojo.BackColor = RGB(Val(rojo.Text), 0, 0)
mezcla.BackColor = RGB(Val(rojo.Text), Val(verde.Text), Val(azul.Text))
End If
End Sub
Private Sub rojoscr_Change()
rojo.Text = rojoscr.Value
End Sub
Private Sub rojoscr_Scroll()
rojoscr_Change
End Sub
Private Sub verde_Change()
If verde.Text = "" Then
Else
If Val(verde.Text) < 0 Then verde.Text = "0"
If Val(verde.Text) > 255 Then verde.Text = "255"
verdescr.Value = Val(verde.Text)
cverde.BackColor = RGB(0, Val(verde.Text), 0)
mezcla.BackColor = RGB(Val(rojo.Text), Val(verde.Text), Val(azul.Text))
End If
End Sub
Private Sub verdescr_Change()
verde.Text = verdescr.Value
End Sub
Private Sub verdescr_Scroll()
verdescr_Change
End Sub
