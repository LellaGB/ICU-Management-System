object frmDetails: TfrmDetails
  Left = 0
  Top = 0
  Caption = 'frmDetails'
  ClientHeight = 441
  ClientWidth = 627
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object edtID: TEdit
    Left = 96
    Top = 80
    Width = 137
    Height = 23
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 176
    Top = 8
    Width = 273
    Height = 41
    Caption = 'Enter Patient Details'
    TabOrder = 1
  end
  object edtName: TEdit
    Left = 96
    Top = 152
    Width = 137
    Height = 23
    TabOrder = 2
  end
  object edtSurname: TEdit
    Left = 96
    Top = 224
    Width = 137
    Height = 23
    TabOrder = 3
  end
  object pnlID: TPanel
    Left = 8
    Top = 80
    Width = 58
    Height = 41
    Caption = 'ID number'
    TabOrder = 4
  end
  object pnlSurname: TPanel
    Left = 8
    Top = 224
    Width = 58
    Height = 41
    Caption = 'Surname'
    TabOrder = 5
  end
  object PnlName: TPanel
    Left = 8
    Top = 152
    Width = 58
    Height = 41
    Caption = 'Name'
    TabOrder = 6
  end
  object pnlInjury: TPanel
    Left = 1
    Top = 298
    Width = 89
    Height = 41
    Caption = 'Injury or Ilness'
    TabOrder = 7
  end
  object edtInjury: TEdit
    Left = 96
    Top = 298
    Width = 137
    Height = 23
    TabOrder = 8
  end
  object pnlAdmitted: TPanel
    Left = 264
    Top = 80
    Width = 146
    Height = 41
    Caption = 'Date Admitted'
    TabOrder = 9
  end
  object pnlDischarged: TPanel
    Left = 264
    Top = 142
    Width = 146
    Height = 41
    Caption = 'Date Discharged'
    TabOrder = 10
  end
  object dtpAdmitted: TDatePicker
    Left = 440
    Top = 80
    Height = 41
    Date = 45154.000000000000000000
    DateFormat = 'yyyy/mm/dd'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    TabOrder = 11
  end
  object dtpDischarged: TDatePicker
    Left = 440
    Top = 142
    Height = 41
    Date = 45154.000000000000000000
    DateFormat = 'yyyy/mm/dd'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    TabOrder = 12
  end
  object btnEnter: TButton
    Left = 8
    Top = 360
    Width = 612
    Height = 67
    Caption = 'Enter'
    TabOrder = 13
    OnClick = btnEnterClick
  end
  object btnBack2: TButton
    Left = 28
    Top = 17
    Width = 75
    Height = 25
    Caption = 'Back'
    TabOrder = 14
    OnClick = btnBack2Click
  end
end
