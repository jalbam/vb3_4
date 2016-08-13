VERSION 4.00
Begin VB.Form opciones 
   Caption         =   "Opciones"
   ClientHeight    =   5940
   ClientLeft      =   1455
   ClientTop       =   1875
   ClientWidth     =   7305
   Height          =   6345
   Left            =   1395
   LinkTopic       =   "Form2"
   ScaleHeight     =   5940
   ScaleWidth      =   7305
   Top             =   1530
   Width           =   7425
   Begin VB.Frame Frame3 
      Caption         =   "Colores"
      Height          =   2295
      Left            =   4560
      TabIndex        =   13
      Top             =   240
      Width           =   2055
      Begin VB.Label Label4 
         Caption         =   "Borde"
         Height          =   255
         Left            =   120
         TabIndex        =   15
         Top             =   1200
         Width           =   615
      End
      Begin VB.Label Label3 
         Caption         =   "Fondo:"
         Height          =   255
         Left            =   120
         TabIndex        =   14
         Top             =   840
         Width           =   735
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Tamaños"
      Height          =   2295
      Left            =   2280
      TabIndex        =   6
      Top             =   240
      Width           =   2055
      Begin VB.CheckBox Check6 
         Caption         =   "Aleatorio"
         Height          =   255
         Left            =   600
         TabIndex        =   12
         Top             =   1920
         Width           =   975
      End
      Begin VB.TextBox Text2 
         Height          =   285
         Left            =   840
         TabIndex        =   11
         Text            =   "Text2"
         Top             =   1320
         Width           =   975
      End
      Begin VB.TextBox Text1 
         Height          =   285
         Left            =   840
         TabIndex        =   10
         Text            =   "Text1"
         Top             =   840
         Width           =   975
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   120
         TabIndex        =   7
         Text            =   "Figura"
         Top             =   360
         Width           =   1815
      End
      Begin VB.Label Label2 
         Caption         =   "Maximo:"
         Height          =   255
         Left            =   120
         TabIndex        =   9
         Top             =   1320
         Width           =   615
      End
      Begin VB.Label Label1 
         Caption         =   "Minimo:"
         Height          =   255
         Left            =   120
         TabIndex        =   8
         Top             =   840
         Width           =   615
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Figuras"
      Height          =   2295
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   1815
      Begin VB.CheckBox Check5 
         Caption         =   "Aleatorio"
         Height          =   255
         Left            =   120
         TabIndex        =   5
         Top             =   1920
         Width           =   975
      End
      Begin VB.CheckBox Check4 
         Caption         =   "Elipse"
         Height          =   255
         Left            =   120
         TabIndex        =   4
         Top             =   1440
         Width           =   735
      End
      Begin VB.CheckBox Check3 
         Caption         =   "Rectangulos"
         Height          =   255
         Left            =   120
         TabIndex        =   3
         Top             =   1080
         Width           =   1215
      End
      Begin VB.CheckBox Check2 
         Caption         =   "Cuadrados"
         Height          =   255
         Left            =   120
         TabIndex        =   2
         Top             =   720
         Width           =   1095
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Circulos"
         Height          =   255
         Left            =   120
         TabIndex        =   1
         Top             =   360
         Width           =   855
      End
   End
End
Attribute VB_Name = "opciones"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit

