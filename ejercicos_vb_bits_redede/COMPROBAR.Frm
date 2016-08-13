VERSION 4.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5940
   ClientLeft      =   1140
   ClientTop       =   1515
   ClientWidth     =   7305
   Height          =   6345
   Left            =   1080
   LinkTopic       =   "Form1"
   ScaleHeight     =   5940
   ScaleWidth      =   7305
   Top             =   1170
   Width           =   7425
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   840
      TabIndex        =   3
      Text            =   "Text2"
      Top             =   1080
      Width           =   2175
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Command2"
      Height          =   375
      Left            =   3720
      TabIndex        =   2
      Top             =   1080
      Width           =   2055
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   375
      Left            =   3720
      TabIndex        =   1
      Top             =   360
      Width           =   2055
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   840
      TabIndex        =   0
      Text            =   "Text1"
      Top             =   360
      Width           =   2295
   End
End
Attribute VB_Name = "Form1"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub Command1_Click()
Text1.Text = Format(Text1.Text, "#,##0.0")
End Sub


Private Sub Command2_Click()
Text2.Text = Valor(Text1.Text)
End Sub


