VERSION 4.00
Begin VB.Form frmOpciones 
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Propiedades"
   ClientHeight    =   2040
   ClientLeft      =   3105
   ClientTop       =   2220
   ClientWidth     =   4410
   Height          =   2445
   Icon            =   "frmOpciones.frx":0000
   Left            =   3045
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2040
   ScaleWidth      =   4410
   ShowInTaskbar   =   0   'False
   Top             =   1875
   Width           =   4530
   Begin VB.CommandButton btnCancelar 
      Cancel          =   -1  'True
      Caption         =   "Cancelar"
      Height          =   375
      Left            =   3000
      TabIndex        =   6
      Top             =   720
      Width           =   1335
   End
   Begin VB.CommandButton btnAceptar 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Aceptar"
      Default         =   -1  'True
      Height          =   375
      Left            =   3000
      TabIndex        =   5
      Top             =   240
      Width           =   1335
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Mostrar archivos con atributos de:"
      Height          =   1815
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2655
      Begin VB.CheckBox vrfSistem 
         Caption         =   "&Sistema"
         Height          =   255
         Left            =   600
         TabIndex        =   4
         Top             =   1440
         Width           =   1335
      End
      Begin VB.CheckBox vrfOcult 
         Caption         =   "&Oculto"
         Height          =   255
         Left            =   600
         TabIndex        =   3
         Top             =   1080
         Width           =   1455
      End
      Begin VB.CheckBox vrfSelect 
         Caption         =   "Solo &Lectura"
         Height          =   255
         Left            =   600
         TabIndex        =   2
         Top             =   720
         Width           =   1215
      End
      Begin VB.CheckBox vrfModif 
         Caption         =   "&Modificado"
         Height          =   255
         Left            =   600
         TabIndex        =   1
         Top             =   360
         Width           =   1095
      End
   End
End
Attribute VB_Name = "frmOpciones"
Attribute VB_Creatable = False
Attribute VB_Exposed = False
Option Explicit

Private Sub btnAceptar_Click()
If vrfModif.Value = 0 Then
    FrmDirArchiv!LstArch.Archive = False
Else
    FrmDirArchiv!LstArch.Archive = True
End If

If vrfSelect.Value = 0 Then
    FrmDirArchiv!LstArch.ReadOnly = False
Else
    FrmDirArchiv!LstArch.ReadOnly = True
End If
If vrfOcult.Value = 0 Then
    FrmDirArchiv!LstArch.Hidden = False
Else
    FrmDirArchiv!LstArch.Hidden = True
End If
If vrfSistem.Value = 0 Then
    FrmDirArchiv!LstArch.System = False
Else
    FrmDirArchiv!LstArch.System = True
End If: Unload Me

        
End Sub

Private Sub btnCancelar_Click()
Unload frmOpciones
End Sub

Private Sub Form_Activate()
vrfModif.Value = Abs(FrmDirArchiv!LstArch.Archive)
vrfSelect.Value = Abs(FrmDirArchiv!LstArch.ReadOnly)
vrfOcult.Value = Abs(FrmDirArchiv!LstArch.Hidden)
vrfSistem.Value = Abs(FrmDirArchiv!LstArch.System)
End Sub

