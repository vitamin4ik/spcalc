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

function CalculateBatteriesPanelsAmount(SHoursAmount:Word; ConsumedElectricity:Word): TCalculationResults;


implementation


function CalculateBatteriesPanelsAmount(SHoursAmount:Word; ConsumedElectricity:Word): TCalculationResults;
begin
   Result.BatteriesAmount := Round(ConsumedElectricity/(BATT_VOLTAGE*BATT_DEF_CAPACITY*BATT_EFF_RATIO));
   Result.PanelsAmount := Round(ConsumedElectricity/(SHoursAmount*SOLAR_PANEL_POWER));
   Result.RoofSpaceNeeded := Result.PanelsAmount*SOLAR_PANEL_SQUARE;
end;

end.
