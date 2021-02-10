unit SpCalculatorUnit;

interface
const
   BATT_VOLTAGE = 12;
   BATT_DEF_CAPACITY = 50;
   BATT_EFF_RATIO = 0.9;
   SOLAR_PANEL_POWER = 250;
   SOLAR_PANEL_SQUARE = 2;

type
   TCalculationResults = record
      PanelsAmount : byte;
      BatteriesAmount : byte;
      RoofSpaceNeeded : byte;
   end;
   
   TSpCalculator = class
      private
         FHoursAmount : word;
         FConsumedElectricity : word;
         FPanelsAmount : byte;
         FBatteriesAmount : byte;
         FRoofSpaceNeeded : byte;
         procedure SetHoursAmount(HoursValue:word);
         procedure SetConsumedElectricity(Electricity:word);
         function GetHoursAmount():word;
         function GetConsumedElectricity():word;
      public
         constructor Create;
         procedure CalculateBatteriesPanelsAmount;
         property PanelsNeeded:byte read FPanelsAmount;
         property BatteriesNeeded:byte read FBatteriesAmount;
         property RoofSpaceRequired:byte read FRoofSpaceNeeded;
         property ConsumedElectricity:word read GetConsumedElectricity write SetConsumedElectricity;
         property HoursAmount:word read GetHoursAmount write SetHoursAmount;
   end;

//function CalculateBatteriesPanelsAmount(SHoursAmount:Word; ConsumedElectricity:Word): TCalculationResults;


implementation

   uses Math;

constructor TSpCalculator.Create;
begin
    FHoursAmount :=0;
    FConsumedElectricity :=0;
    FPanelsAmount :=0;
    FBatteriesAmount :=0;
    FRoofSpaceNeeded :=0;
end;

procedure TSpCalculator.SetHoursAmount(HoursValue:word);
begin
   FHoursAmount:= HoursValue;
end;

procedure TSpCalculator.SetConsumedElectricity(Electricity:word);
begin
   FConsumedElectricity:= Electricity;
end;

function GetHoursAmount():word;
begin
  Result :=FHoursAmount;
end;

function GetConsumedElectricity():word;
begin
  Result :=FConsumedElectricity;
end;

procedure TSpCalculator.CalculateBatteriesPanelsAmount;
begin
   Math.SetRoundMode(rmUp);
   FBatteriesAmount := Round(FConsumedElectricity/(BATT_VOLTAGE*BATT_DEF_CAPACITY*BATT_EFF_RATIO));
   FPanelsAmount := Round(FConsumedElectricity/(FHoursAmount*SOLAR_PANEL_POWER));
   FRoofSpaceNeeded := FPanelsAmount*SOLAR_PANEL_SQUARE;
end;






end.
