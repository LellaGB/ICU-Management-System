unit frmSearch_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids,dmData_U;

type
  TfrmSearch = class(TForm)
    btnIDS: TButton;
    btnAdmittedS: TButton;
    btnDischargedS: TButton;
    btnSurnameS: TButton;
    btnNameS: TButton;
    btnInjuryS: TButton;
    DBGridSearch: TDBGrid;
    btnBack4: TButton;
    btnDisplayDetails: TButton;
    dtpSearch: TDateTimePicker;
    procedure btnBack4Click(Sender: TObject);
    procedure btnIDSClick(Sender: TObject);
    procedure btnNameSClick(Sender: TObject);
    procedure btnDisplayDetailsClick(Sender: TObject);
    procedure btnSurnameSClick(Sender: TObject);
    procedure btnInjurySClick(Sender: TObject);
    procedure btnAdmittedSClick(Sender: TObject);
    procedure btnDischargedSClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSearch: TfrmSearch;

implementation

{$R *.dfm}

uses
frmICU_U;
//dmData_U;

procedure TfrmSearch.btnAdmittedSClick(Sender: TObject);
var
dAdmitted : tDate;
begin
 dAdmitted := dtpSearch.Date;

with Datamodule1 do
begin
 qryQuery.SQL.Text := 'Select * from tblPatient where [Date Admitted] = ''' + DateToStr(dAdmitted) + '''';
 qryQuery.Open;

end;
end;

procedure TfrmSearch.btnBack4Click(Sender: TObject);
begin
frmSearch_U.frmSearch.Close;
end;

procedure TfrmSearch.btnDischargedSClick(Sender: TObject);
var
dDischarged : tDate;
begin
 dDischarged := dtpSearch.Date;

 with Datamodule1 do
begin
 qryQuery.SQL.Text := 'Select * from tblPatient where [Date Discharged] = ''' + DateToStr(dDischarged) + '''';
 qryQuery.Open;

end;

end;

procedure TfrmSearch.btnDisplayDetailsClick(Sender: TObject);
begin
showmessage('button clicked');
with DataModule1 do
begin

{qryQuery.Close;
qryQuery.SQL.Clear;
 qryQuery.SQL.Add ('Select * from tblPatient ');
 qryQuery.Open;}
showmessage('button clicked2');
showmessage('aaa ' + BoolToStr(qryQuery.Active));
qryQuery.SQL.Text := 'Select * from tblPatient ';
showmessage('button clicked3');

 qryQuery.Open;

end;
end;

procedure TfrmSearch.btnIDSClick(Sender: TObject);
var
sPatientID : string;                                  //MAke checks that check that the patient id is strictly numbers and has 13 digits //refer to details page
begin
sPatientID := InputBox('Please enter the patient ID' ,'Insert here','');
//Search through tblPatient and check for all the records that contain the same patient ID and display all fields
//qryQuery.SQL.Text :=
with Datamodule1 do
begin
 qryQuery.SQL.Text := 'Select * from tblPatient where [Patient ID] =' +sPatientId;
 qryQuery.Open;

end;
end;

procedure TfrmSearch.btnInjurySClick(Sender: TObject);
var
sInjury : string;
begin

sInjury := InputBox('Please enter the patient injury or illness' ,'Insert here:','');

with Datamodule1 do
begin
 qryQuery.SQL.Text := 'Select * from tblPatient where [Injury or Illness] =' +sInjury;
 qryQuery.Open;

end;

end;

procedure TfrmSearch.btnNameSClick(Sender: TObject);
var
sNAme : string;
begin
sName := InputBox('Please enter the patient name' ,'Insert here','');

with Datamodule1 do
begin
 qryQuery.SQL.Text := 'Select * from tblPatient where [First name] = ' +sName;
 qryQuery.Open;

end;
//Search through tblPatient and check for all the records that contain the same patient Name and display all fields
end;

procedure TfrmSearch.btnSurnameSClick(Sender: TObject);
var
sSurname : string;
begin
sSurname := InputBox('Please enter the patient surname' ,'Insert here','');

with Datamodule1 do
begin
 qryQuery.SQL.Text := 'Select * from tblPatient where [Surname] =' +sSurname;
 qryQuery.Open;

end;

end;

procedure TfrmSearch.FormActivate(Sender: TObject);
begin
showmessage('button clicked');
end;

end.
