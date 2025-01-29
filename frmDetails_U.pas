unit frmDetails_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, dmdata_U,
  Vcl.WinXPickers;

type
  TfrmDetails = class(TForm)
    edtID: TEdit;
    Panel1: TPanel;
    edtName: TEdit;
    edtSurname: TEdit;
    pnlID: TPanel;
    pnlSurname: TPanel;
    PnlName: TPanel;
    pnlInjury: TPanel;
    edtInjury: TEdit;
    pnlAdmitted: TPanel;
    pnlDischarged: TPanel;
    dtpAdmitted: TDatePicker;
    dtpDischarged: TDatePicker;
    btnEnter: TButton;
    btnBack2: TButton;
    procedure btnBack2Click(Sender: TObject);
    procedure btnEnterClick(Sender: TObject);
//    procedure edtIDChange(Sender: TObject);
  //  procedure edtNameChange(Sender: TObject);
   // procedure edtSurnameChange(Sender: TObject);
  //  procedure edtInjuryChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
frmDetails : TfrmDetails;

implementation

{$R *.dfm}

uses frmICU_U;

procedure TfrmDetails.btnBack2Click(Sender: TObject);
begin
frmDetails_U.frmDetails.Close;
end;
procedure TfrmDetails.btnEnterClick(Sender: TObject);
var
i, ICount : integer;
sname, sSurname, sID,sIllness : string;
aDate, dDate : tDate;
bFlag : boolean;
begin

//qryQuery.Connection := Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\katil\OneDrive - Parktown High School for Girls\I.T 2023\PAT 2023\Database1.mdb;

  sID := edtID.Text;
  sName := edtName.text;
  sSurname := edtSurname.Text;
  sIllness := edtInjury.text;
  aDate := dtpAdmitted.Date;
  dDate := dtpDischarged.Date;

 //sID
  if Length(sID) <> 13 then
  begin
    showmessage('Please enter an ID of 13 digits');
    exit;
  end;

  for I := 1 to 13 do
  begin

  if Upcase(sID[i]) in (['A'..'Z']) then
  begin
    showmessage('Please enter an ID of 13 digits');
    exit;
  end;

  if Not(upcase(sID[i]) IN ['A'..'Z','0'..'9'])  then
  begin
     showmessage('Please enter an ID of 13 digits');
    exit;
  end;
   
  end;

  //showmessage(sID);

 //sName
 if sName = '' then
  begin
  showmessage('Please enter a First Name');
  exit;
  end;                                             //Works up to here

  for i := 1 to length(sname) do
  begin

  if (sName[i]) in ['0'..'9'] then
  begin
    Showmessage('Please enter only letters in for the Patients first name');    /////
    exit   ;
  end;

   if Not(upcase(sName[i]) IN ['A'..'Z','0'..'9'])  then
  begin
     showmessage('Please enter the patients first name.');
   exit;
  end;

  {if bflag = false then
  begin
  exit;
  end; }

  end;

  if sName = ' ' then
  begin
  showmessage('Please enter a First Name');
  exit;
  end;


 //sSurname
    for i := 1 to Length(sSurname) do
  begin

  if (sSurname[i]) in ['0'..'9'] then
  begin
    Showmessage('Please enter only letters in for the Patients Surname');
    exit;
  end;
   if Not(upcase(sSurName[i]) IN ['A'..'Z','0'..'9'])  then
  begin
     showmessage('Please enter the patients Surname in letters');
    exit;
  end;

  end;

  if sSurName = '' then
  begin
  showmessage('Please enter a Surname');
  exit;
  end;


 //sIllness
      for i := 1 to Length(sIllness) do
  begin

  if (sIllness[i]) in ['0'..'9'] then
  begin
    Showmessage('Please enter only letters in for the Patients Injury or illness');
    exit;
  end;
   if Not(upcase(sIllness[i]) IN ['A'..'Z','0'..'9'])  then
  begin
     showmessage('Please enter the patients injury or illness in letters');
    exit;
  end;

  end;

  if sIllness = '' then
  begin
  showmessage('Please enter the patients injury or illness');
  exit;
  end;

 //dDate
   if dDate < aDate then
   begin
     Showmessage('The date of dicharge may not be before the date of the patients admittance');
     exit;
   end;


//Insert data
with DataModule1 do
begin
qryQuery.SQL.Text := 'INSERT INTO tblPatient ([First Name], [Surname], [Injury/Illness], [Date Admitted], [Date Discharged]) VALUES (' + QuotedStr(sID) + ',' + QuotedStr(sName) + ',' + QuotedStr(sSurname) + ',' + QuotedStr(sIllness) + ',' + '#' +DateToStr(aDate)+ '#' + ',' + '#' +DateToStr(dDate)+ '#)';
qryQuery.open;
end;

//qryQuery.SQL.Text := 'Insert into tblPatient ([First Name], [Surname], [Injury/Illness], [Date Admitted], [Date Discharged]) Values ("' +QuotedStr(sID) + '",' +QuotedStr(sName) + ',' +QuotedStr(sSurname) + ' ,' +QuotedStr(sIllness) +',#' +DateToStr(aDate) + '#, #' +DateToStr(dDate) + '#)';
//qryQuery.SQL.Text := 'INSERT INTO tblPatient ([First Name], [Surname], [Injury/Illness], [Date Admitted], [Date Discharged]) VALUES (' + QuotedStr(sID) + ',' + QuotedStr(sName) + ',' + QuotedStr(sSurname) + ',' + QuotedStr(sIllness) + ',' + '#' +DateToStr(aDate)+ '#' + ',' + '#' +DateToStr(dDate)+ '#)';
                                                                                                                                                                                                                                                                                                                       //("'+Copy(UpperCAse(sInput),1,3) + IntToStr(iRandom)+ '",' +QuotedStr(sInput) + ',#' +DateToStr(dDate) + '#)';
//qryQuery.open;
end;


end.
