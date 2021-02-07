program SpCalc;

uses
  Forms,
  SpCalcFormUnit in 'SpCalcFormUnit.pas' {SpCalcForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TSpCalcForm, SpCalcForm);
  Application.Run;
end.
