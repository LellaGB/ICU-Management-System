object frmSearch: TfrmSearch
  Left = 0
  Top = 0
  Caption = 'frmSearch'
  ClientHeight = 451
  ClientWidth = 1000
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnActivate = FormActivate
  TextHeight = 15
  object btnIDS: TButton
    Left = 283
    Top = 24
    Width = 209
    Height = 65
    Caption = 'Patient ID'
    TabOrder = 0
    OnClick = btnIDSClick
  end
  object btnAdmittedS: TButton
    Left = 283
    Top = 120
    Width = 209
    Height = 65
    Caption = 'Date Admitted'
    TabOrder = 1
    OnClick = btnAdmittedSClick
  end
  object btnDischargedS: TButton
    Left = 531
    Top = 120
    Width = 209
    Height = 65
    Caption = 'Date Discharged'
    TabOrder = 2
    OnClick = btnDischargedSClick
  end
  object btnSurnameS: TButton
    Left = 776
    Top = 24
    Width = 209
    Height = 65
    Caption = 'Surname'
    TabOrder = 3
    OnClick = btnSurnameSClick
  end
  object btnNameS: TButton
    Left = 531
    Top = 24
    Width = 209
    Height = 65
    Caption = 'Name'
    TabOrder = 4
    OnClick = btnNameSClick
  end
  object btnInjuryS: TButton
    Left = 35
    Top = 120
    Width = 209
    Height = 65
    Caption = 'Injury or Illness'
    TabOrder = 5
    OnClick = btnInjurySClick
  end
  object DBGridSearch: TDBGrid
    Left = 24
    Top = 216
    Width = 777
    Height = 227
    DataSource = DataModule1.dsQuery
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object btnBack4: TButton
    Left = 923
    Top = 423
    Width = 75
    Height = 25
    Caption = 'Back'
    TabOrder = 7
    OnClick = btnBack4Click
  end
  object btnDisplayDetails: TButton
    Left = 35
    Top = 24
    Width = 209
    Height = 65
    Caption = 'Display'
    TabOrder = 8
    OnClick = btnDisplayDetailsClick
  end
  object dtpSearch: TDateTimePicker
    Left = 776
    Top = 136
    Width = 186
    Height = 33
    Date = 45221.000000000000000000
    Time = 0.277049004631408000
    TabOrder = 9
  end
end
