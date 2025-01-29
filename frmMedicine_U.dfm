object frmMedicine: TfrmMedicine
  Left = 0
  Top = 0
  Caption = 'frmMedicine'
  ClientHeight = 434
  ClientWidth = 1029
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnMediCost: TButton
    Left = 8
    Top = 158
    Width = 186
    Height = 49
    Caption = 'Medicine Cost per bottle'
    TabOrder = 0
    OnClick = btnMediCostClick
  end
  object btnMedName: TButton
    Left = 8
    Top = 87
    Width = 186
    Height = 49
    Caption = 'Enter New Medicine name here'
    TabOrder = 1
    OnClick = btnMedNameClick
  end
  object pnlNewMed: TPanel
    Left = 48
    Top = 24
    Width = 907
    Height = 41
    Caption = 'Enter new medicine here'
    TabOrder = 2
  end
  object dtpMedicine: TDateTimePicker
    Left = 8
    Top = 229
    Width = 186
    Height = 44
    Date = 45209.000000000000000000
    Time = 0.794879756947921100
    TabOrder = 3
  end
  object btnUpdateMedicine: TButton
    Left = 8
    Top = 377
    Width = 186
    Height = 49
    Caption = 'Update Medicine'
    TabOrder = 4
    OnClick = btnUpdateMedicineClick
  end
  object DBGridMedicine: TDBGrid
    Left = 362
    Top = 103
    Width = 649
    Height = 298
    DataSource = DataModule1.dsQuery
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object btnDeleteMedicine: TButton
    Left = 8
    Top = 302
    Width = 186
    Height = 49
    Caption = 'Delete Medicine'
    TabOrder = 6
    OnClick = btnDeleteMedicineClick
  end
  object btnBack1: TButton
    Left = 953
    Top = 407
    Width = 75
    Height = 25
    Caption = 'Back'
    TabOrder = 7
    OnClick = btnBack1Click
  end
  object btnCreate: TButton
    Left = 257
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Create'
    TabOrder = 8
    OnClick = btnCreateClick
  end
  object btnAmountNew: TButton
    Left = 200
    Top = 87
    Width = 145
    Height = 49
    Caption = 'Amount of new medicine'
    TabOrder = 9
    OnClick = btnAmountNewClick
  end
end
