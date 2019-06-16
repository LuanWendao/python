VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "注册验证"
   ClientHeight    =   2625
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6165
   LinkTopic       =   "Form1"
   ScaleHeight     =   2625
   ScaleWidth      =   6165
   StartUpPosition =   1  '所有者中心
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1440
      TabIndex        =   12
      Top             =   600
      Visible         =   0   'False
      Width           =   4575
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1440
      TabIndex        =   11
      Top             =   120
      Width           =   4575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "注册"
      BeginProperty Font 
         Name            =   "KaiTi"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   645
      Left            =   2415
      TabIndex        =   9
      Top             =   1950
      Width           =   1725
   End
   Begin VB.CommandButton Command2 
      Caption         =   "关闭"
      BeginProperty Font 
         Name            =   "KaiTi"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   645
      Left            =   4140
      TabIndex        =   8
      Top             =   1950
      Width           =   1845
   End
   Begin VB.Frame Frame1 
      Caption         =   "请输入注册码:"
      BeginProperty Font 
         Name            =   "KaiTi"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   705
      Left            =   150
      TabIndex        =   2
      Top             =   1200
      Width           =   5880
      Begin VB.TextBox Txt 
         Height          =   345
         Index           =   0
         Left            =   1020
         MaxLength       =   4
         TabIndex        =   6
         Top             =   270
         Width           =   1065
      End
      Begin VB.TextBox Txt 
         Height          =   345
         Index           =   1
         Left            =   2220
         MaxLength       =   4
         TabIndex        =   5
         Top             =   270
         Width           =   1065
      End
      Begin VB.TextBox Txt 
         Height          =   345
         Index           =   2
         Left            =   3435
         MaxLength       =   4
         TabIndex        =   4
         Top             =   270
         Width           =   1065
      End
      Begin VB.TextBox Txt 
         Height          =   345
         Index           =   3
         Left            =   4650
         MaxLength       =   4
         TabIndex        =   3
         Top             =   255
         Width           =   1065
      End
      Begin VB.Label Label1 
         Caption         =   "注册码："
         ForeColor       =   &H000000FF&
         Height          =   195
         Left            =   225
         TabIndex        =   7
         Top             =   330
         Width           =   795
      End
   End
   Begin VB.CommandButton Command3 
      Caption         =   "生成机器号"
      BeginProperty Font 
         Name            =   "KaiTi"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   180
      TabIndex        =   1
      Top             =   105
      Width           =   1275
   End
   Begin VB.CommandButton Command4 
      Caption         =   "生成注册号"
      BeginProperty Font 
         Name            =   "KaiTi"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   165
      TabIndex        =   0
      Top             =   555
      Visible         =   0   'False
      Width           =   1275
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      Height          =   615
      Left            =   360
      TabIndex        =   10
      Top             =   2760
      Visible         =   0   'False
      Width           =   5535
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'Download by http://www.NewXing.com
Const Fil As String = "C:\RegCodeFile.ini"
Private Declare Function GetVolumeInformation Lib "kernel32.dll" Alias _
    "GetVolumeInformationA" (ByVal lpRootPathName As String, _
    ByVal lpVolumeNameBuffer As String, ByVal nVolumeNameSize As Integer, _
    lpVolumeSerialNumber As Long, lpMaximumComponentLength As Long, _
    lpFileSystemFlags As Long, ByVal lpFileSystemNameBuffer As String, _
    ByVal nFileSystemNameSize As Long) As Long
Dim mycpuid, mydiskid, myid As String
Private Sub GetProcessorID()
Dim a As SWbemServices
Dim b As SWbemObjectSet
Dim c As SWbemObject
Dim d As SWbemPropertySet
Dim e As SWbemProperty
  
Set a = GetObject("winmgmts:")
Set b = a.InstancesOf("Win32_Processor")
For Each c In b
   With c
    If .Properties_.Count > 0 Then
     Set d = .Properties_
      For Each e In d
      If e.Name = "ProcessorId" Then
           mycpuid = e.Value
      End If
     Next
    End If
   End With
Next
End Sub

Private Sub Command1_Click()
Dim myid As String, str2 As String
  mydiskid = Right(mydiskid, 4)
  mycpuid = Left(mycpuid, 8) & Right(mycpuid, 4)   '
  myid = ""
  Dim I As Integer
  For I = 0 To 3
  If Len(Txt(I)) = 0 Then
  MsgBox "第" & I + 1 & "注册码框内容不能为空", vbOKOnly, "提示信息"
  Exit Sub
  End If
  Next
    For I = 0 To 3
   If Len(myid) > 0 Then
   myid = myid & "   " & Mid(mydiskid, 4 - I, 1) & Mid(mycpuid, 2 * (I) + 1, 3)
   Else
   myid = Mid(mydiskid, 4 - I, 1) & Mid(mycpuid, 2 * (I) + 1, 3)
   End If
  Next I
  str2 = Txt(0) & "   " & Txt(1) & "   " & Txt(2) & "   " & Txt(3)
  
  If myid = str2 Then
  Open Fil For Output As #1
  Print #1, str2
  Close #1
  MsgBox "注册成功!", vbOKOnly, "提示信息"
  '加载其他窗口
   '将自己窗口消失
    Else
  MsgBox "注册失败，请输入正确的注册码!", vbOKOnly, "提示信息"
  End If

End Sub

Private Sub Command2_Click()
End
End Sub

Private Sub Command4_Click()
Text2 = ""
Text1 = Left(Text1, 20)
If Len(Text1) <> 20 Then
Me.Caption = "请输入正确的机器号"
Exit Sub
End If

If InStr(Text1, "r0") <= 0 Then
Me.Caption = "请输入正确的机器号"
Exit Sub
End If

If InStr(Text1, "8y") <= 0 Then
Me.Caption = "请输入正确的机器号"
Exit Sub
End If


  mydiskid = Right(mydiskid, 4)
  mycpuid = Left(mycpuid, 8) & Right(mycpuid, 4)   '
  myid = ""
  If Len(Text1) Then
  mydiskid = Right(Text1, 4)
  mycpuid = Right(Left(Text1, 18), 16)
  Else
  mydiskid = Right(mydiskid, 4)
  mycpuid = Left(mycpuid, 8) & Right(mycpuid, 4)   '
    End If
  Dim I As Integer
  For I = 0 To 3
   myid = myid & "   " & Mid(mydiskid, 4 - I, 1) & Mid(mycpuid, 2 * (I) + 1, 3)
  Next I
  Text2 = LTrim(myid)
End Sub

Private Sub Form_Load()
Dim TextLine As String
Dim mySerial As Long
Dim mylong As Long
Dim a As SWbemServices
Dim b As SWbemObjectSet
Dim c As SWbemObject
Dim d As SWbemPropertySet
Dim e As SWbemProperty
Set a = GetObject("winmgmts:")
Set b = a.InstancesOf("Win32_Processor")
For Each c In b
   With c
    If .Properties_.Count > 0 Then
     Set d = .Properties_
      For Each e In d
      If e.Name = "ProcessorId" Then
           mycpuid = e.Value
      End If
     Next
    End If
   End With
Next
Dim mystr, mytype, sRoot As String
mystr = String$(255, Chr$(0))
mytype = String$(255, Chr$(0))
sRoot = "c:\"                                     '设定获取C盘序列号
mylong = GetVolumeInformation(sRoot, mystr, Len(mystr), mySerial, 0, 0, mytype, Len(mytype))
mySerial = Mid(mySerial, 2)
Label2.Caption = "CPU序列号：" & mycpuid & vbCrLf & vbCrLf & "磁盘序列号：" & mySerial
mydiskid = mySerial

  mydiskid = Right(mydiskid, 4)
  mycpuid = Left(mycpuid, 8) & Right(mycpuid, 4)   '
  myid = ""
    Dim I  As Integer
    For I = 0 To 3
   If Len(myid) > 0 Then
   myid = myid & "   " & Mid(mydiskid, 4 - I, 1) & Mid(mycpuid, 2 * (I) + 1, 3)
   Else
   myid = Mid(mydiskid, 4 - I, 1) & Mid(mycpuid, 2 * (I) + 1, 3)
   End If
  Next I
  
  If Len(Dir(Fil)) Then
   Open Fil For Input As #1
   Line Input #1, TextLine
   Close #1
   '加载其他窗口
   '将自己窗口消失
   If TextLine = myid Then Me.Caption = "顺利"
  Else
  
  End If
End Sub

Private Sub Command3_Click()


 Text1 = "r0" & mycpuid & "8y" & Right(mydiskid, 8)
End Sub

 
 Private Sub Text1_KeyPress(KeyAscii As Integer)
 Static N As Long
If KeyAscii = 65 Then N = N + 1
If N > 10 Then
Command4.Visible = True
Text2.Visible = True
Else
KeyAscii = 0
End If


End Sub

Private Sub Text2_KeyPress(KeyAscii As Integer)
KeyAscii = 0
End Sub
