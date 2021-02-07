program SpCalc;

uses
  Forms,
  SpCalcFormUnit in 'SpCalcFormUnit.pas' {SpCalcForm},
  SpCalculatorUnit in 'SpCalculatorUnit.pas',
  SpCalcPanel in '..\workdocs\Borland Studio Projects\SpCalcPanel.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TSpCalcForm, SpCalcForm);
  Application.Run;
end.
