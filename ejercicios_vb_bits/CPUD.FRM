VERSION 4.00
Begin VB.Form CPUD 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "CPU Destroyers: Da Future Kaoz... Fuck you Windoze Systems!!!  (:="
   ClientHeight    =   1350
   ClientLeft      =   3045
   ClientTop       =   1890
   ClientWidth     =   7110
   Height          =   1755
   Icon            =   "CPUD.frx":0000
   Left            =   2985
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1350
   ScaleWidth      =   7110
   ShowInTaskbar   =   0   'False
   Top             =   1545
   Width           =   7230
   Begin VB.Frame Frame1 
      BackColor       =   &H00404040&
      Caption         =   "CPU Destroyers"
      ForeColor       =   &H0000FFFF&
      Height          =   1335
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   7095
      Begin VB.CommandButton Command1 
         Caption         =   "®"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   6600
         TabIndex        =   5
         Top             =   240
         Width           =   375
      End
      Begin VB.Label Label4 
         BackColor       =   &H00000000&
         Caption         =   "                  Plz... No Remorse!!!"
         ForeColor       =   &H000080FF&
         Height          =   255
         Left            =   2760
         TabIndex        =   4
         Top             =   960
         Width           =   2895
      End
      Begin VB.Label Label3 
         BackColor       =   &H00000000&
         Caption         =   "Dj. Esteve Pils"
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   240
         TabIndex        =   3
         Top             =   840
         Width           =   1095
      End
      Begin VB.Line Line3 
         BorderWidth     =   25
         X1              =   840
         X2              =   1320
         Y1              =   960
         Y2              =   960
      End
      Begin VB.Line Line2 
         BorderColor     =   &H000000FF&
         BorderWidth     =   25
         X1              =   720
         X2              =   360
         Y1              =   960
         Y2              =   960
      End
      Begin VB.Line Line1 
         X1              =   4320
         X2              =   4800
         Y1              =   1080
         Y2              =   1080
      End
      Begin VB.Label Label2 
         BackColor       =   &H00000000&
         Caption         =   "E0F Turbulence Lamers Simple Attack"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FF00&
         Height          =   495
         Left            =   1800
         TabIndex        =   2
         Top             =   600
         Width           =   4695
      End
      Begin VB.Label Label1 
         BackColor       =   &H00000000&
         Caption         =   "Da Future Kaoz of your Windoze Systems. Hehehehe. Is a very Lammah program..."
         ForeColor       =   &H000000FF&
         Height          =   255
         Left            =   600
         TabIndex        =   1
         Top             =   240
         Width           =   5655
      End
   End
End
Attribute VB_Name = "CPUD"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
MsgBox "Pringator&Fucking-O-Lamerz. Viva!!!"
End Sub

Private Sub Form_Load()
On Error GoTo err_
jurl = "Hola"
Open "c:\windows\escritorio\pepe.txt" For Random As #1
Put #1, , jurl
Close
err_:
MsgBox Error, "Error Nº " & Err
Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer)
MsgBox "Close and Close... buahahahahaha!", 48, "<CPU Destroyers: E0F Turbulence>"
MsgBox "I'm Sorry... Out of Memory! (Only Memory? hahaha!!!)", 64, "<CPU Destroyers: E0F Turbulence>"

End Sub
