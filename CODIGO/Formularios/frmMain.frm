VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{33101C00-75C3-11CF-A8A0-444553540000}#1.0#0"; "CSWSK32.ocx"
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.ocx"
Begin VB.Form frmMain 
   BorderStyle     =   0  'None
   ClientHeight    =   8985
   ClientLeft      =   360
   ClientTop       =   300
   ClientWidth     =   12000
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H00000000&
   Icon            =   "frmMain.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   PaletteMode     =   1  'UseZOrder
   Picture         =   "frmMain.frx":030A
   ScaleHeight     =   599
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   800
   StartUpPosition =   2  'CenterScreen
   Visible         =   0   'False
   Begin SocketWrenchCtrl.Socket Socket1 
      Left            =   6720
      Top             =   2520
      _Version        =   65536
      _ExtentX        =   741
      _ExtentY        =   741
      _StockProps     =   0
      AutoResolve     =   0   'False
      Backlog         =   1
      Binary          =   -1  'True
      Blocking        =   0   'False
      Broadcast       =   0   'False
      BufferSize      =   10240
      HostAddress     =   ""
      HostFile        =   ""
      HostName        =   ""
      InLine          =   0   'False
      Interval        =   0
      KeepAlive       =   0   'False
      Library         =   ""
      Linger          =   0
      LocalPort       =   0
      LocalService    =   ""
      Protocol        =   0
      RemotePort      =   0
      RemoteService   =   ""
      ReuseAddress    =   0   'False
      Route           =   -1  'True
      Timeout         =   10000
      Type            =   1
      Urgent          =   0   'False
   End
   Begin VB.PictureBox MiniMapa 
      AutoRedraw      =   -1  'True
      Height          =   1500
      Left            =   6825
      ScaleHeight     =   1440
      ScaleWidth      =   1440
      TabIndex        =   41
      TabStop         =   0   'False
      Top             =   300
      Width           =   1500
   End
   Begin VB.PictureBox picSM 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   450
      Index           =   2
      Left            =   10875
      MousePointer    =   99  'Custom
      ScaleHeight     =   450
      ScaleWidth      =   420
      TabIndex        =   31
      Top             =   8445
      Width           =   420
   End
   Begin VB.PictureBox picSM 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   450
      Index           =   1
      Left            =   10470
      MousePointer    =   99  'Custom
      ScaleHeight     =   450
      ScaleWidth      =   420
      TabIndex        =   26
      Top             =   8445
      Width           =   420
   End
   Begin VB.PictureBox picSM 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   450
      Index           =   0
      Left            =   10050
      MousePointer    =   99  'Custom
      ScaleHeight     =   30
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   28
      TabIndex        =   25
      Top             =   8445
      Width           =   420
   End
   Begin VB.PictureBox picInv 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      CausesValidation=   0   'False
      ClipControls    =   0   'False
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   2025
      Left            =   8880
      ScaleHeight     =   135
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   168
      TabIndex        =   16
      Top             =   2640
      Width           =   2520
   End
   Begin VB.TextBox SendTxt 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   315
      Left            =   120
      MaxLength       =   160
      MultiLine       =   -1  'True
      TabIndex        =   2
      TabStop         =   0   'False
      ToolTipText     =   "Chat"
      Top             =   1839
      Visible         =   0   'False
      Width           =   8190
   End
   Begin VB.Timer macrotrabajo 
      Enabled         =   0   'False
      Left            =   5520
      Top             =   2520
   End
   Begin VB.TextBox SendCMSTXT 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   315
      Left            =   120
      MaxLength       =   160
      MultiLine       =   -1  'True
      TabIndex        =   1
      TabStop         =   0   'False
      ToolTipText     =   "Chat"
      Top             =   8520
      Visible         =   0   'False
      Width           =   8250
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   6120
      Top             =   2520
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Timer Second 
      Enabled         =   0   'False
      Interval        =   1050
      Left            =   4920
      Top             =   2520
   End
   Begin VB.Timer SonidosMapas 
      Interval        =   20000
      Left            =   4200
      Top             =   2520
   End
   Begin RichTextLib.RichTextBox RecTxt 
      Height          =   1485
      Left            =   150
      TabIndex        =   0
      TabStop         =   0   'False
      ToolTipText     =   "Mensajes del servidor"
      Top             =   300
      Width           =   6660
      _ExtentX        =   11748
      _ExtentY        =   2619
      _Version        =   393217
      BackColor       =   0
      ReadOnly        =   -1  'True
      ScrollBars      =   2
      DisableNoScroll =   -1  'True
      TextRTF         =   $"frmMain.frx":3B069
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.ListBox hlst 
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   2595
      Left            =   8880
      TabIndex        =   17
      TabStop         =   0   'False
      Top             =   2400
      Visible         =   0   'False
      Width           =   2565
   End
   Begin VB.PictureBox MainViewPic 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Height          =   6240
      Left            =   180
      MousePointer    =   99  'Custom
      ScaleHeight     =   416
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   544
      TabIndex        =   32
      Top             =   2220
      Width           =   8160
   End
   Begin AOLibre.uAOButton imgMapa 
      Height          =   255
      Left            =   10320
      TabIndex        =   30
      Top             =   6600
      Width           =   1335
      _ExtentX        =   2355
      _ExtentY        =   450
      TX              =   "Mapa"
      ENAB            =   -1  'True
      FCOL            =   7314354
      OCOL            =   16777215
      PICE            =   "frmMain.frx":3B0E9
      PICF            =   "frmMain.frx":3BB13
      PICH            =   "frmMain.frx":3C7D5
      PICV            =   "frmMain.frx":3D767
      BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Calibri"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin AOLibre.uAOButton imgGrupo 
      Height          =   255
      Left            =   10320
      TabIndex        =   33
      Top             =   6960
      Width           =   1335
      _ExtentX        =   2355
      _ExtentY        =   450
      TX              =   "Grupo"
      ENAB            =   -1  'True
      FCOL            =   7314354
      OCOL            =   16777215
      PICE            =   "frmMain.frx":3E669
      PICF            =   "frmMain.frx":3F093
      PICH            =   "frmMain.frx":3FD55
      PICV            =   "frmMain.frx":40CE7
      BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Calibri"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin AOLibre.uAOButton imgOpciones 
      Height          =   255
      Left            =   10320
      TabIndex        =   34
      Top             =   7320
      Width           =   1335
      _ExtentX        =   2355
      _ExtentY        =   450
      TX              =   "Opciones"
      ENAB            =   -1  'True
      FCOL            =   7314354
      OCOL            =   16777215
      PICE            =   "frmMain.frx":41BE9
      PICF            =   "frmMain.frx":42613
      PICH            =   "frmMain.frx":432D5
      PICV            =   "frmMain.frx":44267
      BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Calibri"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin AOLibre.uAOButton imgEstadisticas 
      Height          =   255
      Left            =   10320
      TabIndex        =   35
      Top             =   7680
      Width           =   1335
      _ExtentX        =   2355
      _ExtentY        =   450
      TX              =   "Estadisticas"
      ENAB            =   -1  'True
      FCOL            =   7314354
      OCOL            =   16777215
      PICE            =   "frmMain.frx":45169
      PICF            =   "frmMain.frx":45B93
      PICH            =   "frmMain.frx":46855
      PICV            =   "frmMain.frx":477E7
      BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Calibri"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin AOLibre.uAOButton imgClanes 
      Height          =   255
      Left            =   10320
      TabIndex        =   36
      Top             =   8040
      Width           =   1335
      _ExtentX        =   2355
      _ExtentY        =   450
      TX              =   "Clanes"
      ENAB            =   -1  'True
      FCOL            =   7314354
      OCOL            =   16777215
      PICE            =   "frmMain.frx":486E9
      PICF            =   "frmMain.frx":49113
      PICH            =   "frmMain.frx":49DD5
      PICV            =   "frmMain.frx":4AD67
      BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Calibri"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin AOLibre.uAOButton Label4 
      Height          =   375
      Left            =   8880
      TabIndex        =   37
      Top             =   2040
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   661
      TX              =   "Inventario"
      ENAB            =   -1  'True
      FCOL            =   7314354
      OCOL            =   16777215
      PICE            =   "frmMain.frx":4BC69
      PICF            =   "frmMain.frx":4C693
      PICH            =   "frmMain.frx":4D355
      PICV            =   "frmMain.frx":4E2E7
      BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Calibri"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin AOLibre.uAOButton Label7 
      Height          =   375
      Left            =   10200
      TabIndex        =   38
      Top             =   2040
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   661
      TX              =   "Hechizos"
      ENAB            =   -1  'True
      FCOL            =   7314354
      OCOL            =   16777215
      PICE            =   "frmMain.frx":4F1E9
      PICF            =   "frmMain.frx":4FC13
      PICH            =   "frmMain.frx":508D5
      PICV            =   "frmMain.frx":51867
      BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Calibri"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin AOLibre.uAOButton CmdLanzar 
      Height          =   495
      Left            =   8760
      TabIndex        =   39
      Top             =   5280
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   873
      TX              =   "Lanzar"
      ENAB            =   -1  'True
      FCOL            =   7314354
      OCOL            =   16777215
      PICE            =   "frmMain.frx":52769
      PICF            =   "frmMain.frx":53193
      PICH            =   "frmMain.frx":53E55
      PICV            =   "frmMain.frx":54DE7
      BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Calibri"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin AOLibre.uAOButton cmdInfo 
      Height          =   495
      Left            =   10560
      TabIndex        =   40
      Top             =   5280
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   873
      TX              =   "Info"
      ENAB            =   -1  'True
      FCOL            =   7314354
      OCOL            =   16777215
      PICE            =   "frmMain.frx":55CE9
      PICF            =   "frmMain.frx":56713
      PICH            =   "frmMain.frx":573D5
      PICV            =   "frmMain.frx":58367
      BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Calibri"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Image imgAsignarSkill 
      Height          =   450
      Left            =   9975
      MousePointer    =   99  'Custom
      Top             =   690
      Width           =   450
   End
   Begin VB.Label lblDropGold 
      BackStyle       =   0  'Transparent
      Height          =   255
      Left            =   10560
      MousePointer    =   99  'Custom
      TabIndex        =   29
      Top             =   6240
      Width           =   255
   End
   Begin VB.Label lblMinimizar 
      BackStyle       =   0  'Transparent
      Height          =   255
      Left            =   11280
      MousePointer    =   99  'Custom
      TabIndex        =   28
      Top             =   60
      Width           =   255
   End
   Begin VB.Label lblCerrar 
      BackStyle       =   0  'Transparent
      Height          =   255
      Left            =   11550
      MousePointer    =   99  'Custom
      TabIndex        =   27
      Top             =   60
      Width           =   255
   End
   Begin VB.Label lblFPS 
      BackStyle       =   0  'Transparent
      Caption         =   "101"
      ForeColor       =   &H00FFFFFF&
      Height          =   180
      Left            =   6660
      TabIndex        =   24
      Top             =   60
      Width           =   555
   End
   Begin VB.Image imgInvScrollDown 
      Height          =   795
      Left            =   10020
      Top             =   5595
      Visible         =   0   'False
      Width           =   420
   End
   Begin VB.Image imgInvScrollUp 
      Height          =   825
      Left            =   10005
      Top             =   4560
      Visible         =   0   'False
      Width           =   420
   End
   Begin VB.Label lblMapName 
      BackStyle       =   0  'Transparent
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Left            =   8700
      TabIndex        =   23
      Top             =   8445
      Visible         =   0   'False
      Width           =   1935
   End
   Begin VB.Image cmdMoverHechi 
      Height          =   240
      Index           =   0
      Left            =   11430
      MouseIcon       =   "frmMain.frx":59269
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":593BB
      Top             =   3480
      Visible         =   0   'False
      Width           =   225
   End
   Begin VB.Image cmdMoverHechi 
      Height          =   240
      Index           =   1
      Left            =   11430
      MouseIcon       =   "frmMain.frx":596FF
      MousePointer    =   99  'Custom
      Picture         =   "frmMain.frx":59851
      Top             =   3225
      Visible         =   0   'False
      Width           =   225
   End
   Begin VB.Image xz 
      Height          =   255
      Index           =   0
      Left            =   11400
      Top             =   0
      Width           =   255
   End
   Begin VB.Image xzz 
      Height          =   195
      Index           =   1
      Left            =   11445
      Top             =   0
      Width           =   225
   End
   Begin VB.Label lblName 
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   195
      Left            =   8760
      TabIndex        =   22
      Top             =   360
      Width           =   2625
   End
   Begin VB.Label lblLvl 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "255"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   225
      Left            =   9825
      TabIndex        =   21
      Top             =   1140
      Width           =   270
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "Nivel"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   225
      Left            =   9225
      TabIndex        =   20
      Top             =   1140
      Width           =   465
   End
   Begin VB.Label lblPorcLvl 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "33.33%"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   225
      Left            =   10320
      TabIndex        =   19
      Top             =   1140
      Width           =   555
   End
   Begin VB.Label lblExp 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Exp: 999999999/99999999"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   225
      Left            =   9225
      TabIndex        =   18
      Top             =   1500
      Width           =   2010
   End
   Begin VB.Label GldLbl 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   210
      Left            =   10920
      TabIndex        =   15
      Top             =   6270
      Width           =   90
   End
   Begin VB.Label lblStrg 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "00"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   210
      Left            =   9720
      TabIndex        =   9
      Top             =   6225
      Width           =   210
   End
   Begin VB.Label lblDext 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "00"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   210
      Left            =   9120
      TabIndex        =   8
      Top             =   6225
      Width           =   210
   End
   Begin VB.Label Coord 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "000 X:00 Y: 00"
      BeginProperty Font 
         Name            =   "Terminal"
         Size            =   6
         Charset         =   255
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Left            =   8700
      TabIndex        =   7
      Top             =   8670
      Width           =   1335
   End
   Begin VB.Label lblWeapon 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "000/000"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   6960
      TabIndex        =   6
      Top             =   8640
      Width           =   855
   End
   Begin VB.Label lblShielder 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "00/00"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   5130
      TabIndex        =   5
      Top             =   8640
      Width           =   855
   End
   Begin VB.Label lblHelm 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "00/00"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   2940
      TabIndex        =   4
      Top             =   8640
      Width           =   855
   End
   Begin VB.Label lblArmor 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "00/00"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   1170
      TabIndex        =   3
      Top             =   8640
      Width           =   855
   End
   Begin VB.Image imgScroll 
      Height          =   240
      Index           =   1000
      Left            =   11400
      MousePointer    =   99  'Custom
      Top             =   3225
      Width           =   225
   End
   Begin VB.Image InvEqu 
      Height          =   4230
      Left            =   8715
      Top             =   1875
      Width           =   2970
   End
   Begin VB.Label lblMana 
      Alignment       =   2  'Center
      BackColor       =   &H00C0C000&
      BackStyle       =   0  'Transparent
      Caption         =   "9999/9999"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   180
      Left            =   8760
      TabIndex        =   11
      Top             =   7140
      Width           =   1095
   End
   Begin VB.Label lblEnergia 
      Alignment       =   2  'Center
      BackColor       =   &H0000C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "999/999"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   180
      Left            =   8760
      TabIndex        =   10
      Top             =   6780
      Width           =   1095
   End
   Begin VB.Label lblVida 
      Alignment       =   2  'Center
      BackColor       =   &H000000FF&
      BackStyle       =   0  'Transparent
      Caption         =   "999/999"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   180
      Left            =   8760
      TabIndex        =   12
      Top             =   7455
      Width           =   1095
   End
   Begin VB.Label lblHambre 
      Alignment       =   2  'Center
      BackColor       =   &H00004000&
      BackStyle       =   0  'Transparent
      Caption         =   "999/999"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   180
      Left            =   8760
      TabIndex        =   13
      Top             =   7800
      Width           =   1095
   End
   Begin VB.Label lblSed 
      Alignment       =   2  'Center
      BackColor       =   &H00400000&
      BackStyle       =   0  'Transparent
      Caption         =   "999/999"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   180
      Left            =   8760
      TabIndex        =   14
      Top             =   8130
      Width           =   1095
   End
   Begin VB.Shape shpEnergia 
      FillStyle       =   0  'Solid
      Height          =   180
      Left            =   8760
      Top             =   6795
      Width           =   1125
   End
   Begin VB.Shape shpMana 
      FillStyle       =   0  'Solid
      Height          =   180
      Left            =   8760
      Top             =   7155
      Width           =   1125
   End
   Begin VB.Shape shpVida 
      FillStyle       =   0  'Solid
      Height          =   180
      Left            =   8760
      Top             =   7470
      Width           =   1125
   End
   Begin VB.Shape shpHambre 
      FillStyle       =   0  'Solid
      Height          =   180
      Left            =   8760
      Top             =   7815
      Width           =   1125
   End
   Begin VB.Shape shpSed 
      FillStyle       =   0  'Solid
      Height          =   180
      Left            =   8760
      Top             =   8160
      Width           =   1125
   End
   Begin VB.Menu mnuObj 
      Caption         =   "Objeto"
      Visible         =   0   'False
      Begin VB.Menu mnuTirar 
         Caption         =   "Tirar"
      End
      Begin VB.Menu mnuUsar 
         Caption         =   "Usar"
      End
      Begin VB.Menu mnuEquipar 
         Caption         =   "Equipar"
      End
   End
   Begin VB.Menu mnuNpc 
      Caption         =   "NPC"
      Visible         =   0   'False
      Begin VB.Menu mnuNpcDesc 
         Caption         =   "Descripcion"
      End
      Begin VB.Menu mnuNpcComerciar 
         Caption         =   "Comerciar"
         Visible         =   0   'False
      End
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'--------------------------------------------------------------------------------
'    Component  : frmMain
'    Project    : ARGENTUM
'
'    Description: [type_description_here]
'
'    Modified   :
'--------------------------------------------------------------------------------
'Argentum Online 0.11.6
'
'Copyright (C) 2002 Marquez Pablo Ignacio
'Copyright (C) 2002 Otto Perez
'Copyright (C) 2002 Aaron Perkins
'Copyright (C) 2002 Matias Fernando Pequeno
'
'This program is free software; you can redistribute it and/or modify
'it under the terms of the Affero General Public License;
'either version 1 of the License, or any later version.
'
'This program is distributed in the hope that it will be useful,
'but WITHOUT ANY WARRANTY; without even the implied warranty of
'MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
'Affero General Public License for more details.
'
'You should have received a copy of the Affero General Public License
'along with this program; if not, you can find it at http://www.affero.org/oagpl.html
'
'Argentum Online is based on Baronsoft's VB6 Online RPG
'You can contact the original creator of ORE at aaron@baronsoft.com
'for more information about ORE please visit http://www.baronsoft.com/
'
'
'You can contact me at:
'morgolock@speedy.com.ar
'www.geocities.com/gmorgolock
'Calle 3 numero 983 piso 7 dto A
'La Plata - Pcia, Buenos Aires - Republica Argentina
'Codigo Postal 1900
'Pablo Ignacio Marquez

Option Explicit

Public tX As Byte
Public tY As Byte
Public MouseX As Long
Public MouseY As Long
Public MouseBoton As Long
Public MouseShift As Long
Private clicX As Long
Private clicY As Long

Public IsPlaying As Byte

Private clsFormulario As clsFormMovementManager

Private cBotonDiamArriba As clsGraphicalButton
Private cBotonDiamAbajo As clsGraphicalButton
Private cBotonAsignarSkill As clsGraphicalButton

Public LastButtonPressed As clsGraphicalButton

Public picSkillStar As Picture

Public WithEvents dragInventory As clsGrapchicalInventory
Attribute dragInventory.VB_VarHelpID = -1

Public WithEvents Client As clsSocket
Attribute Client.VB_VarHelpID = -1

Private ChangeHechi As Boolean, ChangeHechiNum As Integer

'Usado para controlar que no se dispare el binding de la tecla CTRL cuando se usa CTRL+Tecla.
Dim CtrlMaskOn As Boolean
Dim SkinSeleccionado As String

Public Sub dragInventory_dragDone(ByVal originalSlot As Integer, ByVal newSlot As Integer)
Call Protocol.WriteMoveItem(originalSlot, newSlot, eMoveType.Inventory)
End Sub

Private Sub Form_Load()
    SkinSeleccionado = GetVar(path(INIT) & "Config.ini", "Parameters", "SkinSelected")
    
    If Not ResolucionCambiada Then
        ' Handles Form movement (drag and drop).
        Set clsFormulario = New clsFormMovementManager
        clsFormulario.Initialize Me, 120
    End If
    
    InvEqu.Picture = LoadPicture(path(Graficos) & "Skins\" & SkinSeleccionado & "\CentroInventario.jpg")
    
    Call LoadButtons
    
    Set dragInventory = Inventario
    
    With Me
        .Picture = LoadPicture(path(Graficos) & "Skins\" & SkinSeleccionado & "\VentanaPrincipal.JPG")
        .Left = 0
        .Top = 0
        .Width = 12000
        .Height = 9000
        .Label6 = JsonLanguage.Item("NIVEL").Item("TEXTO") & ": "
    End With
    
    ' Detect links in console
    EnableURLDetect RecTxt.hWnd, Me.hWnd
    
    CtrlMaskOn = False
End Sub

Private Sub LoadButtons()
    Dim i As Integer

    Set cBotonDiamArriba = New clsGraphicalButton
    Set cBotonDiamAbajo = New clsGraphicalButton
    Set cBotonAsignarSkill = New clsGraphicalButton

    Set LastButtonPressed = New clsGraphicalButton
    
    
    Call cBotonDiamArriba.Initialize(imgInvScrollUp, "", _
                                    path(Graficos) & "Skins\" & SkinSeleccionado & "\BotonDiamArribaF.bmp", _
                                    path(Graficos) & "Skins\" & SkinSeleccionado & "\BotonDiamArribaF.bmp", Me)

    Call cBotonDiamAbajo.Initialize(imgInvScrollDown, "", _
                                    path(Graficos) & "Skins\" & SkinSeleccionado & "\BotonDiamAbajoF.bmp", _
                                    path(Graficos) & "Skins\" & SkinSeleccionado & "\BotonDiamAbajoF.bmp", Me)

    Set picSkillStar = LoadPicture(path(Graficos) & "Skins\" & SkinSeleccionado & "\BotonAsignarSkills.bmp")

    If SkillPoints > 0 Then imgAsignarSkill.Picture = picSkillStar
    
    imgAsignarSkill.MouseIcon = picMouseIcon
    lblDropGold.MouseIcon = picMouseIcon
    lblCerrar.MouseIcon = picMouseIcon
    lblMinimizar.MouseIcon = picMouseIcon
    
    For i = 0 To 2
        picSM(i).MouseIcon = picMouseIcon
    Next i
End Sub

Public Sub LightSkillStar(ByVal bTurnOn As Boolean)
    If bTurnOn Then
        imgAsignarSkill.Picture = picSkillStar
    Else
        Set imgAsignarSkill.Picture = Nothing
    End If
End Sub

Private Sub cmdMoverHechi_Click(index As Integer)
    If hlst.Visible = True Then
        If hlst.ListIndex = -1 Then Exit Sub
        Dim sTemp As String
    
        Select Case index
            Case 1 'subir
                If hlst.ListIndex = 0 Then Exit Sub
            Case 0 'bajar
                If hlst.ListIndex = hlst.ListCount - 1 Then Exit Sub
        End Select
    
        Call WriteMoveSpell(index = 1, hlst.ListIndex + 1)
        
        Select Case index
            Case 1 'subir
                sTemp = hlst.List(hlst.ListIndex - 1)
                hlst.List(hlst.ListIndex - 1) = hlst.List(hlst.ListIndex)
                hlst.List(hlst.ListIndex) = sTemp
                hlst.ListIndex = hlst.ListIndex - 1
            Case 0 'bajar
                sTemp = hlst.List(hlst.ListIndex + 1)
                hlst.List(hlst.ListIndex + 1) = hlst.List(hlst.ListIndex)
                hlst.List(hlst.ListIndex) = sTemp
                hlst.ListIndex = hlst.ListIndex + 1
        End Select
    End If
End Sub
Public Sub ControlSM(ByVal index As Byte, ByVal Mostrar As Boolean)
Dim GrhIndex As Long
Dim SR As RECT
Dim DR As RECT

GrhIndex = GRH_INI_SM + index + SM_CANT * (CInt(Mostrar) + 1)

With GrhData(GrhIndex)
    SR.Left = .SX
    SR.Right = SR.Left + .pixelWidth
    SR.Top = .SY
    SR.Bottom = SR.Top + .pixelHeight
    
    DR.Left = 0
    DR.Right = .pixelWidth
    DR.Top = 0
    DR.Bottom = .pixelHeight
End With

Call DrawGrhtoHdc(picSM(index).hDC, GrhIndex, SR, DR)
picSM(index).Refresh

Select Case index
    Case eSMType.sResucitation
        If Mostrar Then
            Call AddtoRichTextBox(frmMain.RecTxt, _
                                    JsonLanguage.Item("MENSAJE_SEGURO_RESU_ON").Item("TEXTO"), _
                                    JsonLanguage.Item("MENSAJE_SEGURO_RESU_ON").Item("COLOR").Item(1), _
                                    JsonLanguage.Item("MENSAJE_SEGURO_RESU_ON").Item("COLOR").Item(1), _
                                    JsonLanguage.Item("MENSAJE_SEGURO_RESU_ON").Item("COLOR").Item(1), _
                                    True, False, True)
                                    
            picSM(index).ToolTipText = JsonLanguage.Item("MENSAJE_SEGURO_RESU_ON").Item("TEXTO")
        Else
            Call AddtoRichTextBox(frmMain.RecTxt, _
                                    JsonLanguage.Item("MENSAJE_SEGURO_RESU_OFF").Item("TEXTO"), _
                                    JsonLanguage.Item("MENSAJE_SEGURO_RESU_OFF").Item("COLOR").Item(1), _
                                    JsonLanguage.Item("MENSAJE_SEGURO_RESU_OFF").Item("COLOR").Item(2), _
                                    JsonLanguage.Item("MENSAJE_SEGURO_RESU_OFF").Item("COLOR").Item(3), _
                                    True, False, True)
                                    
            picSM(index).ToolTipText = JsonLanguage.Item("MENSAJE_SEGURO_RESU_ON").Item("TEXTO")
        End If
        
    Case eSMType.sSafemode
        If Mostrar Then
            Call AddtoRichTextBox(frmMain.RecTxt, _
                                    UCase$(JsonLanguage.Item("MENSAJE_SEGURO_ACTIVADO").Item("TEXTO").Item(1)), _
                                    JsonLanguage.Item("MENSAJE_SEGURO_ACTIVADO").Item("COLOR").Item(1), _
                                    JsonLanguage.Item("MENSAJE_SEGURO_ACTIVADO").Item("COLOR").Item(2), _
                                    JsonLanguage.Item("MENSAJE_SEGURO_ACTIVADO").Item("COLOR").Item(3), _
                                    True, False, True)
                                    
            picSM(index).ToolTipText = JsonLanguage.Item("MENSAJE_SEGURO_ACTIVADO").Item("TEXTO").Item(2)
        Else
            Call AddtoRichTextBox(frmMain.RecTxt, _
                                    UCase$(JsonLanguage.Item("MENSAJE_SEGURO_DESACTIVADO").Item("TEXTO").Item(1)), _
                                    JsonLanguage.Item("MENSAJE_SEGURO_DESACTIVADO").Item("COLOR").Item(1), _
                                    JsonLanguage.Item("MENSAJE_SEGURO_DESACTIVADO").Item("COLOR").Item(2), _
                                    JsonLanguage.Item("MENSAJE_SEGURO_DESACTIVADO").Item("COLOR").Item(3), _
                                    True, False, True)
                                    
            picSM(index).ToolTipText = JsonLanguage.Item("MENSAJE_SEGURO_DESACTIVADO").Item("TEXTO").Item(2)
        End If
        
    Case eSMType.mWork
        If Mostrar Then
            picSM(index).ToolTipText = JsonLanguage.Item("MENSAJE_MACRO_ACTIVADO").Item("TEXTO")
        Else
            picSM(index).ToolTipText = JsonLanguage.Item("MENSAJE_MACRO_DESACTIVADO").Item("TEXTO")
        End If
End Select

SMStatus(index) = Mostrar
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
'***************************************************
'Autor: Unknown
'Last Modification: 18/11/2010
'18/11/2009: ZaMa - Ahora se pueden poner comandos en los mensajes personalizados (execpto guildchat y privados)
'18/11/2010: Amraphen - Agregue el handle correspondiente para las nuevas configuraciones de teclas (CTRL+0..9).
'***************************************************
    
    If (Not SendTxt.Visible) And (Not SendCMSTXT.Visible) Then
    
        'Verificamos si se esta presionando la tecla CTRL.
        If Shift = 2 Then
            If KeyCode >= vbKey0 And KeyCode <= vbKey9 Then
                If KeyCode = vbKey0 Then
                    'Si es CTRL+0 muestro la ventana de configuracion de teclas.
                    Call frmCustomKeys.Show(vbModal, Me)
                    
                ElseIf KeyCode >= vbKey1 And KeyCode <= vbKey9 Then
                    'Si es CTRL+1..9 cambio la configuracion.
                    If KeyCode - vbKey0 = CustomKeys.CurrentConfig Then Exit Sub
                    
                    CustomKeys.CurrentConfig = KeyCode - vbKey0
                    
                    Dim sMsg As String
                        sMsg = JsonLanguage.Item("CUSTOMKEYS_CONFIG_CARGADA").Item("TEXTO")
                        
                    If CustomKeys.CurrentConfig = 0 Then
                        sMsg = Replace$(sMsg, "VAR_CONFIG_ELEGIDA", JsonLanguage.Item("PREDETERMINADA").Item("TEXTO"))
                    Else
                        sMsg = Replace$(sMsg, "VAR_CONFIG_ELEGIDA", JsonLanguage.Item("PERSONALIZADA").Item("TEXTO"))
                        sMsg = Replace$(sMsg, "VAR_CONFIG_CUSTOM_NUMERO", CStr(CustomKeys.CurrentConfig))
                    End If

                    Call ShowConsoleMsg(sMsg, _
                                        JsonLanguage.Item("CUSTOMKEYS_CONFIG_CARGADA").Item("COLOR").Item(1), _
                                        JsonLanguage.Item("CUSTOMKEYS_CONFIG_CARGADA").Item("COLOR").Item(2), _
                                        JsonLanguage.Item("CUSTOMKEYS_CONFIG_CARGADA").Item("COLOR").Item(3), _
                                        True)
                End If
                
                CtrlMaskOn = True
                Exit Sub
            End If
        End If
        
        If KeyCode = vbKeyControl Then
            'Chequeo que no se haya usado un CTRL + tecla antes de disparar las bindings.
            If CtrlMaskOn Then
                CtrlMaskOn = False
                Exit Sub
            End If
        End If
        
        'Checks if the key is valid
        If LenB(CustomKeys.ReadableName(KeyCode)) > 0 Then
            Select Case KeyCode
                Case CustomKeys.BindedKey(eKeyType.mKeyToggleMusic)
                    Audio.MusicActivated = Not Audio.MusicActivated
                    
                Case CustomKeys.BindedKey(eKeyType.mKeyToggleSound)
                    Audio.SoundActivated = Not Audio.SoundActivated
                    
                Case CustomKeys.BindedKey(eKeyType.mKeyToggleFxs)
                    Audio.SoundEffectsActivated = Not Audio.SoundEffectsActivated
                
                Case CustomKeys.BindedKey(eKeyType.mKeyGetObject)
                    Call AgarrarItem
                
                Case CustomKeys.BindedKey(eKeyType.mKeyEquipObject)
                    Call EquiparItem
                
                Case CustomKeys.BindedKey(eKeyType.mKeyToggleNames)
                    Nombres = Not Nombres
                
                Case CustomKeys.BindedKey(eKeyType.mKeyTamAnimal)
                    If UserEstado = 1 Then
                        With FontTypes(FontTypeNames.FONTTYPE_INFO)
                            Call ShowConsoleMsg(JsonLanguage.Item("MENSAJE_USER_MUERTO").Item("TEXTO").Item(1), .Red, .Green, .Blue, .bold, .italic)
                        End With
                    Else
                        Call WriteWork(eSkill.Domar)
                    End If
                    
                Case CustomKeys.BindedKey(eKeyType.mKeySteal)
                    If UserEstado = 1 Then
                        With FontTypes(FontTypeNames.FONTTYPE_INFO)
                            Call ShowConsoleMsg(JsonLanguage.Item("MENSAJE_USER_MUERTO").Item("TEXTO").Item(1), .Red, .Green, .Blue, .bold, .italic)
                        End With
                    Else
                        Call WriteWork(eSkill.Robar)
                    End If
                    
                Case CustomKeys.BindedKey(eKeyType.mKeyHide)
                    If UserEstado = 1 Then
                        With FontTypes(FontTypeNames.FONTTYPE_INFO)
                            Call ShowConsoleMsg(JsonLanguage.Item("MENSAJE_USER_MUERTO").Item("TEXTO").Item(1), .Red, .Green, .Blue, .bold, .italic)
                        End With
                    Else
                        Call WriteWork(eSkill.Ocultarse)
                    End If
                                    
                Case CustomKeys.BindedKey(eKeyType.mKeyDropObject)
                    Call TirarItem
                
                Case CustomKeys.BindedKey(eKeyType.mKeyUseObject)
                    If macrotrabajo.Enabled Then Call DesactivarMacroTrabajo
                        
                    If MainTimer.Check(TimersIndex.UseItemWithU) Then
                        Call UsarItem
                    End If
                
                Case CustomKeys.BindedKey(eKeyType.mKeyRequestRefresh)
                    If MainTimer.Check(TimersIndex.SendRPU) Then
                        Call WriteRequestPositionUpdate
                        Beep
                    End If
                Case CustomKeys.BindedKey(eKeyType.mKeyToggleSafeMode)
                    Call WriteSafeToggle

                Case CustomKeys.BindedKey(eKeyType.mKeyToggleResuscitationSafe)
                    Call WriteResuscitationToggle
            End Select
        Else
            
            'Evito que se muestren los mensajes personalizados cuando se cambie una configuracion de teclas.
            If Shift = 2 Then Exit Sub
            
            Select Case KeyCode
                'Custom messages!
                Case vbKey0 To vbKey9
                    Dim CustomMessage As String
                    
                    CustomMessage = CustomMessages.Message((KeyCode - 39) Mod 10)
                    If LenB(CustomMessage) <> 0 Then
                        ' No se pueden mandar mensajes personalizados de clan o privado!
                        If UCase$(Left$(CustomMessage, 5)) <> "/CMSG" And _
                            Left$(CustomMessage, 1) <> "\" Then
                            
                            Call ParseUserCommand(CustomMessage)
                        End If
                    End If
            End Select
        End If
    End If
    
    Select Case KeyCode
        Case CustomKeys.BindedKey(eKeyType.mKeyTalkWithGuild)
            If SendTxt.Visible Then Exit Sub
            
            If (Not Comerciando) And (Not MirandoAsignarSkills) And _
              (Not frmMSG.Visible) And (Not MirandoForo) And _
              (Not frmEstadisticas.Visible) And (Not frmCantidad.Visible) Then
                SendCMSTXT.Visible = True
                SendCMSTXT.SetFocus
            End If
        
        Case CustomKeys.BindedKey(eKeyType.mKeyTakeScreenShot)
            Call ScreenCapture
                
        Case CustomKeys.BindedKey(eKeyType.mKeyShowOptions)
            Call frmOpciones.Show(vbModeless, frmMain)
        
        Case CustomKeys.BindedKey(eKeyType.mKeyMeditate)
            If UserMinMAN = UserMaxMAN Then Exit Sub
            
            If UserEstado = 1 Then
                With FontTypes(FontTypeNames.FONTTYPE_INFO)
                    Call ShowConsoleMsg(JsonLanguage.Item("MENSAJE_USER_MUERTO").Item("TEXTO").Item(1), .Red, .Green, .Blue, .bold, .italic)
                End With
                Exit Sub
            End If
            
            Call WriteMeditate

        
        Case CustomKeys.BindedKey(eKeyType.mKeyCastSpellMacro)
        
        Case CustomKeys.BindedKey(eKeyType.mKeyWorkMacro)
            If UserEstado = 1 Then
                With FontTypes(FontTypeNames.FONTTYPE_INFO)
                    Call ShowConsoleMsg(JsonLanguage.Item("MENSAJE_USER_MUERTO").Item("TEXTO").Item(1), .Red, .Green, .Blue, .bold, .italic)
                End With
                Exit Sub
            End If
            
            If macrotrabajo.Enabled Then
                Call DesactivarMacroTrabajo
            Else
                Call ActivarMacroTrabajo
            End If
        
        Case CustomKeys.BindedKey(eKeyType.mKeyExitGame)
            If frmMain.macrotrabajo.Enabled Then Call DesactivarMacroTrabajo
            Call WriteQuit
            
        Case CustomKeys.BindedKey(eKeyType.mKeyAttack)
            If Shift <> 0 Then Exit Sub
            
            If Not MainTimer.Check(TimersIndex.Arrows, False) Then Exit Sub 'Check if arrows interval has finished.
            If Not MainTimer.Check(TimersIndex.CastSpell, False) Then 'Check if spells interval has finished.
                If Not MainTimer.Check(TimersIndex.CastAttack) Then Exit Sub 'Corto intervalo Golpe-Hechizo
            Else
                If Not MainTimer.Check(TimersIndex.Attack) Or UserDescansar Or UserMeditar Then Exit Sub
            End If
            
            If macrotrabajo.Enabled Then Call DesactivarMacroTrabajo
            
            If frmCustomKeys.Visible Then Exit Sub 'Chequeo si esta visible la ventana de configuracion de teclas.
            
            Call WriteAttack
            
        Case CustomKeys.BindedKey(eKeyType.mKeyTalk)
            If SendCMSTXT.Visible Then Exit Sub
            
            If (Not Comerciando) And (Not MirandoAsignarSkills) And _
              (Not frmMSG.Visible) And (Not MirandoForo) And _
              (Not frmEstadisticas.Visible) And (Not frmCantidad.Visible) Then
                SendTxt.Visible = True
                SendTxt.SetFocus
            End If
            
    End Select
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
    MouseBoton = Button
    MouseShift = Shift
End Sub

Private Sub Form_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
    clicX = x
    clicY = y
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    If prgRun = True Then
        prgRun = False
        Cancel = 1
    End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
    DisableURLDetect
End Sub

Private Sub imgAsignarSkill_Click()
    Dim i As Integer
    
    LlegaronSkills = False
    Call WriteRequestSkills
    Call FlushBuffer
    
    Do While Not LlegaronSkills
        DoEvents 'esperamos a que lleguen y mantenemos la interfaz viva
    Loop
    LlegaronSkills = False
    
    For i = 1 To NUMSKILLS
        frmSkills3.Text1(i).Caption = UserSkills(i)
    Next i
    
    Alocados = SkillPoints
    frmSkills3.puntos.Caption = SkillPoints
    frmSkills3.Show , frmMain

End Sub

Private Sub imgClanes_Click()
    If frmGuildLeader.Visible Then Unload frmGuildLeader
    Call WriteRequestGuildLeaderInfo
End Sub

Private Sub imgEstadisticas_Click()
    LlegaronAtrib = False
    LlegaronSkills = False
    LlegoFama = False
    Call WriteRequestAtributes
    Call WriteRequestSkills
    Call WriteRequestMiniStats
    Call WriteRequestFame
    Call FlushBuffer
    Do While Not LlegaronSkills Or Not LlegaronAtrib Or Not LlegoFama
        DoEvents 'esperamos a que lleguen y mantenemos la interfaz viva
    Loop
    frmEstadisticas.Iniciar_Labels
    frmEstadisticas.Show , frmMain
    LlegaronAtrib = False
    LlegaronSkills = False
    LlegoFama = False
End Sub

Private Sub imgGrupo_Click()
    Call WriteRequestPartyForm
End Sub

Private Sub imgInvScrollDown_Click()
    Call Inventario.ScrollInventory(True)
End Sub

Private Sub imgInvScrollUp_Click()
    Call Inventario.ScrollInventory(False)
End Sub

Private Sub imgMapa_Click()
    Call frmMapa.Show(vbModeless, frmMain)
End Sub

Private Sub imgOpciones_Click()
    Call frmOpciones.Show(vbModeless, frmMain)
End Sub

Private Sub InvEqu_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    LastButtonPressed.ToggleToNormal
End Sub

Private Sub lblScroll_Click(index As Integer)
    Inventario.ScrollInventory (index = 0)
End Sub

Private Sub lblCerrar_Click()
    Call Audio.PlayWave(SND_CLICK)
    frmCerrar.Show vbModal
End Sub

Private Sub lblMinimizar_Click()
    Me.WindowState = 1
End Sub

Private Sub macrotrabajo_Timer()
    If Inventario.SelectedItem = 0 Then
        Call DesactivarMacroTrabajo
        Exit Sub
    End If
    
    'Macros are disabled if not using Argentum!
    'If Not Application.IsAppActive() Then  'Implemento lo propuesto por GD, se puede usar macro aun que se este en otra ventana
    '    Call DesactivarMacroTrabajo
    '    Exit Sub
    'End If
    
    If UsingSkill = eSkill.Pesca Or UsingSkill = eSkill.Talar Or UsingSkill = eSkill.Mineria Or _
                UsingSkill = FundirMetal Or (UsingSkill = eSkill.Herreria And Not MirandoHerreria) Then
        Call WriteWorkLeftClick(tX, tY, UsingSkill)
        UsingSkill = 0
    End If
    
    'If Inventario.OBJType(Inventario.SelectedItem) = eObjType.otWeapon Then
     If Not MirandoCarpinteria Then Call UsarItem
End Sub

Public Sub ActivarMacroTrabajo()
    macrotrabajo.Interval = INT_MACRO_TRABAJO
    macrotrabajo.Enabled = True
    Call AddtoRichTextBox(frmMain.RecTxt, JsonLanguage.Item("MENSAJE_MACRO_ACTIVADO").Item("TEXTO"), 0, 200, 200, False, True, True)
    Call ControlSM(eSMType.mWork, True)
End Sub

Public Sub DesactivarMacroTrabajo()
    macrotrabajo.Enabled = False
    MacroBltIndex = 0
    UsingSkill = 0
    MousePointer = vbDefault
    Call AddtoRichTextBox(frmMain.RecTxt, JsonLanguage.Item("MENSAJE_MACRO_DESACTIVADO").Item("TEXTO"), 0, 200, 200, False, True, True)
    Call ControlSM(eSMType.mWork, False)
End Sub

Private Sub mnuEquipar_Click()
    Call EquiparItem
End Sub

Private Sub mnuNPCComerciar_Click()
    Call WriteLeftClick(tX, tY)
    Call WriteCommerceStart
End Sub

Private Sub mnuNpcDesc_Click()
    Call WriteLeftClick(tX, tY)
End Sub

Private Sub mnuTirar_Click()
    Call TirarItem
End Sub

Private Sub mnuUsar_Click()
    Call UsarItem
End Sub

Private Sub PicMH_Click()
    Call AddtoRichTextBox(frmMain.RecTxt, _
                            JsonLanguage.Item("MENSAJE_AUTO_CAST_SPELL").Item("TEXTO"), _
                            JsonLanguage.Item("MENSAJE_AUTO_CAST_SPELL").Item("COLOR").Item(1), _
                            JsonLanguage.Item("MENSAJE_AUTO_CAST_SPELL").Item("COLOR").Item(2), _
                            JsonLanguage.Item("MENSAJE_AUTO_CAST_SPELL").Item("COLOR").Item(3), _
                            False, False, True)
End Sub

Private Sub Coord_Click()
    Call AddtoRichTextBox(frmMain.RecTxt, _
                            JsonLanguage.Item("MENSAJE_INFO_COORDENADAS").Item("TEXTO"), _
                            JsonLanguage.Item("MENSAJE_INFO_COORDENADAS").Item("COLOR").Item(1), _
                            JsonLanguage.Item("MENSAJE_INFO_COORDENADAS").Item("COLOR").Item(2), _
                            JsonLanguage.Item("MENSAJE_INFO_COORDENADAS").Item("COLOR").Item(3), _
                            False, False, True)
End Sub

Private Sub picSM_DblClick(index As Integer)
Select Case index
    Case eSMType.sResucitation
        Call WriteResuscitationToggle
        
    Case eSMType.sSafemode
        Call WriteSafeToggle
        
    Case eSMType.mWork
        If UserEstado = 1 Then
            With FontTypes(FontTypeNames.FONTTYPE_INFO)
                Call ShowConsoleMsg(JsonLanguage.Item("MENSAJE_USER_MUERTO").Item("TEXTO").Item(1), .Red, .Green, .Blue, .bold, .italic)
            End With
            Exit Sub
        End If
        
        If macrotrabajo.Enabled Then
            Call DesactivarMacroTrabajo
        Else
            Call ActivarMacroTrabajo
        End If
End Select
End Sub

Private Sub RecTxt_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    StartCheckingLinks
End Sub

Private Sub SendTxt_KeyDown(KeyCode As Integer, Shift As Integer)
    
    ' Control + Shift
    If Shift = 3 Then
        On Error GoTo ErrHandler
        
        ' Only allow numeric keys
        If KeyCode >= vbKey0 And KeyCode <= vbKey9 Then
            
            ' Get Msg Number
            Dim NroMsg As Integer
                NroMsg = KeyCode - vbKey0 - 1
            
            ' Pressed "0", so Msg Number is 9
            If NroMsg = -1 Then NroMsg = 9
            
            'Como es KeyDown, si mantenes _
             apretado el mensaje llena la consola
            If CustomMessages.Message(NroMsg) = SendTxt.Text Then
                Exit Sub
            End If
            
            CustomMessages.Message(NroMsg) = SendTxt.Text
            
            Dim MENSAJE_PERSONALIZADO As String
                MENSAJE_PERSONALIZADO = JsonLanguage.Item("MENSAJE_PERSONALIZADO").Item("TEXTO")
                MENSAJE_PERSONALIZADO = Replace$(MENSAJE_PERSONALIZADO, "VAR_MENSAJE", SendTxt.Text)
                MENSAJE_PERSONALIZADO = Replace$(MENSAJE_PERSONALIZADO, "VAR_MENSAJE_NUMERO", NroMsg + 1)
            
            With FontTypes(FontTypeNames.FONTTYPE_INFO)
                Call ShowConsoleMsg(MENSAJE_PERSONALIZADO, .Red, .Green, .Blue, .bold, .italic)
            End With
            
        End If
        
    End If
    
    Exit Sub
    
ErrHandler:
    'Did detected an invalid message??
    If Err.number = CustomMessages.InvalidMessageErrCode Then
        With FontTypes(FontTypeNames.FONTTYPE_INFO)
            Call ShowConsoleMsg(JsonLanguage.Item("MENSAJE_CUSTOM_INVALIDO").Item("TEXTO"), .Red, .Green, .Blue, .bold, .italic)
        End With
    End If
    
End Sub

Private Sub SendTxt_KeyUp(KeyCode As Integer, Shift As Integer)
    'Send text
    If KeyCode = vbKeyReturn Then
        If LenB(stxtbuffer) <> 0 Then Call ParseUserCommand(stxtbuffer)
        
        stxtbuffer = vbNullString
        SendTxt.Text = vbNullString
        KeyCode = 0
        SendTxt.Visible = False
        
        If PicInv.Visible Then
            PicInv.SetFocus
        Else
            hlst.SetFocus
        End If
    End If
End Sub


Private Sub Second_Timer()
    If Not DialogosClanes Is Nothing Then DialogosClanes.PassTimer
End Sub

'[END]'

''''''''''''''''''''''''''''''''''''''
'     ITEM CONTROL                   '
''''''''''''''''''''''''''''''''''''''

Private Sub TirarItem()
    If UserEstado = 1 Then
        With FontTypes(FontTypeNames.FONTTYPE_INFO)
            Call ShowConsoleMsg(JsonLanguage.Item("MENSAJE_USER_MUERTO").Item("TEXTO").Item(1), .Red, .Green, .Blue, .bold, .italic)
        End With
    Else
        If (Inventario.SelectedItem > 0 And Inventario.SelectedItem < MAX_INVENTORY_SLOTS + 1) Or (Inventario.SelectedItem = FLAGORO) Then
            If Inventario.Amount(Inventario.SelectedItem) = 1 Then
                Call WriteDrop(Inventario.SelectedItem, 1)
            Else
                If Inventario.Amount(Inventario.SelectedItem) > 1 Then
                    If Not Comerciando Then frmCantidad.Show , frmMain
                End If
            End If
        End If
    End If
End Sub

Private Sub AgarrarItem()
    If UserEstado = 1 Then
        With FontTypes(FontTypeNames.FONTTYPE_INFO)
            Call ShowConsoleMsg(JsonLanguage.Item("MENSAJE_USER_MUERTO").Item("TEXTO").Item(1), .Red, .Green, .Blue, .bold, .italic)
        End With
    Else
        Call WritePickUp
    End If
End Sub

Private Sub UsarItem()
    If pausa Then Exit Sub
    
    If Comerciando Then Exit Sub
    
    If (Inventario.SelectedItem > 0) And (Inventario.SelectedItem < MAX_INVENTORY_SLOTS + 1) Then _
        Call WriteUseItem(Inventario.SelectedItem)
End Sub

Private Sub EquiparItem()
    If UserEstado = 1 Then
        With FontTypes(FontTypeNames.FONTTYPE_INFO)
                Call ShowConsoleMsg(JsonLanguage.Item("MENSAJE_USER_MUERTO").Item("TEXTO").Item(1), .Red, .Green, .Blue, .bold, .italic)
        End With
    Else
        If Comerciando Then Exit Sub
        
        If (Inventario.SelectedItem > 0) And (Inventario.SelectedItem < MAX_INVENTORY_SLOTS + 1) Then _
        Call WriteEquipItem(Inventario.SelectedItem)
    End If
End Sub

Private Sub cmdLanzar_Click()
    If hlst.List(hlst.ListIndex) <> "(" & JsonLanguage.Item("NADA").Item("TEXTO") & ")" And MainTimer.Check(TimersIndex.Work, False) Then
        If UserEstado = 1 Then
            With FontTypes(FontTypeNames.FONTTYPE_INFO)
                Call ShowConsoleMsg(JsonLanguage.Item("MENSAJE_USER_MUERTO").Item("TEXTO").Item(1), .Red, .Green, .Blue, .bold, .italic)
            End With
        Else
            Call WriteCastSpell(hlst.ListIndex + 1)
            Call WriteWork(eSkill.Magia)
            UsaMacro = True
        End If
    End If
End Sub

Private Sub CmdLanzar_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    UsaMacro = False
    CnTd = 0
End Sub

Private Sub cmdINFO_Click()
    If hlst.ListIndex <> -1 Then
        Dim index As Integer
        index = DevolverIndexHechizo(hlst.List(hlst.ListIndex))
        Dim Msj As String
     
        If index <> 0 Then _
            Msj = "%%%%%%%%%%%% " & JsonLanguage.Item("MENSAJE_INFO_HECHIZOS").Item("TEXTO").Item(1) & " %%%%%%%%%%%%" & vbCrLf _
             & JsonLanguage.Item("MENSAJE_INFO_HECHIZOS").Item("TEXTO").Item(2) & ": " & Hechizos(index).Nombre & vbCrLf _
             & JsonLanguage.Item("MENSAJE_INFO_HECHIZOS").Item("TEXTO").Item(3) & ": " & Hechizos(index).Desc & vbCrLf _
             & JsonLanguage.Item("MENSAJE_INFO_HECHIZOS").Item("TEXTO").Item(4) & ": " & Hechizos(index).SkillRequerido & vbCrLf _
             & JsonLanguage.Item("MENSAJE_INFO_HECHIZOS").Item("TEXTO").Item(5) & ": " & Hechizos(index).ManaRequerida & vbCrLf _
             & JsonLanguage.Item("MENSAJE_INFO_HECHIZOS").Item("TEXTO").Item(6) & ": " & Hechizos(index).EnergiaRequerida & vbCrLf _
             & "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
                                             
        Call ShowConsoleMsg(Msj, _
                            JsonLanguage.Item("MENSAJE_INFO_HECHIZOS").Item("COLOR").Item(1), _
                            JsonLanguage.Item("MENSAJE_INFO_HECHIZOS").Item("COLOR").Item(2), _
                            JsonLanguage.Item("MENSAJE_INFO_HECHIZOS").Item("COLOR").Item(3))
        
    End If
End Sub

Private Sub DespInv_Click(index As Integer)
    Inventario.ScrollInventory (index = 0)
End Sub
Private Sub MainViewPic_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
    MouseBoton = Button
    MouseShift = Shift
End Sub

Private Sub MainViewPic_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    MouseX = x
    MouseY = y
End Sub

Private Sub MainViewPic_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
    clicX = x
    clicY = y
End Sub

Private Sub MainViewPic_DblClick()
'**************************************************************
'Author: Unknown
'Last Modify Date: 12/27/2007
'12/28/2007: ByVal - Chequea que la ventana de comercio y boveda no este abierta al hacer doble clic a un comerciante, sobrecarga la lista de items.
'**************************************************************
    If Not MirandoForo And Not Comerciando Then 'frmComerciar.Visible And Not frmBancoObj.Visible Then
        Call WriteDoubleClick(tX, tY)
    End If
End Sub

Private Sub SendTxt_Click()
    SendTxt.Tag = 0 ' GSZAO
End Sub

Private Sub MainViewPic_Click()
    If Cartel Then Cartel = False
    
    Dim MENSAJE_ADVERTENCIA As String
    Dim VAR_LANZANDO As String
    
    If Not Comerciando Then
        Call ConvertCPtoTP(MouseX, MouseY, tX, tY)
        
        If Not InGameArea() Then Exit Sub
        
        If MouseShift = 0 Then
            If MouseBoton <> vbRightButton Then
                '[ybarra]
                If UsaMacro Then
                    CnTd = CnTd + 1
                    If CnTd = 3 Then
                        Call WriteUseSpellMacro
                        CnTd = 0
                    End If
                    UsaMacro = False
                End If
                '[/ybarra]
                If UsingSkill = 0 Then
                    Call WriteLeftClick(tX, tY)
                Else
                
                    If macrotrabajo.Enabled Then Call DesactivarMacroTrabajo
                    
                    If Not MainTimer.Check(TimersIndex.Arrows, False) Then 'Check if arrows interval has finished.
                        frmMain.MousePointer = vbDefault
                        UsingSkill = 0
                        With FontTypes(FontTypeNames.FONTTYPE_TALK)
                            VAR_LANZANDO = JsonLanguage.Item("PROYECTILES").Item("TEXTO")
                            MENSAJE_ADVERTENCIA = JsonLanguage.Item("MENSAJE_MACRO_ADVERTENCIA").Item("TEXTO")
                            MENSAJE_ADVERTENCIA = Replace$(MENSAJE_ADVERTENCIA, "VAR_LANZADO", VAR_LANZANDO)
                            
                            Call AddtoRichTextBox(frmMain.RecTxt, MENSAJE_ADVERTENCIA, .Red, .Green, .Blue, .bold, .italic)
                        End With
                        Exit Sub
                    End If
                    
                    'Splitted because VB isn't lazy!
                    If UsingSkill = Proyectiles Then
                        If Not MainTimer.Check(TimersIndex.Arrows) Then
                            frmMain.MousePointer = vbDefault
                            UsingSkill = 0
                            With FontTypes(FontTypeNames.FONTTYPE_TALK)
                                VAR_LANZANDO = JsonLanguage.Item("PROYECTILES").Item("TEXTO")
                                MENSAJE_ADVERTENCIA = JsonLanguage.Item("MENSAJE_MACRO_ADVERTENCIA").Item("TEXTO")
                                MENSAJE_ADVERTENCIA = Replace$(MENSAJE_ADVERTENCIA, "VAR_LANZADO", VAR_LANZANDO)
                                
                                Call AddtoRichTextBox(frmMain.RecTxt, MENSAJE_ADVERTENCIA, .Red, .Green, .Blue, .bold, .italic)
                            End With
                            Exit Sub
                        End If
                    End If
                    
                    'Splitted because VB isn't lazy!
                    If UsingSkill = Magia Then
                        If Not MainTimer.Check(TimersIndex.Attack, False) Then 'Check if attack interval has finished.
                            If Not MainTimer.Check(TimersIndex.CastAttack) Then 'Corto intervalo de Golpe-Magia
                                frmMain.MousePointer = vbDefault
                                UsingSkill = 0
                                With FontTypes(FontTypeNames.FONTTYPE_TALK)
                                    VAR_LANZANDO = JsonLanguage.Item("HECHIZOS").Item("TEXTO")
                                    MENSAJE_ADVERTENCIA = JsonLanguage.Item("MENSAJE_MACRO_ADVERTENCIA").Item("TEXTO")
                                    MENSAJE_ADVERTENCIA = Replace$(MENSAJE_ADVERTENCIA, "VAR_LANZADO", VAR_LANZANDO)
                                    
                                    Call AddtoRichTextBox(frmMain.RecTxt, MENSAJE_ADVERTENCIA, .Red, .Green, .Blue, .bold, .italic)
                                End With
                                Exit Sub
                            End If
                        Else
                            If Not MainTimer.Check(TimersIndex.CastSpell) Then 'Check if spells interval has finished.
                                frmMain.MousePointer = vbDefault
                                UsingSkill = 0
                                With FontTypes(FontTypeNames.FONTTYPE_TALK)
                                    VAR_LANZANDO = JsonLanguage.Item("HECHIZOS").Item("TEXTO")
                                    MENSAJE_ADVERTENCIA = JsonLanguage.Item("MENSAJE_MACRO_ADVERTENCIA").Item("TEXTO")
                                    MENSAJE_ADVERTENCIA = Replace$(MENSAJE_ADVERTENCIA, "VAR_LANZADO", VAR_LANZANDO)
                                    
                                    Call AddtoRichTextBox(frmMain.RecTxt, MENSAJE_ADVERTENCIA, .Red, .Green, .Blue, .bold, .italic)
                                End With
                                Exit Sub
                            End If
                        End If
                    End If
                    
                    'Splitted because VB isn't lazy!
                    If (UsingSkill = Pesca Or UsingSkill = Robar Or UsingSkill = Talar Or UsingSkill = Mineria Or UsingSkill = FundirMetal) Then
                        If Not MainTimer.Check(TimersIndex.Work) Then
                            frmMain.MousePointer = vbDefault
                            UsingSkill = 0
                            Exit Sub
                        End If
                    End If
                    
                    If frmMain.MousePointer <> 2 Then Exit Sub 'Parcheo porque a veces tira el hechizo sin tener el cursor (NicoNZ)
                    
                    frmMain.MousePointer = vbDefault
                    Call WriteWorkLeftClick(tX, tY, UsingSkill)
                    UsingSkill = 0
                End If
            Else
                'Call WriteRightClick(tx, tY) 'Proximamnete lo implementaremos..
                Call AbrirMenuViewPort
            End If
        ElseIf (MouseShift And 1) = 1 Then
            If Not CustomKeys.KeyAssigned(KeyCodeConstants.vbKeyShift) Then
                If MouseBoton = vbLeftButton Then
                    Call WriteWarpChar("YO", UserMap, tX, tY)
                End If
            End If
        End If
    End If
End Sub

Private Sub Form_DblClick()
'**************************************************************
'Author: Unknown
'Last Modify Date: 12/27/2007
'12/28/2007: ByVal - Chequea que la ventana de comercio y boveda no este abierta al hacer doble clic a un comerciante, sobrecarga la lista de items.
'**************************************************************
    If Not MirandoForo And Not Comerciando Then 'frmComerciar.Visible And Not frmBancoObj.Visible Then
        Call WriteDoubleClick(tX, tY)
    End If
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    MouseX = x - MainViewPic.Left
    MouseY = y - MainViewPic.Top
    
    'Trim to fit screen
    If MouseX < 0 Then
        MouseX = 0
    ElseIf MouseX > MainViewPic.Width Then
        MouseX = MainViewPic.Width
    End If
    
    'Trim to fit screen
    If MouseY < 0 Then
        MouseY = 0
    ElseIf MouseY > MainViewPic.Height Then
        MouseY = MainViewPic.Height
    End If
    
    LastButtonPressed.ToggleToNormal
    
    ' Disable links checking (not over consola)
    StopCheckingLinks
    
End Sub

Private Sub hlst_KeyDown(KeyCode As Integer, Shift As Integer)
       KeyCode = 0
End Sub

Private Sub hlst_KeyPress(KeyAscii As Integer)
       KeyAscii = 0
End Sub

Private Sub hlst_KeyUp(KeyCode As Integer, Shift As Integer)
        KeyCode = 0
End Sub

Private Sub lblDropGold_Click()

    Inventario.SelectGold
    If UserGLD > 0 Then
        If Not Comerciando Then frmCantidad.Show , frmMain
    End If
    
End Sub

Private Sub Label4_Click()
    Call Audio.PlayWave(SND_CLICK)

    InvEqu.Picture = LoadPicture(path(Graficos) & "Skins\" & SkinSeleccionado & "\Centroinventario.jpg")

    ' Activo controles de inventario
    PicInv.Visible = True
    imgInvScrollUp.Visible = True
    imgInvScrollDown.Visible = True

    ' Desactivo controles de hechizo
    hlst.Visible = False
    cmdINFO.Visible = False
    CmdLanzar.Visible = False
    
    cmdMoverHechi(0).Visible = False
    cmdMoverHechi(1).Visible = False
    
End Sub

Private Sub Label7_Click()
    Call Audio.PlayWave(SND_CLICK)

    InvEqu.Picture = LoadPicture(path(Graficos) & "Skins\" & SkinSeleccionado & "\Centrohechizos.jpg")
    
    ' Activo controles de hechizos
    hlst.Visible = True
    cmdINFO.Visible = True
    CmdLanzar.Visible = True
    
    cmdMoverHechi(0).Visible = True
    cmdMoverHechi(1).Visible = True
    
    ' Desactivo controles de inventario
    PicInv.Visible = False
    imgInvScrollUp.Visible = False
    imgInvScrollDown.Visible = False

End Sub

Private Sub picInv_DblClick()

    If MirandoCarpinteria Or MirandoHerreria Then Exit Sub
    
    If Not MainTimer.Check(TimersIndex.UseItemWithDblClick) Then Exit Sub
    
    If macrotrabajo.Enabled Then Call DesactivarMacroTrabajo
    
    Call UsarItem
End Sub

Private Sub picInv_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
    Call Audio.PlayWave(SND_CLICK)
End Sub

Private Sub RecTxt_Change()
On Error Resume Next  'el .SetFocus causaba errores al salir y volver a entrar
    If Not Application.IsAppActive() Then Exit Sub
    
    If SendTxt.Visible Then
        SendTxt.SetFocus
    ElseIf Me.SendCMSTXT.Visible Then
        SendCMSTXT.SetFocus
    ElseIf (Not Comerciando) And (Not MirandoAsignarSkills) And _
        (Not frmMSG.Visible) And (Not MirandoForo) And _
        (Not frmEstadisticas.Visible) And (Not frmCantidad.Visible) And (Not MirandoParty) Then
         
        If PicInv.Visible Then
            PicInv.SetFocus
        ElseIf hlst.Visible Then
            hlst.SetFocus
        End If
    End If
End Sub

Private Sub RecTxt_KeyDown(KeyCode As Integer, Shift As Integer)
    If PicInv.Visible Then
        PicInv.SetFocus
    Else
        hlst.SetFocus
    End If
End Sub

Private Sub SendTxt_Change()
'**************************************************************
'Author: Unknown
'Last Modify Date: 3/06/2006
'3/06/2006: Maraxus - impedi se inserten caracteres no imprimibles
'**************************************************************
    If Len(SendTxt.Text) > 160 Then
        stxtbuffer = JsonLanguage.Item("MENSAJE_SOY_CHEATER").Item("TEXTO")
    Else
        'Make sure only valid chars are inserted (with Shift + Insert they can paste illegal chars)
        Dim i As Long
        Dim tempstr As String
        Dim CharAscii As Integer
        
        For i = 1 To Len(SendTxt.Text)
            CharAscii = Asc(mid$(SendTxt.Text, i, 1))
            If CharAscii >= vbKeySpace And CharAscii <= 250 Then
                tempstr = tempstr & Chr$(CharAscii)
            End If
        Next i
        
        If tempstr <> SendTxt.Text Then
            'We only set it if it's different, otherwise the event will be raised
            'constantly and the client will crush
            SendTxt.Text = tempstr
        End If
        
        stxtbuffer = SendTxt.Text
    End If
End Sub

Private Sub SendTxt_KeyPress(KeyAscii As Integer)
    If Not (KeyAscii = vbKeyBack) And _
       Not (KeyAscii >= vbKeySpace And KeyAscii <= 250) Then _
        KeyAscii = 0
End Sub

Private Sub SendCMSTXT_KeyUp(KeyCode As Integer, Shift As Integer)
    'Send text
    If KeyCode = vbKeyReturn Then
        'Say
        If LenB(stxtbuffercmsg) = 0 Then
            Call ParseUserCommand("/CMSG " & stxtbuffercmsg)
        End If

        stxtbuffercmsg = vbNullString
        SendCMSTXT.Text = vbNullString
        KeyCode = 0
        Me.SendCMSTXT.Visible = False
        
        If PicInv.Visible Then
            PicInv.SetFocus
        Else
            hlst.SetFocus
        End If
    End If
End Sub

Private Sub SendCMSTXT_KeyPress(KeyAscii As Integer)
    If Not (KeyAscii = vbKeyBack) And _
       Not (KeyAscii >= vbKeySpace And KeyAscii <= 250) Then _
        KeyAscii = 0
End Sub

Private Sub SendCMSTXT_Change()
    If Len(SendCMSTXT.Text) > 160 Then
        stxtbuffercmsg = JsonLanguage.Item("MENSAJE_SOY_CHEATER").Item("TEXTO")
    Else
        'Make sure only valid chars are inserted (with Shift + Insert they can paste illegal chars)
        Dim i As Long
        Dim tempstr As String
        Dim CharAscii As Integer
        
        For i = 1 To Len(SendCMSTXT.Text)
            CharAscii = Asc(mid$(SendCMSTXT.Text, i, 1))
            If CharAscii >= vbKeySpace And CharAscii <= 250 Then
                tempstr = tempstr & Chr$(CharAscii)
            End If
        Next i
        
        If tempstr <> SendCMSTXT.Text Then
            'We only set it if it's different, otherwise the event will be raised
            'constantly and the client will crush
            SendCMSTXT.Text = tempstr
        End If
        
        stxtbuffercmsg = SendCMSTXT.Text
    End If
End Sub


''''''''''''''''''''''''''''''''''''''
'     SOCKET1                        '
''''''''''''''''''''''''''''''''''''''
#If UsarWrench = 1 Then

Private Sub Socket1_Connect()
    
    'Clean input and output buffers
    Call incomingData.ReadASCIIStringFixed(incomingData.Length)
    Call outgoingData.ReadASCIIStringFixed(outgoingData.Length)
    
    Second.Enabled = True

    Select Case EstadoLogin
        Case E_MODO.CrearNuevoPj
            Call Login
        
        Case E_MODO.Normal
            Call Login
        
        Case E_MODO.Dados
            Call Audio.PlayMIDI("7.mid")
            frmCrearPersonaje.Show
        
        Case E_MODO.CrearCuenta
            Call Audio.PlayMIDI("7.mid")
            frmCrearCuenta.Show
            
        Case E_MODO.CambiarContrasena
            Call Audio.PlayMIDI("7.mid")
            frmRecuperarCuenta.Show
            
    End Select
End Sub

Private Sub Socket1_Disconnect()
    
    Debug.Print "Cerrando Sockets..."
    
    ResetAllInfo
    Socket1.Cleanup
    
End Sub

Private Sub Socket1_LastError(ErrorCode As Integer, ErrorString As String, Response As Integer)
    '*********************************************
    'Handle socket errors
    '*********************************************
    Select Case ErrorCode
        Case eSockError.TOO_FAST 'jajasAJ CUALQUEIRA AJJAJA
            Call MsgBox(JsonLanguage.Item("ERROR_WINSOCK_TOO-FAST").Item("TEXTO"), vbApplicationModal + vbInformation + vbOKOnly + vbDefaultButton1, JsonLanguage.Item("ERROR").Item("TEXTO"))
            Exit Sub
        Case eSockError.REFUSED 'Vivan las negradas
            Call MsgBox(JsonLanguage.Item("ERROR_WINSOCK_REFUSED").Item("TEXTO"), vbApplicationModal + vbInformation + vbOKOnly + vbDefaultButton1, JsonLanguage.Item("ERROR").Item("TEXTO"))
        Case eSockError.TIME_OUT
            Call MsgBox(JsonLanguage.Item("ERROR_WINSOCK_TIME-OUT").Item("TEXTO"), vbApplicationModal + vbInformation + vbOKOnly + vbDefaultButton1, JsonLanguage.Item("ERROR").Item("TEXTO"))
        Case Else
            Call MsgBox(ErrorString, vbApplicationModal + vbInformation + vbOKOnly + vbDefaultButton1, JsonLanguage.Item("ERROR").Item("TEXTO"))
    End Select
    
    frmConnect.MousePointer = 1
    Response = 0

    frmMain.Socket1.Disconnect
End Sub

Private Sub Socket1_Read(dataLength As Integer, IsUrgent As Integer)
    Dim RD As String
    Dim data() As Byte
    
    Call Socket1.Read(RD, dataLength)
    data = StrConv(RD, vbFromUnicode)
    
    If LenB(RD) = 0 Then Exit Sub
    
    'Put data in the buffer
    Call incomingData.WriteBlock(data)
    
    'Send buffer to Handle data
    Call HandleIncomingData
End Sub


#End If

Private Sub AbrirMenuViewPort()
#If (ConMenuseConextuales = 1) Then

If tX >= MinXBorder And tY >= MinYBorder And _
    tY <= MaxYBorder And tX <= MaxXBorder Then
    If MapData(tX, tY).CharIndex > 0 Then
        If charlist(MapData(tX, tY).CharIndex).invisible = False Then
        
            Dim m As frmMenuseFashion
            Set m = New frmMenuseFashion
            
            Load m
            m.SetCallback Me
            m.SetMenuId 1
            m.ListaInit 2, False
            
            If LenB(charlist(MapData(tX, tY).CharIndex).Nombre) <> 0 Then
                m.ListaSetItem 0, charlist(MapData(tX, tY).CharIndex).Nombre, True
            Else
                m.ListaSetItem 0, "<NPC>", True
            End If
            m.ListaSetItem 1, JsonLanguage.Item("COMERCIAR").Item("TEXTO")
            
            m.ListaFin
            m.Show , Me

        End If
    End If
End If

#End If
End Sub

Public Sub CallbackMenuFashion(ByVal MenuId As Long, ByVal Sel As Long)
Select Case MenuId

Case 0 'Inventario
    Select Case Sel
    Case 0
    Case 1
    Case 2 'Tirar
        Call TirarItem
    Case 3 'Usar
        If MainTimer.Check(TimersIndex.UseItemWithDblClick) Then
            Call UsarItem
        End If
    Case 3 'equipar
        Call EquiparItem
    End Select
    
Case 1 'Menu del ViewPort del engine
    Select Case Sel
    Case 0 'Nombre
        Call WriteLeftClick(tX, tY)
        
    Case 1 'Comerciar
        Call WriteLeftClick(tX, tY)
        Call WriteCommerceStart
    End Select
End Select
End Sub


Private Sub SonidosMapas_Timer()
    Sonidos.ReproducirSonidosDeMapas
End Sub

'
' -------------------
'    W I N S O C K
' -------------------
'

#If UsarWrench <> 1 Then

Private Sub Winsock1_Close()
    Dim i As Long
    
    Debug.Print "Cerrando Winsock..."
    
    Second.Enabled = False
    Connected = False
    
    If Winsock1.State <> sckClosed Then _
        Winsock1.Close
    
    frmConnect.MousePointer = vbNormal
    
    Do While i < Forms.Count - 1
        i = i + 1
        
        If Forms(i).name <> Me.name And Forms(i).name <> frmConnect.name And Forms(i).name <> frmCrearPersonaje.name Then
            Unload Forms(i)
        End If
    Loop
    On Local Error GoTo 0
    
    If Not frmCrearPersonaje.Visible Then
        frmConnect.Visible = True
    End If
    
    frmMain.Visible = False

    pausa = False
    UserMeditar = False

    UserClase = 0
    UserSexo = 0
    UserRaza = 0
    UserHogar = 0
    UserEmail = vbNullString
    
    For i = 1 To NUMSKILLS
        UserSkills(i) = 0
    Next i

    For i = 1 To NUMATRIBUTOS
        UserAtributos(i) = 0
    Next i

    SkillPoints = 0
    Alocados = 0

    Dialogos.RemoveAllDialogs
End Sub

Private Sub Winsock1_Connect()

    'Clean input and output buffers
    Call incomingData.ReadASCIIStringFixed(incomingData.Length)
    Call outgoingData.ReadASCIIStringFixed(outgoingData.Length)
    
    Second.Enabled = True
    
    Select Case EstadoLogin
        Case E_MODO.CrearNuevoPj
            Call Login

        Case E_MODO.Normal
            Call Login
        
        Case E_MODO.CrearCuenta
            Call Audio.PlayMIDI("7.mid")
            frmCrearCuenta.Show

        Case E_MODO.Dados
            Call Audio.PlayMIDI("7.mid")
            frmCrearPersonaje.Show
            
        Case E_MODO.CambiarContrasena
            Call Audio.PlayMIDI("7.mid")
            frmRecuperarCuenta.Show
        
    End Select
End Sub

Private Sub Winsock1_DataArrival(ByVal bytesTotal As Long)
    Dim RD As String
    Dim data() As Byte
    
    'Socket1.Read RD, DataLength
    Winsock1.GetData RD
    
    data = StrConv(RD, vbFromUnicode)
    
    'Set data in the buffer
    Call incomingData.WriteBlock(data)
    
    'Send buffer to Handle data
    Call HandleIncomingData
End Sub

Private Sub Winsock1_Error(ByVal number As Integer, Description As String, ByVal sCode As Long, ByVal source As String, ByVal HelpFile As String, ByVal HelpContext As Long, CancelDisplay As Boolean)
    '*********************************************
    'Handle socket errors
    '*********************************************
    
    Call MsgBox(Description, vbApplicationModal + vbInformation + vbOKOnly + vbDefaultButton1, JsonLanguage.Item("Error").Item("TEXTO"))
    frmConnect.MousePointer = 1
    Second.Enabled = False

    If Winsock1.State <> sckClosed Then _
        Winsock1.Close

    If Not frmCrearPersonaje.Visible Then
        frmConnect.Show
    Else
        frmCrearPersonaje.MousePointer = 0
    End If
End Sub
#End If

#If UsarWrench = 3 Then
 
''''''''''''''''''''''''''''''''''''''
'     WINDOWS API                            '
''''''''''''''''''''''''''''''''''''''
Private Sub Client_Connect()
    
    'Clean input and output buffers
    Call incomingData.ReadASCIIStringFixed(incomingData.Length)
    Call outgoingData.ReadASCIIStringFixed(outgoingData.Length)
    
    Second.Enabled = True
    
    Select Case EstadoLogin
        Case E_MODO.CrearNuevoPj
            Call Login

        Case E_MODO.Normal
            Call Login
        
        Case E_MODO.CrearCuenta
            Call Audio.PlayMIDI("7.mid")
            frmCrearCuenta.Show

        Case E_MODO.Dados
            Call Audio.PlayMIDI("7.mid")
            frmCrearPersonaje.Show
            
        Case E_MODO.CambiarContrasena
            Call Audio.PlayMIDI("7.mid")
            frmRecuperarCuenta.Show
        
    End Select
 
End Sub

Private Sub Client_DataArrival(ByVal bytesTotal As Long)
    Dim RD As String
    Dim data() As Byte
    
    Client.GetData RD, vbByte, bytesTotal
    data = StrConv(RD, vbFromUnicode)
    
    'Set data in the buffer
    Call incomingData.WriteBlock(data)
    
    'Send buffer to Handle data
    Call HandleIncomingData
    
End Sub

Private Sub Client_CloseSck()
    
    Debug.Print "Cerrando la conexion via API de Windows..."

    Dim i As Long
        
    Second.Enabled = False
    Connected = False
    
    If Client.State <> sckClosed Then Client.CloseSck

    frmConnect.MousePointer = vbNormal
    
    Do While i < Forms.Count - 1
        i = i + 1
        
        If Forms(i).name <> Me.name And Forms(i).name <> frmConnect.name And Forms(i).name <> frmCrearPersonaje.name Then
            Unload Forms(i)
        End If
    Loop
    
    On Local Error GoTo 0
    
    If Not frmCrearPersonaje.Visible Then
        frmConnect.Visible = True
    End If
    
    frmMain.Visible = False
 
    pausa = False
    UserMeditar = False
 
    frmMain.Visible = False

    pausa = False
    UserMeditar = False

    UserClase = 0
    UserSexo = 0
    UserRaza = 0
    UserHogar = 0
    UserEmail = vbNullString
    
    For i = 1 To NUMSKILLS
        UserSkills(i) = 0
    Next i

    For i = 1 To NUMATRIBUTOS
        UserAtributos(i) = 0
    Next i

    SkillPoints = 0
    Alocados = 0

    Dialogos.RemoveAllDialogs
    
End Sub

Private Sub Client_Error(ByVal number As Integer, Description As String, ByVal sCode As Long, ByVal source As String, ByVal HelpFile As String, ByVal HelpContext As Long, CancelDisplay As Boolean)
    
    Call MsgBox(Description, vbApplicationModal + vbInformation + vbOKOnly + vbDefaultButton1, "Error")
    
    frmConnect.MousePointer = 1
    
    Second.Enabled = False
 
    If Client.State <> sckClosed Then Client.CloseSck

    If Not frmCrearPersonaje.Visible Then
        frmConnect.Show
    Else
        frmCrearPersonaje.MousePointer = 0
    End If
 
End Sub
#End If

Private Function InGameArea() As Boolean
'***************************************************
'Author: NicoNZ
'Last Modification: 04/07/08
'Checks if last click was performed within or outside the game area.
'***************************************************
    If clicX < 0 Or clicX > (32 * (Round(frmMain.MainViewPic.Width / 32))) Then Exit Function
    If clicY < 0 Or clicY > (32 * (Round(frmMain.MainViewPic.Height / 32))) Then Exit Function
    
    InGameArea = True
End Function

Private Sub hlst_Click()
    
    With hlst
    
        If ChangeHechi Then
    
            Dim NewLugar As Integer: NewLugar = .ListIndex
            Dim AntLugar As String: AntLugar = .List(NewLugar)
            
            Call WriteDragAndDropHechizos(ChangeHechiNum + 1, NewLugar + 1)
        
            .BackColor = vbBlack
            .List(NewLugar) = .List(ChangeHechiNum)
            .List(ChangeHechiNum) = AntLugar
        
            ChangeHechi = False
            ChangeHechiNum = 0

        End If

        .BackColor = vbBlack

    End With

End Sub

Private Sub hlst_DblClick()
    ChangeHechi = True
    ChangeHechiNum = hlst.ListIndex
    hlst.BackColor = vbRed

End Sub


