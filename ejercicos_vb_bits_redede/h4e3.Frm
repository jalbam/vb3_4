VERSION 4.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   2055
   ClientLeft      =   1140
   ClientTop       =   1515
   ClientWidth     =   4710
   Height          =   2460
   Left            =   1080
   LinkTopic       =   "Form1"
   ScaleHeight     =   2055
   ScaleWidth      =   4710
   Top             =   1170
   Width           =   4830
   Begin VB.CommandButton Command3 
      Caption         =   "&Salir"
      Height          =   330
      Left            =   2835
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
      Left            =   2835
      TabIndex        =   6
      Top             =   0
      Width           =   1590
      Begin VB.OptionButton Option3 
         Caption         =   "&Milimetros"
         Height          =   225
         Left            =   105
         TabIndex        =   9
         Top             =   945
         Width           =   1275
      End
      Begin VB.OptionButton Option2 
         Caption         =   "&Centimetros"
         Height          =   225
         Left            =   105
         TabIndex        =   8
         Top             =   630
         Width           =   1170
      End
      Begin VB.OptionButton Option1 
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
      Left            =   630
      TabIndex        =   3
      Top             =   840
      Width           =   1485
   End
   Begin VB.CommandButton btnCalc_Area 
      Caption         =   "Calcular &Area"
      Height          =   225
      Left            =   630
      TabIndex        =   2
      Top             =   525
      Width           =   1485
   End
   Begin VB.TextBox radio 
      Height          =   285
      Left            =   525
      TabIndex        =   1
      Text            =   "0"
      Top             =   105
      Width           =   1695
   End
   Begin VB.Label Label3 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Label3"
      Height          =   225
      Left            =   525
      TabIndex        =   5
      Top             =   1365
      Width           =   1695
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      Height          =   225
      Left            =   0
      TabIndex        =   4
      Top             =   1365
      Width           =   540
   End
   Begin VB.Label Label1 
      Caption         =   "Radio:"
      Height          =   225
      Left            =   0
      TabIndex        =   0
      Top             =   105
      Width           =   540
   End
End
Attribute VB_Name = "Form1"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Load()
activar = True
End Sub

