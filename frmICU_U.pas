unit frmICU_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, frmMedicine_U, frmDetails_U,
   frmMedicineFacts, frmSearch_U, frmTreatment_U, dmData_u;

type
  TfrmICU = class(TForm)
    pnlWelcome: TPanel;
    btnMedicine: TButton;
    btnPatientDetails: TButton;
    btnSearch: TButton;
    btnCheatSheet: TButton;
    pnlInstructions: TPanel;
    btnHelp: TButton;
    btnTreatment: TButton;
    procedure btnMedicineClick(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure btnPatientDetailsClick(Sender: TObject);
    procedure btnCheatSheetClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnTreatmentClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmICU: TfrmICU;

implementation

{$R *.dfm}


//uses frmDetails;

procedure TfrmICU.btnCheatSheetClick(Sender: TObject);
begin
frmMedicineFacts.frmMediFax.showmodal;
end;

procedure TfrmICU.btnHelpClick(Sender: TObject);
begin
Showmessage('Welcome to the official Intensive Care Unit Page!' + #10 + 'Medicine: Clicking this button will take you to a form which will allow you to record, update and delete any new medicine kept in stock' + #10 +
'Patient Details: Clicking this button will allow you to record Patient details'+
 #10 + 'Medicine Cheatsheet: Clicking this button will allow you to find and sort through common medicines used to treat illness in the ICU if you are in need of a quick recap under pressure '
 + #10+ 'Search: Clicking this button will allow you to search through the Patient Details with speed' + #10 + 'Treatment: Clicking this button will allow you to be transported to a form in order to record, delete, update and sort through the patientsd treatments in the ICU');
end;

procedure TfrmICU.btnMedicineClick(Sender: TObject);

begin
frmMedicine_U.frmMedicine.ShowModal;
end;

procedure TfrmICU.btnPatientDetailsClick(Sender: TObject);
begin
frmDetails_U.frmDetails.ShowModal;
end;

procedure TfrmICU.btnSearchClick(Sender: TObject);
begin
frmSearch_U.frmSearch.Showmodal;
end;

procedure TfrmICU.btnTreatmentClick(Sender: TObject);
begin
frmTreatment_U.frmTreatment.Showmodal;
end;

end.
