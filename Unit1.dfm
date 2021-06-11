object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Ghorbani Schadule'
  ClientHeight = 176
  ClientWidth = 664
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 12
    Width = 75
    Height = 13
    Caption = 'Alarm starts at:'
  end
  object Label2: TLabel
    Left = 48
    Top = 114
    Width = 35
    Height = 13
    Caption = 'Status:'
  end
  object Label3: TLabel
    Left = 89
    Top = 114
    Width = 18
    Height = 13
    Caption = 'Idle'
  end
  object Label4: TLabel
    Left = 48
    Top = 133
    Width = 112
    Height = 13
    Caption = 'Ghorbani77@gmail.com'
  end
  object Label5: TLabel
    Left = 48
    Top = 148
    Width = 92
    Height = 13
    Caption = '+98-919-143-7539'
  end
  object Button1: TButton
    Left = 239
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Stop task'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 88
    Top = 12
    Width = 145
    Height = 21
    Date = 40969.000000000000000000
    Time = 0.156269155093468700
    TabOrder = 2
  end
  object Button2: TButton
    Left = 158
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Set task'
    TabOrder = 0
    OnClick = Button2Click
  end
  object DateTimePicker2: TDateTimePicker
    Left = 239
    Top = 12
    Width = 145
    Height = 21
    Date = 40969.000000000000000000
    Time = 0.175664976850384800
    Kind = dtkTime
    TabOrder = 3
  end
  object Button3: TButton
    Left = 560
    Top = 143
    Width = 55
    Height = 25
    Caption = 'Exit'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 8
    Top = 36
  end
end
