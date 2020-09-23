VERSION 5.00
Begin VB.Form clock 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00FF00FF&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   2355
   ClientLeft      =   7635
   ClientTop       =   7410
   ClientWidth     =   4140
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "clock.frx":0000
   ScaleHeight     =   157
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   276
   Begin VB.Timer Timer1 
      Interval        =   10
      Left            =   2760
      Top             =   480
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1440
      TabIndex        =   0
      Top             =   1710
      Width           =   1335
   End
   Begin VB.Image Image1 
      Height          =   375
      Left            =   1680
      Top             =   480
      Width           =   375
   End
End
Attribute VB_Name = "clock"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()

AutoFormShape clock, RGB(255, 0, 255)
clock.Show 1
End Sub


Private Sub Image1_Click()
End
End Sub

Private Sub Timer1_Timer()
Label1.Caption = Time
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
ReleaseCapture
Result& = SendMessage(Me.hwnd, &H112, &HF012, 0)
End Sub
