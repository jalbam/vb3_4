VERSION 4.00
Begin VB.Form Form1 
   Caption         =   "Casillas y Opciones"
   ClientHeight    =   3075
   ClientLeft      =   1680
   ClientTop       =   1755
   ClientWidth     =   5070
   Height          =   3480
   Left            =   1620
   LinkTopic       =   "Form1"
   ScaleHeight     =   3075
   ScaleWidth      =   5070
   Top             =   1410
   Width           =   5190
   Begin VB.CommandButton Command1 
      Caption         =   "Aplicar"
      Height          =   315
      Left            =   1800
      TabIndex        =   9
      Top             =   2760
      Width           =   1455
   End
   Begin VB.TextBox Texto 
      Alignment       =   2  'Center
      Height          =   1455
      Left            =   0
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   5
      Text            =   "h3e1c2.frx":0000
      Top             =   1200
      Width           =   3975
   End
   Begin VB.Frame Frame2 
      Caption         =   "Estilo"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   2040
      TabIndex        =   4
      Top             =   0
      Width           =   1935
      Begin VB.CheckBox subray 
         Caption         =   "&Subrayado"
         Height          =   255
         Left            =   120
         TabIndex        =   8
         Top             =   720
         Width           =   1215
      End
      Begin VB.CheckBox cursiv 
         Caption         =   "&Cursiva"
         Height          =   255
         Left            =   120
         TabIndex        =   7
         Top             =   480
         Width           =   1215
      End
      Begin VB.CheckBox negrit 
         Caption         =   "&Negrilla"
         Height          =   255
         Left            =   120
         TabIndex        =   6
         Top             =   240
         Width           =   1455
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Fuente"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   1935
      Begin VB.OptionButton fuente3 
         Caption         =   "&Courier New"
         Height          =   255
         Left            =   120
         TabIndex        =   3
         Top             =   720
         Width           =   1695
      End
      Begin VB.OptionButton fuente2 
         Caption         =   "&Arial"
         Height          =   255
         Left            =   120
         TabIndex        =   2
         Top             =   480
         Width           =   1695
      End
      Begin VB.OptionButton fuente1 
         Caption         =   "&Times New Roman"
         Height          =   195
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   1695
      End
   End
   Begin Threed.SSFrame SSFrame1 
      Height          =   2535
      Left            =   4080
      TabIndex        =   10
      Top             =   120
      Width           =   975
      _Version        =   65536
      _ExtentX        =   1720
      _ExtentY        =   4471
      _StockProps     =   14
      Caption         =   "Colores"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Font3D          =   1
      ShadowStyle     =   1
      Begin Threed.SSOption rojo 
         Height          =   255
         Left            =   120
         TabIndex        =   14
         Top             =   1200
         Width           =   735
         _Version        =   65536
         _ExtentX        =   1296
         _ExtentY        =   450
         _StockProps     =   78
         Caption         =   "&Rojo"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Font3D          =   1
      End
      Begin Threed.SSOption azul 
         Height          =   255
         Left            =   120
         TabIndex        =   13
         Top             =   2160
         Width           =   615
         _Version        =   65536
         _ExtentX        =   1085
         _ExtentY        =   450
         _StockProps     =   78
         Caption         =   "&Azul"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Font3D          =   1
      End
      Begin Threed.SSOption verde 
         Height          =   255
         Left            =   120
         TabIndex        =   12
         Top             =   1680
         Width           =   735
         _Version        =   65536
         _ExtentX        =   1296
         _ExtentY        =   450
         _StockProps     =   78
         Caption         =   "Verde"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Font3D          =   1
      End
      Begin Threed.SSOption negro 
         Height          =   255
         Left            =   120
         TabIndex        =   11
         Top             =   600
         Width           =   735
         _Version        =   65536
         _ExtentX        =   1296
         _ExtentY        =   450
         _StockProps     =   78
         Caption         =   "Negr&o"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Font3D          =   1
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit

Private Sub azul_Click(Value As Integer)
If azul = True Then
Texto.ForeColor = &HFF0000
End If
End Sub

Private Sub Command1_Click()
If negrit.Value = 0 Then
Texto.FontBold = False
Else
Texto.FontBold = True
End If
If cursiv.Value = 0 Then
Texto.FontItalic = False
Else
Texto.FontItalic = True
End If
If subray.Value = 0 Then
Texto.FontUnderline = False
Else
Texto.FontUnderline = True
End If
If fuente1.Value = True Then
Texto.FontName = "Times new roman"
End If
If fuente2.Value = True Then
Texto.FontName = "Arial"
End If
If fuente3.Value = True Then
Texto.FontName = "Courier new"
End If
End Sub

Private Sub Form_Load()
fuente1.Value = True: Texto.FontSize = 14
negro.Value = True
Texto.ForeColor = &H0&
End Sub

Private Sub negro_Click(Value As Integer)
If negro.Value = True Then
Texto.ForeColor = &H0&
End If
End Sub

Private Sub rojo_Click(Value As Integer)
If rojo.Value = True Then
Texto.ForeColor = &HFF&
End If

End Sub

Private Sub verde_Click(Value As Integer)
If verde.Value = True Then
Texto.ForeColor = &HFF00&
End If

End Sub
