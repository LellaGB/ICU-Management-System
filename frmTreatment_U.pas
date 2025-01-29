unit frmTreatment_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids,dmData_U, Vcl.Samples.Spin;

type
  TfrmTreatment = class(TForm)
    btnUpdate: TButton;
    btnTreatmentEnter: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    cmbMedicine1: TComboBox;
    edtTreatmentID: TEdit;
    Panel6: TPanel;
    cmbMedicine2: TComboBox;
    edtPatientIDT1: TEdit;
    pnlGram2: TPanel;
    dtpPerscription1: TDateTimePicker;
    edtPatientIDT2: TEdit;
    edtAmountT2: TEdit;
    DateTimePicker2: TDateTimePicker;
    pnlDivider3: TPanel;
    pnlGram1: TPanel;
    lblMedCode2: TLabel;
    lblPatientId2: TLabel;
    lblPerscribed: TLabel;
    lblDatePerscribed: TLabel;
    lblMedCode1: TLabel;
    lblPatientId1: TLabel;
    lblPerscribed2: TLabel;
    lblDatePerscribed2: TLabel;
    edtTreatmentIDDelete: TEdit;
    btnDeleteT: TButton;
    lblDeleteT: TLabel;
    Label1: TLabel;
    cmbTreatmentID: TComboBox;
    edtPatientIDTs: TEdit;
    DBSearch: TDBGrid;
    btnOkay: TButton;
    btnClear: TButton;
    btnBack5: TButton;
    spnPerscribed: TSpinEdit;
    procedure btnBack5Click(Sender: TObject);
   // procedure edtAmountT1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtPatientIDT1Click(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnTreatmentEnterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTreatment: TfrmTreatment;

implementation

{$R *.dfm}

uses frmICU_U;

procedure TfrmTreatment.btnBack5Click(Sender: TObject);
begin
frmTreatment_U.frmTreatment.Close;
end;

procedure TfrmTreatment.btnTreatmentEnterClick(Sender: TObject);
var
sPatientId : string;
begin
//Insert data
with DataModule1 do
begin
{qryQuery.SQL.Text := 'INSERT INTO tblPatient ([First Name], [Surname], [Injury/Illness], [Date Admitted], [Date Discharged]) VALUES (' + QuotedStr(sID) + ',' + QuotedStr(sName) + ',' + QuotedStr(sSurname) + ',' + QuotedStr(sIllness) + ',' + '#' +DateToStr(aDate)+ '#' + ',' + '#' +DateToStr(dDate)+ '#)';
qryQuery.open};
end;
end;

procedure TfrmTreatment.btnUpdateClick(Sender: TObject);
var
sTreatmentId : string;
begin
 sTreatmentID := edtTreatmentid.Text;

  { //Update Existing Data

  with dmFestival do
  begin
  //responsible for validating the ID Number
    qryFest.SQL.Text := 'Select * from tblActivity where ID = ' + sID;  //Find all companies with this specific ID
    qryFest.Open;

    if qryFest.RecordCount = 0 then //If a compnay was NOT found
    begin
      Showmessage('Not Found');
      exit;
    end;

    qryFest.SQL.Text := 'Update tblActivity SET [TicketsSold] = TicketsSold + ' + sTicketsSold +' Where ID = ' + sID;
    qryFest.ExecSQL;

    //Updating
    qryFest.SQL.Text := 'SELECT * from tblActivity WHere ID =' + sID ;
    qryFest.Open;
  end;}

end;


procedure TfrmTreatment.edtPatientIDT1Click(Sender: TObject);
begin
edtPatientIDT1.clear;
end;

procedure TfrmTreatment.FormActivate(Sender: TObject);
begin

//For cmbMedicine1
with Datamodule1 do
begin
 qryQuery.SQL.Text := 'Select * from tblMedicine';
 qryQuery.Open;

 qryQuery.First;

 while not qryQuery.eof do
 begin
   cmbMedicine1.Items.Add(qryQuery['Medicine Code']);
   qryQuery.Next;
 end;

 //for cmbMedicine2

 with Datamodule1 do
begin
 qryQuery.SQL.Text := 'Select * from tblMedicine';
 qryQuery.Open;

 qryQuery.First;

 while not qryQuery.eof do
 begin
   cmbMedicine2.Items.Add(qryQuery['Medicine Code']);
   qryQuery.Next;
 end;

end;

//For cmbTreatmentID

 with Datamodule1 do
begin
 qryQuery.SQL.Text := 'Select * from tblTreatment';
 qryQuery.Open;

 qryQuery.First;

 while not qryQuery.eof do
 begin
   cmbTreatmentId.Items.Add(qryQuery['TreatmentID']);
   qryQuery.Next;
 end;

end;

end;
end;

end.
