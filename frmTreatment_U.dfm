object frmTreatment: TfrmTreatment
  Left = 0
  Top = 0
  Caption = 'frmTreatment'
  ClientHeight = 666
  ClientWidth = 1106
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnActivate = FormActivate
  TextHeight = 15
  object lblMedCode2: TLabel
    Left = 273
    Top = 197
    Width = 197
    Height = 15
    Caption = 'Enter the perscription medicine code:'
  end
  object lblPatientId2: TLabel
    Left = 311
    Top = 244
    Width = 112
    Height = 15
    Caption = 'Enter the Patient'#39's ID:'
  end
  object lblPerscribed: TLabel
    Left = 23
    Top = 254
    Width = 221
    Height = 15
    Caption = 'Enter the Amount of medicine perscribed:'
  end
  object lblDatePerscribed: TLabel
    Left = 23
    Top = 384
    Width = 115
    Height = 15
    Caption = 'Enter Date Perscribed:'
  end
  object lblMedCode1: TLabel
    Left = 31
    Top = 87
    Width = 197
    Height = 15
    Caption = 'Enter the perscription medicine code:'
  end
  object lblPatientId1: TLabel
    Left = 31
    Top = 160
    Width = 112
    Height = 15
    Caption = 'Enter the Patient'#39's ID:'
  end
  object lblPerscribed2: TLabel
    Left = 275
    Top = 304
    Width = 221
    Height = 15
    Caption = 'Enter the Amount of medicine perscribed:'
  end
  object lblDatePerscribed2: TLabel
    Left = 311
    Top = 376
    Width = 115
    Height = 15
    Caption = 'Enter Date Perscribed:'
  end
  object lblDeleteT: TLabel
    Left = 296
    Top = 539
    Width = 113
    Height = 15
    Caption = 'Enter treatment ID of '
  end
  object Label1: TLabel
    Left = 283
    Top = 556
    Width = 151
    Height = 15
    Caption = 'the entry you want to delete:'
  end
  object btnUpdate: TButton
    Left = 502
    Top = 432
    Width = 138
    Height = 57
    Caption = 'Update'
    TabOrder = 0
    OnClick = btnUpdateClick
  end
  object btnTreatmentEnter: TButton
    Left = 63
    Top = 536
    Width = 114
    Height = 57
    Caption = 'Enter'
    TabOrder = 1
    OnClick = btnTreatmentEnterClick
  end
  object Panel1: TPanel
    Left = 250
    Top = 8
    Width = 17
    Height = 650
    Caption = '  '
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 663
    Top = 8
    Width = 17
    Height = 650
    Caption = '   '
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
  end
  object Panel3: TPanel
    Left = 32
    Top = 8
    Width = 185
    Height = 41
    Caption = 'Enter treatment'
    TabOrder = 4
  end
  object Panel4: TPanel
    Left = 376
    Top = 8
    Width = 185
    Height = 41
    Caption = 'Update treatment'
    TabOrder = 5
  end
  object Panel5: TPanel
    Left = 792
    Top = 8
    Width = 185
    Height = 41
    Caption = 'Search'
    TabOrder = 6
  end
  object cmbMedicine1: TComboBox
    Left = 32
    Top = 115
    Width = 177
    Height = 23
    TabOrder = 7
    Text = 'Medicine Code'
  end
  object edtTreatmentID: TEdit
    Left = 368
    Top = 115
    Width = 209
    Height = 23
    TabOrder = 8
  end
  object Panel6: TPanel
    Left = 303
    Top = 55
    Width = 337
    Height = 54
    Caption = 'Please enter the treatment ID of the entry you wish to update:'
    TabOrder = 9
  end
  object cmbMedicine2: TComboBox
    Left = 479
    Top = 194
    Width = 170
    Height = 23
    TabOrder = 10
    Text = 'Medicine'
  end
  object edtPatientIDT1: TEdit
    Left = 32
    Top = 181
    Width = 177
    Height = 23
    TabOrder = 11
    Text = 'Patient ID'
    OnClick = edtPatientIDT1Click
  end
  object pnlGram2: TPanel
    Left = 632
    Top = 291
    Width = 25
    Height = 41
    Caption = 'g'
    TabOrder = 12
  end
  object dtpPerscription1: TDateTimePicker
    Left = 34
    Top = 424
    Width = 186
    Height = 57
    Date = 45203.000000000000000000
    Time = 0.774244201391411500
    TabOrder = 13
  end
  object edtPatientIDT2: TEdit
    Left = 472
    Top = 233
    Width = 177
    Height = 23
    TabOrder = 14
    Text = 'Patient ID'
  end
  object edtAmountT2: TEdit
    Left = 502
    Top = 287
    Width = 124
    Height = 23
    TabOrder = 15
    Text = 'Amount of Medicine'
  end
  object DateTimePicker2: TDateTimePicker
    Left = 463
    Top = 350
    Width = 186
    Height = 57
    Date = 45203.000000000000000000
    Time = 0.774244201391411500
    TabOrder = 16
  end
  object pnlDivider3: TPanel
    Left = 273
    Top = 504
    Width = 384
    Height = 17
    TabOrder = 17
  end
  object pnlGram1: TPanel
    Left = 192
    Top = 312
    Width = 49
    Height = 41
    Caption = 'g'
    TabOrder = 18
  end
  object edtTreatmentIDDelete: TEdit
    Left = 440
    Top = 536
    Width = 209
    Height = 23
    TabOrder = 19
  end
  object btnDeleteT: TButton
    Left = 352
    Top = 608
    Width = 209
    Height = 50
    Caption = 'Delete'
    TabOrder = 20
  end
  object cmbTreatmentID: TComboBox
    Left = 736
    Top = 72
    Width = 145
    Height = 23
    TabOrder = 21
    Text = 'TreatmentID'
  end
  object edtPatientIDTs: TEdit
    Left = 736
    Top = 115
    Width = 121
    Height = 23
    TabOrder = 22
    Text = 'Patient ID'
  end
  object DBSearch: TDBGrid
    Left = 712
    Top = 172
    Width = 361
    Height = 349
    DataSource = DataModule1.dsQuery
    TabOrder = 23
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object btnOkay: TButton
    Left = 944
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Search'
    TabOrder = 24
  end
  object btnClear: TButton
    Left = 712
    Top = 576
    Width = 361
    Height = 41
    Caption = 'Clear'
    TabOrder = 25
  end
  object btnBack5: TButton
    Left = 840
    Top = 633
    Width = 121
    Height = 25
    Caption = 'Back to home screen'
    TabOrder = 26
    OnClick = btnBack5Click
  end
  object spnPerscribed: TSpinEdit
    Left = 34
    Top = 322
    Width = 121
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 27
    Value = 0
  end
end
