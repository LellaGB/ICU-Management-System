object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'frmFacts'
  ClientHeight = 442
  ClientWidth = 938
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object richMF: TRichEdit
    Left = 40
    Top = 119
    Width = 857
    Height = 297
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Lines.Strings = (
      'richMF')
    ParentFont = False
    TabOrder = 0
  end
  object btnAll: TButton
    Left = 40
    Top = 24
    Width = 81
    Height = 65
    Caption = 'Display All'
    TabOrder = 1
  end
  object cmbIllness: TComboBox
    Left = 520
    Top = 24
    Width = 145
    Height = 23
    TabOrder = 2
    Text = 'Illness'
  end
  object rgpSeverity: TRadioGroup
    Left = 696
    Top = 8
    Width = 185
    Height = 105
    Caption = 'Severity'
    Items.Strings = (
      'Mild'
      'Moderate'
      'Severe')
    TabOrder = 3
  end
  object btnCodeAsc: TButton
    Left = 127
    Top = 23
    Width = 200
    Height = 25
    Caption = 'Medicine Code in Ascending order'
    TabOrder = 4
  end
  object btnCodeDesc: TButton
    Left = 127
    Top = 64
    Width = 200
    Height = 25
    Caption = 'Medicine Code in Descending Order'
    TabOrder = 5
  end
  object edtMediName: TEdit
    Left = 352
    Top = 24
    Width = 129
    Height = 23
    TabOrder = 6
    Text = 'edtMediName'
  end
  object btnEnterIll: TButton
    Left = 520
    Top = 64
    Width = 145
    Height = 25
    Caption = 'Enter'
    TabOrder = 7
  end
end
