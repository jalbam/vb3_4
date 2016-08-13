VERSION 4.00
Begin VB.Form informacion 
   Caption         =   "Informacion de la Lista de Archivos"
   ClientHeight    =   2835
   ClientLeft      =   2085
   ClientTop       =   4065
   ClientWidth     =   5070
   Height          =   3240
   Left            =   2025
   LinkTopic       =   "Form1"
   ScaleHeight     =   2835
   ScaleWidth      =   5070
   Top             =   3720
   Width           =   5190
   Begin VB.CommandButton Command1 
      Caption         =   "Cerrar"
      Height          =   855
      Left            =   3720
      TabIndex        =   3
      Top             =   1800
      Width           =   1095
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "        Active o desactive los atributos de los archivos que desee mostrar, pulsando el boton Opciones."
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   120
      TabIndex        =   2
      Top             =   1800
      Width           =   3375
      WordWrap        =   -1  'True
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "        Seleccione el tipo de archivo de la lista Tipo de archivos, op escriba el patron del nombre del archivo."
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   120
      TabIndex        =   1
      Top             =   960
      Width           =   4815
      WordWrap        =   -1  'True
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "       Escriba el nombre del archivo, o seleccionelo de la lista de archivos."
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4830
      WordWrap        =   -1  'True
   End
End
Attribute VB_Name = "informacion"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
Unload informacion
End Sub
