object frmCopyrightOpening: TfrmCopyrightOpening
  Left = 271
  Top = 107
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Copyrightvermerk'
  ClientHeight = 453
  ClientWidth = 688
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
  object Copyrightvermerk: TLabel
    Left = 136
    Top = 96
    Width = 417
    Height = 263
    Alignment = taCenter
    AutoSize = False
    Caption = 'Copyrightvermerk'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    Layout = tlCenter
  end
  object CopyrightOpeningTimer: TTimer
    Interval = 2000
    OnTimer = CopyrightOpeningTimerTimer
    Left = 56
    Top = 40
  end
end
