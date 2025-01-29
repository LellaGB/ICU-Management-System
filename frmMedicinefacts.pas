unit frmMedicinefacts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmMediFax = class(TForm)
    richMF: TRichEdit;
    btnAll: TButton;
    cmbIllness: TComboBox;
    rgpSeverity: TRadioGroup;
    btnCodeAsc: TButton;
    btnCodeTop: TButton;
    edtMediName: TEdit;
    btnEnterIll: TButton;
    btnBack3: TButton;
    btnClearM: TButton;
  //  procedure btnBack3Click(Sender: TObject);
    procedure btnAllClick(Sender: TObject);
    procedure btnEnterIllClick(Sender: TObject);
    procedure btnBack3Click(Sender: TObject);
    procedure btnCodeAscClick(Sender: TObject);
    procedure SetTabStops;
    procedure btnClearMClick(Sender: TObject);
    procedure btnCodeTopClick(Sender: TObject);
    Procedure Display;
    procedure edtMediNameChange(Sender: TObject);
    Procedure Process;
    procedure edtMediNameClick(Sender: TObject);
   // procedure rgpSeverityClick(Sender: TObject);
    //procedure rgpSeverityClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMediFax: TfrmMediFax;

    iCount : integer;
    ArrMedicineName, arrIllness, arrSeverity : array[1..150] of string;
    ArrCode, arrAmountPerBottle , arrCost : array[1..150] of integer;

implementation

{$R *.dfm}

procedure TfrmMediFax.btnAllClick(Sender: TObject);
begin
setTabStops;
RichMf.Lines.Add('Medicine Code'+ #9 + 'Medicine name' + #9 + 'illness or injury' + #9 + 'Bottle of medicine in grams' + #9+ 'Severity' + #9 + 'Amount Paid in Rands');
Display;
end;

procedure TfrmMediFax.btnBack3Click(Sender: TObject);
begin
frmMedicinefacts.frmMediFax.Close;
end;

procedure TfrmMediFax.btnClearMClick(Sender: TObject);
begin
RichMf.Lines.Clear;
end;

procedure TfrmMediFax.btnCodeAscClick(Sender: TObject);
var
iOut, k, iCount, iInn, ikeep : integer;
sKeep : string;
begin
 RichMF.Lines.Clear;
 setTabStops;
RichMf.Lines.Add('Medicine Code'+ #9 + 'Medicine name' + #9 + 'illness or injury' + #9 + 'Bottle of medicine in grams' + #9+ 'Severity' + #9 + 'Amount Paid in Rands');

  iCount := 0; // Initialize iCount to 1 before the loop

Process;

  for iOut := 1 to 20 - 1 do
  begin

    for iInn := iOut + 1 to 20 do
    begin
      if ArrCode[iInn] > ArrCode[iOut] then
      begin
        // Swap ArrCode values
        iKeep := ArrCode[iInn];
        ArrCode[iInn] := ArrCode[iOut];
        ArrCode[iout] := iKeep ;

        sKeep := arrMedicineName[iInn];
        arrMedicineName[iInn] := arrMedicineName[iOut];
        arrMedicineName[iOut] := sKeep;

         sKeep := ArrIllness[iInn];
        ArrIllness[iInn] := ArrIllness[iOut];
        ArrIllness[iOut] := sKeep;

        iKeep := ArrAmountPerBottle[iInn];
        ArrAmountPerBottle[iInn] := ArrAmountPerBottle[iOut];
        ArrAmountPerBottle[iout] := iKeep ;

        sKeep := ArrSeverity[iInn];
        ArrSeverity[iInn] := ArrSeverity[iOut];
        ArrSeverity[iOut] := sKeep;

         iKeep := Arrcost[iInn];
        ArrCost[iInn] := ArrCost[iOut];
        ArrCost[iout] := iKeep ;



      end;
    end;
  end;

 // RichMF.Lines.Clear;

  for k := 1 to 20 do
  begin
    RichMF.Lines.Add(IntToStr(ArrCode[k]) + #9 + ArrMedicineName[k] + #9 + ArrIllness[k] + #9 + IntToStr(ArrAmountPerBottle[k]) + #9 + ArrSeverity[k] + #9 + IntToStr(ArrCost[k]));
  end;
end;

procedure TfrmMediFax.btnCodeTopClick(Sender: TObject);
var
iOut, k, iCount, iInn, ikeep : integer;
sKeep : string;
begin
RichMF.Lines.Clear;

  iCount := 0; // Initialize iCount to 1 before the loop

Process;

  for iOut := 1 to 20 - 1 do
  begin

    for iInn := iOut + 1 to 20 do
    begin
      if ArrAmountPerBottle[iInn] < ArrAmountPerBottle[iOut] then
      begin
        // Swap ArrCode values
        iKeep := ArrCode[iInn];
        ArrCode[iInn] := ArrCode[iOut];
        ArrCode[iout] := iKeep ;

        sKeep := arrMedicineName[iInn];
        arrMedicineName[iInn] := arrMedicineName[iOut];
        arrMedicineName[iOut] := sKeep;

         sKeep := ArrIllness[iInn];
        ArrIllness[iInn] := ArrIllness[iOut];
        ArrIllness[iOut] := sKeep;

        iKeep := ArrAmountPerBottle[iInn];
        ArrAmountPerBottle[iInn] := ArrAmountPerBottle[iOut];
        ArrAmountPerBottle[iout] := iKeep ;

        sKeep := ArrSeverity[iInn];
        ArrSeverity[iInn] := ArrSeverity[iOut];
        ArrSeverity[iOut] := sKeep;



      end;
    end;
  end;

 // RichMF.Lines.Clear;

  for k := 1 to 20 do
  begin
    RichMF.Lines.Add(IntToStr(ArrCode[k]) + #9 + ArrMedicineName[k] + #9 + ArrIllness[k] + #9 + IntToStr(ArrAmountPerBottle[k]) + #9 + ArrSeverity[k]);
  end;
end;

{procedure TfrmMediFax.rgpSeverityClick(Sender: TObject);
begin
if rgpSeverity.ItemIndex = 0 then
begin
  Redoutput.Lines.Add();
end;                          

end;}


procedure TfrmMediFax.btnEnterIllClick(Sender: TObject);
var
sMediName : string;
begin
//if rgpseverity.ItemIndex = 0  then
sMediname := edtMediname.Text;
begin

end;

end;

procedure TfrmMediFax.Display;
 Var
tFile : Textfile;
iPos : integer;
SLine, sFile : string;
begin
//sFile := 'C:\\Users\\GILLLell\\OneDrive - Parktown High School for Girls\\I.T 2023\\PAT 2023\\CheatSheet.txt' ;
sFile := 'C:\\Users\\katil\\OneDrive - Parktown High School for Girls\\I.T 2023\\PAT 2023\\CheatSheet.txt';
if FileExists(Sfile) <> true then

Begin
Showmessage('The file does not exist');
Exit;
End;

AssignFile(tFile, sFile);

Reset(tfile);

iCount := 0;

While not EOF(tFile) and (iCount<150) do
Begin
SetTabStops;

ReadLn(tFile,sLine);

Inc(iCount);

IPos := pos('#', sLine);

ArrCode[iCount] := StrToInt(Copy(sLine,1, ipos-1));
Delete(sLine,1,iPos);


IPos := pos('#', sLine);
ArrMedicineName[iCount] := Copy(sLine,1, ipos-1);
Delete(sLine,1,iPos);

IPos := pos('#', sLine);
ArrIllness[iCount] := Copy(sLine,1, ipos-1);
Delete(sLine,1,iPos);

IPos := pos('#', sLine);
ArrAmountPerBottle [iCount] := StrToInt(Copy(sLine,1, ipos-1));
Delete(sLine,1,iPos);

IPos := pos('#', sLine);
ArrSeverity[iCount] := Copy(sLine,1, ipos-1);
Delete(sLine,1,iPos);




RichMF.Lines.Add(IntToStr(ArrCode[iCount]) + #9 + ArrMedicineName[iCount] + #9 + ArrIllness[iCount] + #9 + IntToStr(ArrAmountPerBottle[iCount]) + #9 + ArrSeverity[iCount] + #9 + sLine);

//ArrCost[iCount] := StrToInt(sLine);
//ArrCost := sLine;
End;
 CloseFile(tFile);
end;

procedure TfrmMediFax.edtMediNameChange(Sender: TObject);
//var
//sName : string;
begin
//edtMediName.Clear;
//sName := inputBox('Please enter the medicine Name that you are searching for here', '' ,'');
end;

procedure TfrmMediFax.edtMediNameClick(Sender: TObject);
begin
edtMediName.Clear;
end;

procedure TfrmMediFax.Process;
var
tFile : Textfile;
iPos : integer;
SLine, sFile : string;
begin
sFile := 'C:\\Users\\katil\\OneDrive - Parktown High School for Girls\\I.T 2023\\PAT 2023\\CheatSheet.txt';
if FileExists(Sfile) <> true then

Begin
Showmessage('The file does not exist');
Exit;
End;

AssignFile(tFile, sFile);

Reset(tfile);

iCount := 0;

While not EOF(tFile) and (iCount<150) do
Begin
SetTabStops;

ReadLn(tFile,sLine);

Inc(iCount);

IPos := pos('#', sLine);

ArrCode[iCount] := StrToInt(Copy(sLine,1, ipos-1));
Delete(sLine,1,iPos);


IPos := pos('#', sLine);
ArrMedicineName[iCount] := Copy(sLine,1, ipos-1);
Delete(sLine,1,iPos);

IPos := pos('#', sLine);
ArrIllness[iCount] := Copy(sLine,1, ipos-1);
Delete(sLine,1,iPos);

IPos := pos('#', sLine);
ArrAmountPerBottle [iCount] := StrToInt(Copy(sLine,1, ipos-1));
Delete(sLine,1,iPos);

IPos := pos('#', sLine);
ArrSeverity[iCount] := Copy(sLine,1, ipos-1);
Delete(sLine,1,iPos);


//ArrCost[iCount] := StrToInt(sLine);
//ArrCost := sLine;
End;
 CloseFile(tFile);
end;

procedure TfrmMediFax.SetTabStops;
begin
//RichMf.Lines.Add('Medicine Code'+ #9 + 'Medicine name' + #9 + 'illness or injury' + #9 + 'Amount of Medicine in grams' + #9+ 'Severity' + #9 + 'Amount Paid in Rands');
RichMF.Paragraph.TabCount := 5;
RichMF.Paragraph.Tab[0] := 100;
RichMF.Paragraph.Tab[1] := 200;
RichMF.Paragraph.Tab[2] := 350;
RichMF.Paragraph.Tab[3] := 480;
RichMF.Paragraph.Tab[4] := 550;


end;

end.
