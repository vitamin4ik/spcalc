unit SpCalculatorUnit;

interface

type
   TCalculationResults = record
      PanelsAmount : byte;
      BatteriesAmount : byte;
   end;

function CalculateBatteriesPanelsAmount(SHoursAmount:Word; ConsumedElectricity:Word): TCalculationResults;


implementation


function CalculateBatteriesPanelsAmount(SHoursAmount:Word; ConsumedElectricity:Word): TCalculationResults;
var
   t:integer;
begin

   t := SHoursAmount + ConsumedElectricity;

   Result.PanelsAmount := 1;
   Result.BatteriesAmount := 2;

end;

end.
