object frmLogin: TfrmLogin
  Left = 393
  Top = 252
  Hint = 'Pr'#252'fung von Benutzername und Passwot'
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Login'
  ClientHeight = 300
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
  ShowHint = True
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
    Hint = 'Pr'#252'fung von Benutzername und Passwort erfolgt'
    Caption = '&Login'
    Default = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = btnLoginClick
  end
  object editBenutzername: TLabeledEdit
    Left = 143
    Top = 47
    Width = 249
    Height = 21
    Hint = 'Benutzername eingeben'
    EditLabel.Width = 68
    EditLabel.Height = 13
    EditLabel.Caption = '&Benutzername'
    LabelPosition = lpLeft
    LabelSpacing = 30
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    Text = 'nekropole'
  end
  object editPasswort: TLabeledEdit
    Left = 143
    Top = 87
    Width = 249
    Height = 21
    Hint = 'Passwort eingeben'
    EditLabel.Width = 43
    EditLabel.Height = 13
    EditLabel.Caption = '&Passwort'
    LabelPosition = lpLeft
    LabelSpacing = 30
    ParentShowHint = False
    PasswordChar = '*'
    ShowHint = True
    TabOrder = 1
    Text = 'nachtlicht'
  end
  object btnCancel: TButton
    Left = 232
    Top = 128
    Width = 75
    Height = 25
    Hint = 'Bei Abbrechen erfolgt Login als Besucher'
    Caption = 'Abbrechen'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = btnCancelClick
  end
  object Panel1: TPanel
    Left = 32
    Top = 168
    Width = 393
    Height = 121
    Caption = 'Panel1'
    TabOrder = 4
    object redMemo: TRichEdit
      Left = 8
      Top = 8
      Width = 377
      Height = 105
      Alignment = taCenter
      BorderStyle = bsNone
      Ctl3D = True
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = []
      Lines.Strings = (
        'Hinweis:'
        'Bei "Abbruch" werden Sie als Besucher im System '
        'angemeldet. Es stehen Ihnen dann alle Informationen zur '
        'Verf'#252'gung, welche zur Auffindung von Verstorbenen und '
        'Grabst'#228'tten auf Friedh'#246'fen erforderlich sind.')
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
end
