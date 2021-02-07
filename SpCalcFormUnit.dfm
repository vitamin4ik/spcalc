object SpCalcForm: TSpCalcForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Sp Calculator'
  ClientHeight = 248
  ClientWidth = 462
  Color = clBtnHighlight
  Constraints.MaxHeight = 280
  Constraints.MaxWidth = 468
  Constraints.MinHeight = 280
  Constraints.MinWidth = 468
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
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
    Left = 270
    Top = 51
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
    Left = 256
    Top = 112
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
    Left = 336
    Top = 71
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
    Left = 336
    Top = 132
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
  object Label1: TLabel
    Left = 241
    Top = 176
    Width = 207
    Height = 19
    Caption = 'Roof space occupied, sq.m'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbRoofSpaceUsed: TLabel
    Left = 336
    Top = 194
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
  object btnCalculate: TButton
    Left = 13
    Top = 185
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
    OnClick = btnCalculateClick
  end
  object ledSunnyHours: TLabeledEdit
    Left = 13
    Top = 71
    Width = 60
    Height = 27
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvNone
    EditLabel.Width = 164
    EditLabel.Height = 19
    EditLabel.Caption = 'Average sunny hours'
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
    MaxLength = 4
    ParentFont = False
    TabOrder = 1
  end
  object ledConsumedEl: TLabeledEdit
    Left = 13
    Top = 129
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
    MaxLength = 7
    ParentFont = False
    TabOrder = 2
  end
end
