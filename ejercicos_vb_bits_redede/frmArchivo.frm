VERSION 4.00
Begin VB.Form frmArchivo 
   Caption         =   "Archivo"
   ClientHeight    =   810
   ClientLeft      =   1890
   ClientTop       =   2775
   ClientWidth     =   6060
   Height          =   1215
   Icon            =   "frmArchivo.frx":0000
   Left            =   1830
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   810
   ScaleWidth      =   6060
   Top             =   2430
   Width           =   6180
   Begin VB.CommandButton Command2 
      Caption         =   "&Cerrar"
      Height          =   255
      Left            =   4440
      TabIndex        =   2
      Top             =   480
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Seleccionar"
      Height          =   255
      Left            =   4440
      TabIndex        =   1
      Top             =   120
      Width           =   1335
   End
   Begin VB.TextBox nombarchivo 
      Height          =   285
      Left            =   360
      TabIndex        =   0
      Top             =   360
      Width           =   3735
   End
   Begin VB.Label Label1 
      Caption         =   "Nombre del archivo"
      Height          =   255
      Left            =   360
      TabIndex        =   3
      Top             =   120
      Width           =   2415
   End
End
Attribute VB_Name = "frmArchivo"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
FrmDirArchiv.Show 1
End Sub

Private Sub Command2_Click()
End
End Sub
