object frmUserAdmin: TfrmUserAdmin
  Left = 296
  Top = 107
  Width = 696
  Height = 459
  Caption = 'Benutzer-Administration'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 48
    Width = 688
    Height = 3
  end
  object Bevel2: TBevel
    Left = -1
    Top = 384
    Width = 688
    Height = 3
  end
  object labGroups: TLabel
    Left = 40
    Top = 141
    Width = 105
    Height = 13
    Caption = 'Gruppenangeh'#246'rigkeit'
  end
  object btnUserFind: TButton
    Left = 545
    Top = 12
    Width = 105
    Height = 25
    Caption = 'Suche starten'
    TabOrder = 0
  end
  object labeSearch: TLabeledEdit
    Left = 121
    Top = 14
    Width = 121
    Height = 21
    EditLabel.Width = 102
    EditLabel.Height = 13
    EditLabel.Caption = '&Suche Benutzername'
    LabelPosition = lpLeft
    LabelSpacing = 12
    TabOrder = 1
  end
  object labePasswort: TLabeledEdit
    Left = 90
    Top = 100
    Width = 121
    Height = 21
    EditLabel.Width = 43
    EditLabel.Height = 13
    EditLabel.Caption = 'Passwort'
    LabelPosition = lpLeft
    LabelSpacing = 12
    TabOrder = 2
  end
  object labeShortname: TLabeledEdit
    Left = 90
    Top = 68
    Width = 121
    Height = 21
    EditLabel.Width = 68
    EditLabel.Height = 13
    EditLabel.Caption = 'Benutzer&name'
    LabelPosition = lpLeft
    LabelSpacing = 12
    TabOrder = 3
  end
  object CheckBox1: TCheckBox
    Left = 528
    Top = 268
    Width = 97
    Height = 17
    Caption = 'ist aktiviert'
    TabOrder = 4
  end
  object labeTitle: TLabeledEdit
    Left = 528
    Top = 72
    Width = 121
    Height = 21
    EditLabel.Width = 20
    EditLabel.Height = 13
    EditLabel.Caption = '&Titel'
    LabelPosition = lpLeft
    LabelSpacing = 12
    TabOrder = 5
  end
  object labeFirstname: TLabeledEdit
    Left = 528
    Top = 104
    Width = 121
    Height = 21
    EditLabel.Width = 42
    EditLabel.Height = 13
    EditLabel.Caption = 'Vorname'
    LabelPosition = lpLeft
    LabelSpacing = 12
    TabOrder = 6
  end
  object labeLastname: TLabeledEdit
    Left = 528
    Top = 136
    Width = 121
    Height = 21
    EditLabel.Width = 52
    EditLabel.Height = 13
    EditLabel.Caption = 'Nachname'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    LabelPosition = lpLeft
    LabelSpacing = 12
    ParentFont = False
    TabOrder = 7
  end
  object labeBirthday: TLabeledEdit
    Left = 528
    Top = 168
    Width = 121
    Height = 21
    EditLabel.Width = 66
    EditLabel.Height = 13
    EditLabel.Caption = 'Geburtsdatum'
    LabelPosition = lpLeft
    LabelSpacing = 12
    TabOrder = 8
  end
  object ilbxUsergroups: TListBox
    Left = 90
    Top = 163
    Width = 201
    Height = 177
    ItemHeight = 13
    TabOrder = 9
  end
  object btnPasswortChange: TBitBtn
    Left = 16
    Top = 400
    Width = 129
    Height = 25
    Caption = 'Pass&wort '#228'ndern'
    TabOrder = 10
    Glyph.Data = {
      16010000424D16010000000000007600000028000000200000000A0000000100
      040000000000A000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00AAAAAAAAAAAA
      AAAAAAAAAAAAAAAAAAAAA0AAAAAA0AAAAA0AAAAAAAAAAAAAAAAAA0AAAAAA0AAA
      AA0AAAAAAACCAAAAAAAAA0AAAAA0A0AAA0A0AAAACCCCCAAAAAAAA0000AA0A0AA
      A0A0AAAACCAACCAAAAAAA0AAA0A0AA0A0AA0AAACCAAAACCAAAAAA0AAA0A0AA0A
      0AA0AAAAAAAAAACCCAAAA0AAA00AAA0A0AAA0AAAAAAAAAACCCAAA0000A0AAAA0
      AAAA0AAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA}
    Margin = 7
  end
  object BitBtn2: TBitBtn
    Left = 152
    Top = 400
    Width = 121
    Height = 25
    Caption = '&Gruppenzuordnung'
    TabOrder = 11
  end
  object BitBtn3: TBitBtn
    Left = 280
    Top = 400
    Width = 121
    Height = 25
    Caption = '&Benutzer aktivieren'
    TabOrder = 12
  end
  object BitBtn4: TBitBtn
    Left = 408
    Top = 400
    Width = 121
    Height = 25
    Caption = '&Personendaten '#228'ndern'
    TabOrder = 13
  end
  object BitBtn5: TBitBtn
    Left = 536
    Top = 400
    Width = 121
    Height = 25
    Caption = '&Benutzer anlegen'
    TabOrder = 14
  end
  object LabeledEdit1: TLabeledEdit
    Left = 361
    Top = 14
    Width = 121
    Height = 21
    EditLabel.Width = 86
    EditLabel.Height = 13
    EditLabel.Caption = '&Suche Nachname'
    LabelPosition = lpLeft
    LabelSpacing = 12
    TabOrder = 15
  end
  object LabeledEdit2: TLabeledEdit
    Left = 528
    Top = 240
    Width = 121
    Height = 21
    EditLabel.Width = 58
    EditLabel.Height = 13
    EditLabel.Caption = 'angelegt am'
    LabelPosition = lpLeft
    LabelSpacing = 12
    TabOrder = 16
  end
end
