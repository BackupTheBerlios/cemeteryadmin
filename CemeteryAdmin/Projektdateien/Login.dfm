object frmLogin: TfrmLogin
  Left = 393
  Top = 252
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Login'
  ClientHeight = 175
  ClientWidth = 456
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 30
    Top = 13
    Width = 396
    Height = 20
    Caption = 'Geben Sie bitte Benutzername und Passwort ein:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnLogin: TButton
    Left = 319
    Top = 128
    Width = 75
    Height = 25
    Caption = '&Login'
    Default = True
    TabOrder = 2
    OnClick = btnLoginClick
  end
  object editBenutzername: TLabeledEdit
    Left = 143
    Top = 47
    Width = 249
    Height = 21
    EditLabel.Width = 68
    EditLabel.Height = 13
    EditLabel.Caption = '&Benutzername'
    LabelPosition = lpLeft
    LabelSpacing = 30
    TabOrder = 0
  end
  object editPasswort: TLabeledEdit
    Left = 143
    Top = 87
    Width = 249
    Height = 21
    EditLabel.Width = 43
    EditLabel.Height = 13
    EditLabel.Caption = '&Passwort'
    LabelPosition = lpLeft
    LabelSpacing = 30
    PasswordChar = '*'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 232
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Abbrechen'
    TabOrder = 3
  end
end
