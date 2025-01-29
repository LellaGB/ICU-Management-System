unit frmMedicine_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, dmData_U;

type
  TfrmMedicine = class(TForm)
    btnMediCost: TButton;
    btnMedName: TButton;
    pnlNewMed: TPanel;
    dtpMedicine: TDateTimePicker;
    btnUpdateMedicine: TButton;
    DBGridMedicine: TDBGrid;
    btnDeleteMedicine: TButton;
    btnBack1: TButton;
    btnCreate: TButton;
    btnAmountNew: TButton;
    procedure btnBack1Click(Sender: TObject);
    procedure btnMedNameClick(Sender: TObject);
    procedure btnMediCostClick(Sender: TObject);
    procedure btnUpdateMedicineClick(Sender: TObject);
    procedure btnDeleteMedicineClick(Sender: TObject);
    procedure btnCreateClick(Sender: TObject);
    procedure btnAmountNewClick(Sender: TObject);
  private
    { Private declarations }
    sMedName :string;
    rMedicineCost : real;
    iNewAmount,iBottles : integer;
    rDate: tDate;
  public
    { Public declarations }
  end;

var
  frmMedicine: TfrmMedicine;

implementation

{$R *.dfm}

uses frmICU_U;

procedure TfrmMedicine.btnAmountNewClick(Sender: TObject);
begin
iNewAmount := strToInt(inputbox('Amount of Medicine in grams','Please enter the amount of new medicine in grams',''));
iBottles := StrToInt(Inputbox('Please insert the number of bottles','Insert here:',''));
end;

procedure TfrmMedicine.btnBack1Click(Sender: TObject);
begin
frmMedicine_U.frmMedicine.close;
end;

procedure TfrmMedicine.btnCreateClick(Sender: TObject);
var
rDate: tDate;
begin
rDate := dtpMedicine.Date; //if a medicine of the same name alrelady exists tell them to update

with DataModule1 do                                                                                                                                                    //amount                         //cost
begin
qryQuery.SQL.Text := 'INSERT INTO tblMedicine ([Medicine Name], [Amount Per Bottle], [Cost Per Bottle], [Date Recorded]) VALUES (' + QuotedStr(sMedName) + ',' + IntToStr(iNewAmount*iBottles) + ',' + FloatToStrF(rMedicineCost,ffCurrency,10,2) + ',' + '#' +DateToStr(rDate)+ '#)';
qryQuery.ExecSQL;

    qryQuery.SQL.Text := 'Select * FROM tblMedicine';
    qryQuery.Open;

end;
end;

procedure TfrmMedicine.btnDeleteMedicineClick(Sender: TObject);
var
 sDelete, sAsk : String;
 i, iCode : integer;
 bFlag : boolean;
begin
sDelete := Inputbox('Medicine Code',' Please enter the code of the medicine you wish to update','');
bFlag := false;
  // Open the query
  with Datamodule1 do
begin
 qryQuery.SQL.Text := 'SELECT * FROM tblMedicine where [Medicine Code] = ' +sDelete;
  qryQuery.Open;
  //iCode := qryQuery.RecordCount;       //Make code that loops through every record inside the column "Medicine code' to find
                                       //a record that matches "sDelete" if there is no match the program must exit and a showmessaeg must be presented stating that the searched for item does not exist'
  if qryQuery.RecordCount = 0 then
  begin
  bFlag := true;
    Showmessage('The medicine code you have entered does not seem to be included in our database, please ensure you have entered the correct medicine code or create a new medicine entry on the "Medicine" form');
    exit;
  end;

  {  while not qryQuery.Eof do
    begin
  //  if [Medicine Code] = sDelete then
    begin
    ShowMessage('Match found');
    end;qryQuery.Next; // Move to the next record
    end;}
  qryQuery.Close;
end;

if bflag = false then
begin

sAsk :=  Inputbox('Are you sure you want to delete these record?','Answer "Y" or "N"','');

if sAsk = 'N' then
begin
exit;
end;

if sAsk = 'Y' then
begin
with Datamodule1 do
begin
 qryQuery.SQL.Text := 'Delete from tblMedicine where [Medicine Code] = ' +QuotedStr(sDelete);
 qryQuery.Open;
end;

end;
end;
end;

procedure TfrmMedicine.btnMediCostClick(Sender: TObject);
begin
rMedicineCost :=  StrtoFloat(Inputbox('New medicine cost','Please enter the cost here',''));
end;

procedure TfrmMedicine.btnMedNameClick(Sender: TObject);
var
i : integer;
begin
sMedName := Inputbox('New medicine name','Please enter the new name here','');

  if sMedName = '' then
  begin
  Showmessage('Please enter a medicine name');
  exit;
  end;

  for i := 1 to length(sMedname) do
  begin
    if (sMedname[i]) in ['0'..'9'] then
  begin
    Showmessage('Please enter only letters in for the Medicine name');
    exit   ;
  end;
  if Not(upcase(sMedName[i]) IN ['A'..'Z','0'..'9'])  then
  begin
  showmessage('Please enter the Medicine name in letters');
   exit;
  end;
  end;

end;

procedure TfrmMedicine.btnUpdateMedicineClick(Sender: TObject);
var
sUpdate : string;   //Use .ExecSQL NOT. open
bFlag : boolean;
begin
rDate := dtpMedicine.Date;
sUpdate := Inputbox('Medicine Code',' Please enter the code of the medicine you wish to update',''); //Make code that loops through every record inside the column "Medicine code' to find
                                       //a record that matches "sUpdate" if there is no match the program must exit and a showmessaeg must be presented stating that the searched for item does not exist'
bFlag := false;

with Datamodule1 do
begin
 qryQuery.SQL.Text := 'Update tblMedicine set ([Medicine Name] = ' + QuotedStr(sMedName) + ' , [Amount Per Bottle] = ' + IntToStr(iNewAmount*iBottles) + ', [Cost Per Bottle]= ' + FloatToStrF(rMedicineCost,ffCurrency,10,2) + ', [Date Recorded]= ' + '#' +DateToStr(rDate)+ '#) where [Medicine Code] = ' +QuotedStr(sUpdate);
 qryQuery.Open;
end;

end;

end.
//1. Create all form
//2. Create + Name all objects
//3. Change main form + Screenshots MINIMUM 2 forms - max 5-6
