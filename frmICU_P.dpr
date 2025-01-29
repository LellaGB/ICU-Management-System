program frmICU_P;

uses
  Vcl.Forms,
  frmICU_U in 'frmICU_U.pas' {frmICU},
  frmMedicine_U in 'frmMedicine_U.pas' {frmMedicine},
  frmDetails_U in 'frmDetails_U.pas' {frmDetails},
  frmSearch_U in 'frmSearch_U.pas' {frmSearch}, //
  frmMedicinefacts in 'frmMedicinefacts.pas' {frmMediFax},
  frmTreatment_U in 'frmTreatment_U.pas' {frmTreatment};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmICU, frmICU);
  Application.CreateForm(TfrmMedicine, frmMedicine);
  Application.CreateForm(TfrmDetails, frmDetails);
  Application.CreateForm(TfrmSearch, frmSearch); //

  Application.CreateForm(TfrmMediFax, frmMediFax);
  Application.CreateForm(TfrmTreatment, frmTreatment);
  Application.Run;
end.
