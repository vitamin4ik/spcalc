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
    Label1: TLabel;
    Label2: TLabel;
    procedure Label3Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
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
begin

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

end;

end.
