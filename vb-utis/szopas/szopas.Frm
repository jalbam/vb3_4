VERSION 4.00
Begin VB.Form Form1 
   Caption         =   "Super Zopas"
   ClientHeight    =   4515
   ClientLeft      =   780
   ClientTop       =   1770
   ClientWidth     =   10395
   Height          =   4920
   Icon            =   "szopas.frx":0000
   Left            =   720
   LinkTopic       =   "Form1"
   ScaleHeight     =   4515
   ScaleWidth      =   10395
   Top             =   1425
   Width           =   10515
   Begin VB.Frame Frame3 
      Caption         =   "Opciones"
      Height          =   4215
      Left            =   9000
      TabIndex        =   6
      Top             =   120
      Width           =   1335
   End
   Begin VB.Frame Frame2 
      Caption         =   "Resultado"
      Height          =   4215
      Left            =   4680
      TabIndex        =   5
      Top             =   120
      Width           =   4215
   End
   Begin VB.Frame Frame1 
      Caption         =   "Entrada de Palabras"
      Height          =   4215
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4335
      Begin VB.CommandButton modificar 
         Caption         =   "&Modificar"
         Height          =   375
         Left            =   1080
         TabIndex        =   4
         Top             =   3720
         Width           =   1575
      End
      Begin VB.CommandButton quitar 
         Caption         =   "&Quitar"
         Height          =   375
         Left            =   1920
         TabIndex        =   3
         Top             =   3240
         Width           =   1575
      End
      Begin VB.CommandButton agregar 
         Caption         =   "&Agregar..."
         Height          =   375
         Left            =   240
         TabIndex        =   2
         Top             =   3240
         Width           =   1575
      End
      Begin VB.ListBox listado 
         Height          =   2790
         Left            =   240
         TabIndex        =   1
         Top             =   360
         Width           =   3255
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Private Sub Form_Load()
Dim entra
entra = "pepe"
Listado.AddItem entra
entra = "pipo"
Listado.AddItem entra
'Listado.RemoveItem
End Sub


