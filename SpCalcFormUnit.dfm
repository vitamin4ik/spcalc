object SpCalcForm: TSpCalcForm
  Left = 0
  Top = 0
  Caption = 'Solar Panel Calculator'
  ClientHeight = 219
  ClientWidth = 440
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 116
    Top = 6
    Width = 207
    Height = 23
    Caption = 'Solar Panel calculator'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 261
    Top = 47
    Width = 149
    Height = 19
    Caption = 'Amount of batteries'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 247
    Top = 111
    Width = 176
    Height = 19
    Caption = 'Amount of solar panels'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbBatteriesAmount: TLabel
    Left = 329
    Top = 72
    Width = 15
    Height = 31
    Caption = '0'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object lbSolarPanelsAmount: TLabel
    Left = 329
    Top = 136
    Width = 15
    Height = 31
    Caption = '0'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Button1: TButton
    Left = 170
    Top = 179
    Width = 101
    Height = 32
    Caption = 'Calculate'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clTeal
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object ledSunnyHours: TLabeledEdit
    Left = 8
    Top = 69
    Width = 60
    Height = 27
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvNone
    EditLabel.Width = 180
    EditLabel.Height = 19
    EditLabel.Caption = 'Amount of sunny hours'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -16
    EditLabel.Font.Name = 'Arial'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object ledConsumedEl: TLabeledEdit
    Left = 8
    Top = 133
    Width = 60
    Height = 27
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvNone
    EditLabel.Width = 183
    EditLabel.Height = 19
    EditLabel.Caption = 'Electricity consumed, W'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -16
    EditLabel.Font.Name = 'Arial'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
end
