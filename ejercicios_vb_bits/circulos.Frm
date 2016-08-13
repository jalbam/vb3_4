VERSION 4.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   Caption         =   "Efectos-O-Matic"
   ClientHeight    =   5280
   ClientLeft      =   1170
   ClientTop       =   1560
   ClientWidth     =   7305
   Height          =   5685
   Left            =   1110
   LinkTopic       =   "Form1"
   ScaleHeight     =   5280
   ScaleWidth      =   7305
   Top             =   1215
   Width           =   7425
   Begin VB.CommandButton opciones 
      Caption         =   "&Opciones"
      Height          =   495
      Left            =   4800
      TabIndex        =   4
      Top             =   4680
      Width           =   1935
   End
   Begin VB.CommandButton dibujar 
      Caption         =   "&Dibujar"
      Default         =   -1  'True
      Height          =   495
      Left            =   2640
      TabIndex        =   2
      Top             =   4680
      Width           =   2055
   End
   Begin VB.Frame resultado 
      BackColor       =   &H00000000&
      Caption         =   "Resultado"
      ForeColor       =   &H00C0FFC0&
      Height          =   4455
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   7095
      Begin VB.PictureBox resultado2 
         AutoRedraw      =   -1  'True
         BackColor       =   &H00FFFFFF&
         Height          =   4095
         Left            =   120
         ScaleHeight     =   4035
         ScaleWidth      =   6795
         TabIndex        =   3
         Top             =   240
         Width           =   6855
      End
   End
   Begin VB.CommandButton limpiar 
      Caption         =   "&Limpiar"
      Enabled         =   0   'False
      Height          =   495
      Left            =   600
      TabIndex        =   0
      Top             =   4680
      Width           =   1935
   End
End
Attribute VB_Name = "Form1"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit

Private Sub limpiar_Click()
resultado2.Cls
limpiar.Enabled = False
End Sub

Private Sub dibujar_Click()

Dim I   ' Declara variable.

Screen.MousePointer = 11  '   Cambia el puntero por un reloj de arena.
    For I = 0 To ScaleWidth Step 50 ' Establece un color aleatorio y              dibuja círculos en el formulario.
resultado2.ForeColor = RGB(Rnd * 255, Rnd * 255, Rnd * 255)
resultado2.Circle (I, ScaleHeight * Rnd), 400
Next
Screen.MousePointer = 0  'Vuelve al puntero normal.

limpiar.Enabled = True

End Sub

Private Sub Form_Load()
dibujar.Default = True
End Sub
