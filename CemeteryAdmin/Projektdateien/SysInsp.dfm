object frmSysInspector: TfrmSysInspector
  Left = 333
  Top = 218
  Width = 225
  Height = 430
  Hint = 'Systeminspektor'
  ActiveControl = trvSysInspector
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'CA-Systerminspektor'
  Color = clBtnFace
  Constraints.MaxHeight = 675
  Constraints.MaxWidth = 225
  Constraints.MinHeight = 430
  Constraints.MinWidth = 225
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefaultPosOnly
  PrintScale = poNone
  Scaled = False
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    217
    403)
  PixelsPerInch = 96
  TextHeight = 13
  object trvSysInspector: TTreeView
    Left = 0
    Top = 0
    Width = 177
    Height = 382
    Hint = 'Systeminspektor'
    Anchors = [akLeft, akTop, akBottom]
    ChangeDelay = 50
    Indent = 19
    TabOrder = 0
    Items.Data = {
      030000002B0000000000000000000000FFFFFFFFFFFFFFFF0000000002000000
      1242656E75747A657276657277616C74756E67210000000000000000000000FF
      FFFFFFFFFFFFFF00000000000000000842656E75747A65722800000000000000
      00000000FFFFFFFFFFFFFFFF00000000000000000F42656E75747A6572677275
      7070656E1F0000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
      065265636874651F0000000000000000000000FFFFFFFFFFFFFFFF0000000000
      0000000653797374656D}
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 384
    Width = 217
    Height = 19
    Panels = <>
  end
  object Panel2: TPanel
    Left = 176
    Top = 0
    Width = 41
    Height = 377
    BevelOuter = bvNone
    TabOrder = 2
    object BitBtn13: TBitBtn
      Left = 6
      Top = 8
      Width = 27
      Height = 25
      Caption = '1'
      TabOrder = 0
    end
    object BitBtn14: TBitBtn
      Left = 6
      Top = 32
      Width = 27
      Height = 25
      Caption = '2'
      TabOrder = 1
    end
    object BitBtn15: TBitBtn
      Left = 6
      Top = 56
      Width = 27
      Height = 25
      Caption = '3'
      TabOrder = 2
    end
    object BitBtn16: TBitBtn
      Left = 6
      Top = 80
      Width = 27
      Height = 25
      Caption = '4'
      TabOrder = 3
    end
    object BitBtn17: TBitBtn
      Left = 6
      Top = 104
      Width = 27
      Height = 25
      Caption = '5'
      TabOrder = 4
    end
    object BitBtn18: TBitBtn
      Left = 6
      Top = 128
      Width = 27
      Height = 25
      Caption = '6'
      TabOrder = 5
    end
    object BitBtn1: TBitBtn
      Left = 6
      Top = 152
      Width = 27
      Height = 25
      Caption = '7'
      TabOrder = 6
    end
    object BitBtn2: TBitBtn
      Left = 6
      Top = 176
      Width = 27
      Height = 25
      Caption = '8'
      TabOrder = 7
    end
    object BitBtn3: TBitBtn
      Left = 6
      Top = 200
      Width = 27
      Height = 25
      Caption = '9'
      TabOrder = 8
    end
    object BitBtn4: TBitBtn
      Left = 6
      Top = 224
      Width = 27
      Height = 25
      Caption = '10'
      TabOrder = 9
    end
    object BitBtn5: TBitBtn
      Left = 6
      Top = 248
      Width = 27
      Height = 25
      Caption = '11'
      TabOrder = 10
    end
    object BitBtn6: TBitBtn
      Left = 6
      Top = 272
      Width = 27
      Height = 25
      Caption = '12'
      TabOrder = 11
    end
    object BitBtn7: TBitBtn
      Left = 6
      Top = 296
      Width = 27
      Height = 25
      Caption = '13'
      TabOrder = 12
    end
    object BitBtn8: TBitBtn
      Left = 6
      Top = 320
      Width = 27
      Height = 25
      Caption = '14'
      TabOrder = 13
    end
    object BitBtn9: TBitBtn
      Left = 6
      Top = 344
      Width = 27
      Height = 25
      Caption = '15'
      TabOrder = 14
    end
  end
end
