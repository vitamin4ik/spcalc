unit SpCalcFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TSpCalcForm = class(TForm)
    btnCalculate: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ledSunnyHours: TLabeledEdit;
    ledConsumedEl: TLabeledEdit;
    lbBatteriesAmount: TLabel;
    lbSolarPanelsAmount: TLabel;
    Label1: TLabel;
    lbRoofSpaceUsed: TLabel;
    procedure btnCalculateClick(Sender: TObject);
    procedure EditExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  SpCalcForm: TSpCalcForm;

implementation

{$R *.dfm}

uses SpCalculatorUnit;


procedure TSpCalcForm.btnCalculateClick(Sender: TObject);
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
         begin
            MessageBox(SpCalcForm.Handle,
            PChar('Incorrect input parameter value, hours: '+ledSunnyHours.Text+' watts: '+ledConsumedEl.Text),'Warning',MB_OK or MB_ICONWARNING);
            Exit;
         end;
   except
      on E:Exception do MessageBox(SpCalcForm.Handle,'Incorrect input parameter value','Warning',MB_OK or MB_ICONWARNING);
   end;

   SpCalculator := TSpCalculator.Create;
   try
      SpCalculator.HoursAmount :=SunnyHours;
      SpCalculator.ConsumedElectricity :=WattsConsumed;
      SpCalculator.CalculateBatteriesPanelsAmount;

  // SPCalcResults := CalculateBatteriesPanelsAmount(SunnyHours,WattsConsumed);
      Str(SpCalculator.PanelsAmount,s);
      lbSolarPanelsAmount.Caption := s;
      Str(SpCalculator.BatteriesAmount,s);
      lbBatteriesAmount.Caption := s;
      Str(SpCalculator.RoofSpaceNeeded,s);
      lbRoofSpaceUsed.Caption := s;
   finally
      FreeAndNil(SpCalculator);
   end;
end;

procedure TSpCalcForm.EditExit(Sender: TObject);
begin
  try
      StrToInt(TEdit(Sender).Text);
  except
   on Exception do
      begin
         MessageBox(SpCalcForm.Handle,'Incorrect  parameter value. Check your input','Warning',MB_OK or MB_ICONWARNING);
         TEdit(Sender).SetFocus;
      end;
  end;
end;

procedure TSpCalcForm.FormCreate(Sender: TObject);
begin
   ledSunnyHours.OnExit := EditExit;
   ledConsumedEl.OnExit := EditExit;
   btnCalculate.Brush.Color:=clWhite;
end;

end.
