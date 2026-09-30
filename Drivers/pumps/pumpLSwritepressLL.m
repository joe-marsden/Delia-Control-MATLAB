function pumpLSwritepressLL(pumpObj, press)
%PUMPLSWRITEPRESSLL Set lower pressure limit
%   J Marsden 9/4/2026
%   Input is a pump object created using pumpLSconnect and a float
%   Pressure is given in BAR
%   Sets lower pressure limit for the pump

command = "LP" + string(10*press);
write(pumpObj,command,"uint8");

end

