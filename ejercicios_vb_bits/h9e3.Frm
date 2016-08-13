VERSION 4.00
Begin VB.Form FrmDirArchiv 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Lista de Archivos"
   ClientHeight    =   3495
   ClientLeft      =   2385
   ClientTop       =   1695
   ClientWidth     =   6825
   Height          =   3900
   Left            =   2325
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3495
   ScaleWidth      =   6825
   ShowInTaskbar   =   0   'False
   Top             =   1350
   Width           =   6945
   Begin VB.DriveListBox LstUnid 
      Height          =   315
      Left            =   2880
      TabIndex        =   12
      Top             =   3000
      Width           =   2295
   End
   Begin VB.CommandButton btnAtribut 
      Caption         =   "&Opciones"
      Height          =   375
      Left            =   5400
      TabIndex        =   11
      Top             =   2160
      Width           =   1215
   End
   Begin VB.CommandButton btnCancelar 
      Cancel          =   -1  'True
      Caption         =   "Cancelar"
      Height          =   375
      Left            =   5400
      TabIndex        =   10
      Top             =   1320
      Width           =   1215
   End
   Begin VB.CommandButton btnAceptar 
      Caption         =   "Aceptar"
      Default         =   -1  'True
      Height          =   375
      Left            =   5400
      TabIndex        =   9
      Top             =   720
      Width           =   1215
   End
   Begin VB.DirListBox LstDir 
      Height          =   1830
      Left            =   2880
      TabIndex        =   7
      Top             =   720
      Width           =   2295
   End
   Begin VB.ComboBox Tipo 
      Height          =   315
      Left            =   240
      Style           =   2  'Dropdown List
      TabIndex        =   4
      Top             =   3000
      Width           =   2295
   End
   Begin VB.FileListBox LstArch 
      Height          =   1815
      Left            =   240
      TabIndex        =   2
      Top             =   720
      Width           =   2295
   End
   Begin VB.TextBox NombArch 
      Height          =   285
      Left            =   240
      TabIndex        =   1
      Top             =   360
      Width           =   2295
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Unidades"
      BeginProperty Font 
         name            =   "MS Sans Serif"
         charset         =   0
         weight          =   700
         size            =   8.25
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   2880
      TabIndex        =   8
      Top             =   2760
      Width           =   810
   End
   Begin VB.Label ruta 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Label4"
      Height          =   195
      Left            =   2880
      TabIndex        =   6
      Top             =   360
      Width           =   480
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Ubicacion"
      BeginProperty Font 
         name            =   "MS Sans Serif"
         charset         =   0
         weight          =   700
         size            =   8.25
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   2880
      TabIndex        =   5
      Top             =   120
      Width           =   870
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Lista por Tipo de archivo"
      BeginProperty Font 
         name            =   "MS Sans Serif"
         charset         =   0
         weight          =   700
         size            =   8.25
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   240
      TabIndex        =   3
      Top             =   2760
      Width           =   2145
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Nombre del archivo"
      BeginProperty Font 
         name            =   "MS Sans Serif"
         charset         =   0
         weight          =   700
         size            =   8.25
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   240
      TabIndex        =   0
      Top             =   120
      Width           =   1665
   End
End
Attribute VB_Name = "FrmDirArchiv"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit

