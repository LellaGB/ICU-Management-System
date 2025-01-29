object frmMediFax: TfrmMediFax
  Left = 0
  Top = 0
  Caption = 'frmFacts'
  ClientHeight = 457
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
    OnClick = btnAllClick
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
    Top = 0
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
    Caption = 'Medicine Code in Descending order'
    TabOrder = 4
    OnClick = btnCodeAscClick
  end
  object btnCodeTop: TButton
    Left = 127
    Top = 64
    Width = 200
    Height = 25
    Caption = 'Medicine Amount in ascending order'
    TabOrder = 5
    OnClick = btnCodeTopClick
  end
  object edtMediName: TEdit
    Left = 352
    Top = 24
    Width = 129
    Height = 23
    TabOrder = 6
    Text = 'Medicine Name'
    OnChange = edtMediNameChange
    OnClick = edtMediNameClick
  end
  object btnEnterIll: TButton
    Left = 520
    Top = 64
    Width = 145
    Height = 25
    Caption = 'Enter'
    TabOrder = 7
    OnClick = btnEnterIllClick
  end
  object btnBack3: TButton
    Left = 855
    Top = 424
    Width = 75
    Height = 25
    Caption = 'Back'
    TabOrder = 8
    OnClick = btnBack3Click
  end
  object btnClearM: TButton
    Left = 440
    Top = 424
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 9
    OnClick = btnClearMClick
  end
end
