VERSION 4.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Paleta de Colores"
   ClientHeight    =   1935
   ClientLeft      =   1140
   ClientTop       =   1515
   ClientWidth     =   4950
   Height          =   2340
   Icon            =   "h5e3-c2.frx":0000
   Left            =   1080
   LinkTopic       =   "Paleta de Colores"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1935
   ScaleWidth      =   4950
   Top             =   1170
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
      Caption         =   "&Aceptar"
      Height          =   330
      Left            =   945
      TabIndex        =   13
      Top             =   1470
      Width           =   1800
   End
   Begin VB.TextBox Text10 
      BorderStyle     =   0  'None
      Enabled         =   0   'False
      Height          =   850
      Left            =   3990
      TabIndex        =   12
      Top             =   315
      Width           =   850
   End
   Begin VB.TextBox Text9 
      BorderStyle     =   0  'None
      Enabled         =   0   'False
      Height          =   225
      Left            =   3570
      TabIndex        =   11
      Top             =   1050
      Width           =   225
   End
   Begin VB.TextBox Text8 
      BorderStyle     =   0  'None
      Enabled         =   0   'False
      Height          =   225
      Left            =   3570
      TabIndex        =   10
      Top             =   630
      Width           =   225
   End
   Begin VB.TextBox Text7 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Enabled         =   0   'False
      Height          =   225
      Left            =   3570
      TabIndex        =   9
      Top             =   210
      Width           =   225
   End
   Begin VB.TextBox Text6 
      BorderStyle     =   0  'None
      Height          =   225
      Left            =   3045
      TabIndex        =   8
      Top             =   1050
      Width           =   400
   End
   Begin VB.TextBox Text5 
      BorderStyle     =   0  'None
      Height          =   225
      Left            =   3045
      TabIndex        =   7
      Top             =   630
      Width           =   400
   End
   Begin VB.TextBox Text4 
      BorderStyle     =   0  'None
      Height          =   225
      Left            =   3045
      TabIndex        =   6
      Top             =   210
      Width           =   400
   End
   Begin VB.TextBox Text3 
      BackColor       =   &H00FF0000&
      BorderStyle     =   0  'None
      Enabled         =   0   'False
      Height          =   225
      Left            =   105
      TabIndex        =   5
      Top             =   1050
      Width           =   225
   End
   Begin VB.TextBox Text2 
      BackColor       =   &H0000FF00&
      BorderStyle     =   0  'None
      Enabled         =   0   'False
      Height          =   225
      Left            =   105
      TabIndex        =   4
      Top             =   615
      Width           =   225
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H000000FF&
      BorderStyle     =   0  'None
      Enabled         =   0   'False
      ForeColor       =   &H000000FF&
      Height          =   225
      Left            =   105
      TabIndex        =   3
      Top             =   210
      Width           =   225
   End
   Begin VB.HScrollBar HScroll3 
      Height          =   225
      Left            =   420
      TabIndex        =   2
      Top             =   1050
      Width           =   2535
   End
   Begin VB.HScrollBar HScroll2 
      Height          =   225
      Left            =   420
      TabIndex        =   1
      Top             =   630
      Width           =   2535
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   225
      Left            =   420
      TabIndex        =   0
      Top             =   210
      Width           =   2535
   End
End
Attribute VB_Name = "Form1"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit

Private Sub help_Click()
Form2.Show
End Sub
