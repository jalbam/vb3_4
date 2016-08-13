VERSION 4.00
Begin VB.Form Form1 
   Caption         =   "Casillas y Opciones"
   ClientHeight    =   2895
   ClientLeft      =   2865
   ClientTop       =   2745
   ClientWidth     =   4455
   Height          =   3300
   Icon            =   "h3e1c2.frx":0000
   Left            =   2805
   LinkTopic       =   "Form1"
   ScaleHeight     =   2895
   ScaleWidth      =   4455
   Top             =   2400
   Width           =   4575
   Begin VB.TextBox Text1 
      Alignment       =   2  'Center
      BackColor       =   &H00808000&
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   0
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   8
      Text            =   "h3e1c2.frx":0442
      Top             =   1560
      Width           =   4455
   End
   Begin Threed.SSFrame SSFrame1 
      Height          =   1455
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   2535
      _Version        =   65536
      _ExtentX        =   4471
      _ExtentY        =   2566
      _StockProps     =   14
      Caption         =   "Fuente"
      ForeColor       =   65535
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Font3D          =   2
      ShadowStyle     =   1
      Begin Threed.SSOption SSOption3 
         Height          =   255
         Left            =   360
         TabIndex        =   3
         Top             =   1080
         Width           =   2055
         _Version        =   65536
         _ExtentX        =   3625
         _ExtentY        =   450
         _StockProps     =   78
         Caption         =   "&Courier New"
         ForeColor       =   65280
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Font3D          =   4
      End
      Begin Threed.SSOption SSOption2 
         Height          =   255
         Left            =   360
         TabIndex        =   2
         Top             =   720
         Width           =   2055
         _Version        =   65536
         _ExtentX        =   3625
         _ExtentY        =   450
         _StockProps     =   78
         Caption         =   "&Arial"
         ForeColor       =   65280
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Font3D          =   4
      End
      Begin Threed.SSOption SSOption1 
         Height          =   255
         Left            =   360
         TabIndex        =   1
         Top             =   360
         Width           =   2055
         _Version        =   65536
         _ExtentX        =   3625
         _ExtentY        =   450
         _StockProps     =   78
         Caption         =   "&Times New Roman"
         ForeColor       =   65280
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Font3D          =   4
      End
   End
   Begin Threed.SSFrame SSFrame2 
      Height          =   1455
      Left            =   2640
      TabIndex        =   4
      Top             =   0
      Width           =   1815
      _Version        =   65536
      _ExtentX        =   3201
      _ExtentY        =   2566
      _StockProps     =   14
      Caption         =   "Estilo"
      ForeColor       =   65535
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Font3D          =   2
      Begin Threed.SSCheck SSCheck3 
         Height          =   255
         Left            =   360
         TabIndex        =   7
         Top             =   1080
         Width           =   1335
         _Version        =   65536
         _ExtentX        =   2355
         _ExtentY        =   450
         _StockProps     =   78
         Caption         =   "&Subrayado"
         ForeColor       =   65280
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Font3D          =   4
      End
      Begin Threed.SSCheck SSCheck2 
         Height          =   255
         Left            =   360
         TabIndex        =   6
         Top             =   720
         Width           =   975
         _Version        =   65536
         _ExtentX        =   1720
         _ExtentY        =   450
         _StockProps     =   78
         Caption         =   "&Cursiva"
         ForeColor       =   65280
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Font3D          =   4
      End
      Begin Threed.SSCheck SSCheck1 
         Height          =   255
         Left            =   360
         TabIndex        =   5
         Top             =   360
         Width           =   1215
         _Version        =   65536
         _ExtentX        =   2143
         _ExtentY        =   450
         _StockProps     =   78
         Caption         =   "&Negrita"
         ForeColor       =   65280
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Font3D          =   4
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit

