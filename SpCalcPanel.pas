unit SpCalcPanel;

interface

uses
  SysUtils, Classes, Controls, ExtCtrls, StdCtrls, Graphics;

type
  TSpCalculatorPanel = class(TCustomPanel)
  private
    FHoursLEdit : TLabeledEdit;
    FElectricityLEdit: TLabeledEdit;
    FCalcButton : TButton;
    FBatLabel : TLabel;
    FBatAmountLabel : TLabel;
    FSPanLabel : TLabel;
    FSPanelAmountLabel : TLabel;
    FRoofLabel : TLabel;
    FRoofSpaceLabel : TLabel;
    procedure BtClick(Sender:TObject);
    procedure EditExit(Sender: TObject);
  protected
    { Protected declarations }
  public
    constructor Create(AOwner:TComponent); override;
  published
    { Published declarations }
  end;

procedure Register;

implementation

   uses SpCalculatorUnit,Dialogs;

procedure Register;
begin
  RegisterComponents('Samples', [TSpCalculatorPanel]);
end;


{ TSpCalculatorPanel }

procedure TSpCalculatorPanel.EditExit(Sender: TObject);
begin
  try
      StrToInt(TEdit(Sender).Text);
  except
   on Exception do
      begin
         ShowMessage('Incorrect parameter value. Check your input');
         TEdit(Sender).SetFocus;
      end;
  end;
end;

procedure TSpCalculatorPanel.BtClick(Sender: TObject);
var
   SPCalcResults : TCalculationResults;
   SunnyHours, WattsConsumed : Word;
   ResCode, ResCode2 : Integer;
   s: string;
begin
   SunnyHours :=0;
   WattsConsumed :=0;
   try
      Val(FHoursLEdit.Text,SunnyHours,ResCode);
      Val(FElectricityLEdit.Text,WattsConsumed,ResCode2);
      if ((ResCode<>0) or (ResCode2<>0)) then
         begin
            ShowMessage('Incorrect input parameter value, hours: '+FHoursLEdit.Text+' watts: '+FElectricityLEdit.Text);
            Exit;
         end;
   except
      on E:Exception do ShowMessage('Incorrect input parameter value');
   end;
   SPCalcResults := CalculateBatteriesPanelsAmount(SunnyHours,WattsConsumed);
   Str(SPCalcResults.PanelsAmount,s);
   FSPanelAmountLabel.Caption := s;
   Str(SPCalcResults.BatteriesAmount,s);
   FBatAmountLabel.Caption := s;
   Str(SPCalcResults.RoofSpaceNeeded,s);
   FRoofSpaceLabel.Caption := s;
end;

constructor TSpCalculatorPanel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Self.Width:=468;
  Self.Height:=280;
  Self.Top:=2;
  Self.Left:=2;
  Self.Constraints.MaxHeight:=280;
  Self.Constraints.MinHeight:=280;
  Self.Constraints.MaxWidth:=468;
  Self.Constraints.MinWidth:=468;
  Self.Color:= clWhite;


  FCalcButton := TButton.Create(Self);
  FCalcButton.Parent := Self;
  FCalcButton.Left :=13;
  FCalcButton.Top :=185;
  FCalcButton.Width :=100;
  FCalcButton.Height :=32;
  FCalcButton.Caption:='Calculate';
  FCalcButton.OnClick:=BtClick;

  FHoursLEdit := TLabeledEdit.Create(Self);
  FHoursLEdit.Parent := Self;
  FHoursLEdit.Left :=13;
  FHoursLEdit.Top :=71;
  FHoursLEdit.Width :=60;
  FHoursLEdit.Height :=27;
  FHoursLEdit.EditLabel.Caption :='Average sunny hours';
  FHoursLEdit.Font.Name :='Arial';
  FHoursLEdit.Font.Size :=12;
  FHoursLEdit.MaxLength :=4;
  FHoursLEdit.OnExit := EditExit;

  FElectricityLEdit := TLabeledEdit.Create(Self);
  FElectricityLEdit.Parent := Self;
  FElectricityLEdit.Left :=13;
  FElectricityLEdit.Top :=129;
  FElectricityLEdit.Width :=60;
  FElectricityLEdit.Height :=27;
  FElectricityLEdit.EditLabel.Caption:='Electricity consumed, W';
  FElectricityLEdit.Font.Name :='Arial';
  FElectricityLEdit.Font.Size :=12;
  FElectricityLEdit.MaxLength :=4;
  FElectricityLEdit.OnExit := EditExit;

  FBatLabel := TLabel.Create(Self);
  FBatLabel.Parent := Self;
  FBatLabel.Left :=270;
  FBatLabel.Top :=51;
  FBatLabel.Width :=149;
  FBatLabel.Height :=19;
  FBatLabel.Caption :='Amount of batteries';
  FBatLabel.Font.Name :='Arial';
  FBatLabel.Font.Size :=12;

  FBatAmountLabel := TLabel.Create(Self);
  FBatAmountLabel.Parent := Self;
  FBatAmountLabel.Left :=336;
  FBatAmountLabel.Top :=71;
  FBatAmountLabel.Width :=15;
  FBatAmountLabel.Height :=31;
  FBatAmountLabel.Caption :='0';
  FBatAmountLabel.Font.Name :='Arial';
  FBatAmountLabel.Font.Size :=20;
  FBatAmountLabel.Font.Color:=clBlue;

  FSPanLabel := TLabel.Create(Self);
  FSPanLabel.Parent := Self;
  FSPanLabel.Left :=256;
  FSPanLabel.Top :=112;
  FSPanLabel.Width :=176;
  FSPanLabel.Height :=19;
  FSPanLabel.Caption :='Amount of solar panels';
  FSPanLabel.Font.Name :='Arial';
  FSPanLabel.Font.Size :=12;

  FSPanelAmountLabel := TLabel.Create(Self);
  FSPanelAmountLabel.Parent := Self;
  FSPanelAmountLabel.Left :=336;
  FSPanelAmountLabel.Top :=132;
  FSPanelAmountLabel.Width :=15;
  FSPanelAmountLabel.Height :=31;
  FSPanelAmountLabel.Caption :='0';
  FSPanelAmountLabel.Font.Name :='Arial';
  FSPanelAmountLabel.Font.Size :=20;
  FSPanelAmountLabel.Font.Color:=clBlue;

  FRoofLabel := TLabel.Create(Self);
  FRoofLabel.Parent := Self;
  FRoofLabel.Left :=241;
  FRoofLabel.Top :=176;
  FRoofLabel.Width :=207;
  FRoofLabel.Height :=19;
  FRoofLabel.Caption :='Roof space occupied, sq.m';
  FRoofLabel.Font.Name :='Arial';
  FRoofLabel.Font.Size :=12;

  FRoofSpaceLabel := TLabel.Create(Self);
  FRoofSpaceLabel.Parent := Self;
  FRoofSpaceLabel.Left :=336;
  FRoofSpaceLabel.Top :=194;
  FRoofSpaceLabel.Width :=15;
  FRoofSpaceLabel.Height :=31;
  FRoofSpaceLabel.Caption :='0';
  FRoofSpaceLabel.Font.Name :='Arial';
  FRoofSpaceLabel.Font.Size :=20;
  FRoofSpaceLabel.Font.Color:=clBlue;
end;

end.
