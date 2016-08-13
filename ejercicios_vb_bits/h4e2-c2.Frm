VERSION 4.00
Begin VB.Form Form1 
   Caption         =   "Cambio de divisas"
   ClientHeight    =   1980
   ClientLeft      =   2475
   ClientTop       =   2490
   ClientWidth     =   4725
   Height          =   2385
   Left            =   2415
   LinkTopic       =   "Form1"
   ScaleHeight     =   1980
   ScaleWidth      =   4725
   Top             =   2145
   Width           =   4845
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   2160
      TabIndex        =   15
      Text            =   "0"
      Top             =   1320
      Width           =   1455
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&Salir"
      Height          =   255
      Left            =   3240
      TabIndex        =   9
      Top             =   960
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Cambiar"
      Height          =   255
      Left            =   1800
      TabIndex        =   8
      Top             =   960
      Width           =   1215
   End
   Begin VB.Frame Frame2 
      Caption         =   "Tipo de Cambio"
      BeginProperty Font 
         name            =   "MS Sans Serif"
         charset         =   0
         weight          =   700
         size            =   8.25
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   1785
      TabIndex        =   5
      Top             =   105
      Width           =   2655
      Begin VB.OptionButton tm_pts 
         Caption         =   "<Tipo de &moneda> a pesetas"
         Height          =   195
         Left            =   120
         TabIndex        =   7
         Top             =   480
         Width           =   2415
      End
      Begin VB.OptionButton pts_tm 
         Caption         =   "&Pesetas a <Tipo de moneda>"
         Height          =   195
         Left            =   120
         TabIndex        =   6
         Top             =   240
         Width           =   2415
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Tipo de Moneda"
      BeginProperty Font 
         name            =   "MS Sans Serif"
         charset         =   0
         weight          =   700
         size            =   8.25
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   1695
      Begin VB.OptionButton liras 
         Caption         =   "L&iras"
         Height          =   195
         Left            =   120
         TabIndex        =   4
         Top             =   960
         Width           =   735
      End
      Begin VB.OptionButton libras 
         Caption         =   "&Libras"
         Height          =   195
         Left            =   120
         TabIndex        =   3
         Top             =   720
         Width           =   735
      End
      Begin VB.OptionButton francos 
         Caption         =   "&Francos"
         Height          =   195
         Left            =   120
         TabIndex        =   2
         Top             =   480
         Width           =   975
      End
      Begin VB.OptionButton dolares 
         Caption         =   "&Dólares"
         Height          =   195
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   855
      End
   End
   Begin VB.Label Label3 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0"
      Height          =   255
      Left            =   2160
      TabIndex        =   14
      Top             =   1680
      Width           =   1455
   End
   Begin VB.Label Label5 
      Caption         =   "Label5"
      BeginProperty Font 
         name            =   "MS Sans Serif"
         charset         =   0
         weight          =   700
         size            =   8.25
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3720
      TabIndex        =   13
      Top             =   1680
      Width           =   930
   End
   Begin VB.Label Label4 
      Caption         =   "Label4"
      BeginProperty Font 
         name            =   "MS Sans Serif"
         charset         =   0
         weight          =   700
         size            =   8.25
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3720
      TabIndex        =   12
      Top             =   1320
      Width           =   930
   End
   Begin VB.Label Label1 
      Caption         =   "Cantidad a Cambiar:"
      BeginProperty Font 
         name            =   "MS Sans Serif"
         charset         =   0
         weight          =   700
         size            =   8.25
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   360
      TabIndex        =   10
      Top             =   1320
      Width           =   1815
   End
   Begin VB.Label Label2 
      Caption         =   "Resultado del cambio:"
      BeginProperty Font 
         name            =   "MS Sans Serif"
         charset         =   0
         weight          =   700
         size            =   8.25
         underline       =   0   'False
         italic          =   0   'False
         strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   11
      Top             =   1680
      Width           =   1935
   End
End
Attribute VB_Name = "Form1"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit
Dim moneda As Single
Private Sub Command1_Click()
If pts_tm.Value = True Then
Label3.Caption = Text1.Text / moneda
End If
If tm_pts.Value = True Then
Label3.Caption = moneda * Text1.Text
End If
Label3.Caption = Format(Label3.Caption, "#,##0.0")
End Sub

Private Sub Command2_Click()
MsgBox "Fin del Programa", , "Seleccion: <Salir>"
End
End Sub

Private Sub dolares_Click()
moneda = 142
pts_tm.Caption = "Pesetas a Dólares"
tm_pts.Caption = "Dólares a Pesetas"
'Codigo
If pts_tm.Value = True Then
Label4.Caption = "Pesetas":
Label5.Caption = "Dólares"
Else:
Label4.Caption = "Dólares":
Label5.Caption = "Pesetas"
End If
End Sub

Private Sub Form_Load()
dolares.Value = True
pts_tm.Value = True
End Sub

Private Sub francos_Click()
moneda = 74
pts_tm.Caption = "Pesetas a Francos"
tm_pts.Caption = "Francos a Pesetas"
'Codigo
If pts_tm.Value = True Then
Label4.Caption = "Pesetas": Label5.Caption = "Francos"
Else: Label4.Caption = "Francos": Label5.Caption = "Pesetas"
End If
End Sub

Private Sub libras_Click()
moneda = 45
pts_tm.Caption = "Pesetas a Libras"
tm_pts.Caption = "Libras a Pesetas"
'Codigo
If pts_tm.Value = True Then
Label4.Caption = "Pesetas": Label5.Caption = "Libras"
Else: Label4.Caption = "Libras": Label5.Caption = "Pesetas"
End If
End Sub

Private Sub liras_Click()
moneda = 3
pts_tm.Caption = "Pesetas a Liras"
tm_pts.Caption = "Liras a Pesetas"
'Codigo
If pts_tm.Value = True Then
Label4.Caption = "Pesetas"
Label5.Caption = "Liras"
Else: Label4.Caption = "Liras": Label5.Caption = "Pesetas"
End If
End Sub

Private Sub pts_tm_Click()
If dolares.Value = True Then
Label4.Caption = "Pesetas"
Label5.Caption = "Dólares"
End If
If francos.Value = True Then
Label4.Caption = "Pesetas"
Label5.Caption = "Francos"
End If
If libras.Value = True Then
Label4.Caption = "Pesetas"
Label5.Caption = "Libras"
End If
If liras.Value = True Then
Label4.Caption = "Pesetas"
Label5.Caption = "Liras"
End If

End Sub

Private Sub tm_pts_Click()
If dolares.Value = True Then
Label4.Caption = "Dolares"
Label5.Caption = "Pesetas"
End If
If francos.Value = True Then
Label4.Caption = "Francos"
Label5.Caption = "Pesetas"
End If
If libras.Value = True Then
Label4.Caption = "Libras"
Label5.Caption = "Pesetas"
End If
If liras.Value = True Then
Label4.Caption = "Liras"
Label5.Caption = "Pesetas"
End If
End Sub
