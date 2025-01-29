object DataModule1: TDataModule1
  Height = 422
  Width = 960
  PixelsPerInch = 144
  object conICU: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Us' +
      'ers\katil\OneDrive - Parktown High School for Girls\I.T 2023\PAT' +
      ' 2023\Database1.mdb;Mode=Share Deny None;Persist Security Info=F' +
      'alse;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet' +
      ' OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Da' +
      'tabase Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OL' +
      'EDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="' +
      '";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Datab' +
      'ase=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB' +
      ':Compact Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 72
    Top = 48
  end
  object dsQuery: TDataSource
    DataSet = qryQuery
    Left = 192
    Top = 56
  end
  object qryQuery: TADOQuery
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\katil\OneD' +
      'rive - Parktown High School for Girls\I.T 2023\PAT 2023\Database' +
      '1.mdb;Persist Security Info=False'
    Parameters = <>
    Left = 316
    Top = 56
  end
  object tblPatient: TADOTable
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\katil\OneD' +
      'rive - Parktown High School for Girls\I.T 2023\PAT 2023\Database' +
      '1.mdb;Persist Security Info=False'
    TableName = 'tblPatient'
    Left = 480
    Top = 288
  end
  object tblMedicine: TADOTable
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\katil\OneD' +
      'rive - Parktown High School for Girls\I.T 2023\PAT 2023\Database' +
      '1.mdb;Persist Security Info=False'
    TableName = 'tblMedicine'
    Left = 784
    Top = 296
  end
  object tblTreatment: TADOTable
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\katil\OneD' +
      'rive - Parktown High School for Girls\I.T 2023\PAT 2023\Database' +
      '1.mdb;Persist Security Info=False'
    TableName = 'tblTreatment'
    Left = 608
    Top = 296
  end
  object dsrPatient: TDataSource
    DataSet = tblPatient
    Left = 800
    Top = 192
  end
  object dsrMedicine: TDataSource
    DataSet = tblMedicine
    Left = 632
    Top = 184
  end
  object dsrTreatment: TDataSource
    DataSet = tblTreatment
    Left = 488
    Top = 168
  end
end
