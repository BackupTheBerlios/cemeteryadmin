object AboutBox: TAboutBox
  Left = 604
  Top = 484
  ActiveControl = OKButton
  BorderStyle = bsDialog
  Caption = 'Info'
  ClientHeight = 218
  ClientWidth = 298
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 281
    Height = 161
    BevelOuter = bvLowered
    TabOrder = 0
    object ProgramIcon: TImage
      Left = 8
      Top = 8
      Width = 65
      Height = 57
      HelpType = htKeyword
      IsControl = True
    end
    object ProductName: TLabel
      Left = 88
      Top = 24
      Width = 76
      Height = 13
      HelpType = htKeyword
      Caption = 'Nekropole 2004'
      IsControl = True
    end
    object Version: TLabel
      Left = 88
      Top = 40
      Width = 15
      Height = 13
      HelpType = htKeyword
      Caption = '0.1'
      IsControl = True
    end
    object Copyright: TLabel
      Left = 8
      Top = 80
      Width = 141
      Height = 13
      HelpType = htKeyword
      Caption = 'Copyright by Sebesta Thomas'
      IsControl = True
    end
    object Comments: TLabel
      Left = 8
      Top = 104
      Width = 59
      Height = 13
      HelpType = htKeyword
      Caption = 'Kommentare'
      WordWrap = True
      IsControl = True
    end
  end
  object OKButton: TButton
    Left = 120
    Top = 178
    Width = 65
    Height = 33
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
    IsControl = True
  end
end
