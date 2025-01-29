unit dmData_U;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule1 = class(TDataModule)
    conICU: TADOConnection;
    dsQuery: TDataSource;
    qryQuery: TADOQuery;
    tblPatient: TADOTable;
    tblMedicine: TADOTable;
    tblTreatment: TADOTable;
    dsrPatient: TDataSource;
    dsrMedicine: TDataSource;
    dsrTreatment: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
