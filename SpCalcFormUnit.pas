unit SpCalcFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TSpCalcForm = class(TForm)
    Button1: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ledSunnyHours: TLabeledEdit;
    ledConsumedEl: TLabeledEdit;
    lbBatteriesAmount: TLabel;
    lbSolarPanelsAmount: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SpCalcForm: TSpCalcForm;

implementation

{$R *.dfm}

uses SpCalculatorUnit;


procedure TSpCalcForm.Button1Click(Sender: TObject);
var
   SPCalcResults : TCalculationResults;
   SunnyHours, WattsConsumed : Word;
   ResCode, ResCode2 : Integer;
   s: string;
begin
   SunnyHours :=0;
   WattsConsumed :=0;	
   try
      Val(ledSunnyHours.Text,SunnyHours,ResCode);
      Val(ledConsumedEl.Text,WattsConsumed,ResCode2);
      if ((ResCode<>0) or (ResCode2<>0)) then
         MessageBox(SpCalcForm.Handle,'Incorrect input parameter value','Warning',MB_OK or MB_ICONWARNING);
         Exit;
   except
      on E:Exception do MessageBox(SpCalcForm.Handle,'Incorrect input parameter value','Warning',MB_OK or MB_ICONWARNING);
   end;
   SPCalcResults := CalculateBatteriesPanelsAmount(SunnyHours,WattsConsumed);
   s:= lbSolarPanelsAmount.Caption;
   Str(SPCalcResults.PanelsAmount, s);
   s:= lbBatteriesAmount.Caption;
   Str(SPCalcResults.BatteriesAmount, s);

end;

end.
