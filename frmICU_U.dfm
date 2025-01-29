object frmICU: TfrmICU
  Left = 0
  Top = 0
  Caption = 'frmWelcome'
  ClientHeight = 527
  ClientWidth = 994
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlWelcome: TPanel
    Left = 352
    Top = 24
    Width = 257
    Height = 57
    Caption = 'Welcome'
    TabOrder = 0
  end
  object btnMedicine: TButton
    Left = 104
    Top = 184
    Width = 369
    Height = 89
    Caption = 'Medicine'
    TabOrder = 1
    OnClick = btnMedicineClick
  end
  object btnPatientDetails: TButton
    Left = 520
    Top = 184
    Width = 369
    Height = 89
    Caption = 'Patient Details'
    TabOrder = 2
    OnClick = btnPatientDetailsClick
  end
  object btnSearch: TButton
    Left = 520
    Top = 304
    Width = 369
    Height = 89
    Caption = 'Search'
    TabOrder = 3
    OnClick = btnSearchClick
  end
  object btnCheatSheet: TButton
    Left = 104
    Top = 304
    Width = 369
    Height = 89
    Caption = 'Medicine Cheat Sheet'
    TabOrder = 4
    OnClick = btnCheatSheetClick
  end
  object pnlInstructions: TPanel
    Left = 104
    Top = 96
    Width = 785
    Height = 41
    Caption = 'Please choose which field your would like to use:'
    TabOrder = 5
  end
  object btnHelp: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 33
    Caption = 'Help'
    TabOrder = 6
    OnClick = btnHelpClick
  end
  object btnTreatment: TButton
    Left = 104
    Top = 424
    Width = 785
    Height = 73
    Caption = 'Treatment'
    TabOrder = 7
    OnClick = btnTreatmentClick
  end
end
