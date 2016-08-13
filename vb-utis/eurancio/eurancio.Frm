VERSION 4.00
Begin VB.Form eurancio 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Eurancio 99   -1.0-       [ A-Kristo ]"
   ClientHeight    =   1650
   ClientLeft      =   1935
   ClientTop       =   3270
   ClientWidth     =   5115
   Height          =   2055
   Icon            =   "eurancio.frx":0000
   Left            =   1875
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   1650
   ScaleWidth      =   5115
   Top             =   2925
   Width           =   5235
   Begin VB.CommandButton Command1 
      Caption         =   "Pasar"
      Default         =   -1  'True
      Height          =   255
      Left            =   1080
      TabIndex        =   6
      Top             =   1320
      Width           =   2535
   End
   Begin VB.OptionButton Option2 
      BackColor       =   &H00000000&
      Caption         =   "Euros a Pesetas"
      ForeColor       =   &H00FFFF00&
      Height          =   255
      Left            =   3480
      TabIndex        =   5
      Top             =   840
      Width           =   1455
   End
   Begin VB.OptionButton Option1 
      BackColor       =   &H00000000&
      Caption         =   "Pesetas a Euros"
      ForeColor       =   &H00FFFF00&
      Height          =   255
      Left            =   3480
      TabIndex        =   4
      Top             =   240
      Value           =   -1  'True
      Width           =   1455
   End
   Begin VB.TextBox Text2 
      BackColor       =   &H00000000&
      Height          =   285
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   3
      Top             =   840
      Width           =   1575
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   1560
      TabIndex        =   1
      Top             =   240
      Width           =   1575
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "Valor total:"
      ForeColor       =   &H0000FFFF&
      Height          =   195
      Left            =   720
      TabIndex        =   2
      Top             =   840
      Width           =   750
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      Caption         =   "Cantidad a pasar:"
      ForeColor       =   &H000000FF&
      Height          =   195
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   1245
   End
End
Attribute VB_Name = "eurancio"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub Form_Load()
'166,374781085814360770577933450088
End Sub


