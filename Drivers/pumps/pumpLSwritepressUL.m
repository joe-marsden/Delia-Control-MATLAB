function pumpLSwritepressUL(pumpObj, press)
%PUMPLSWRITEPRESSUL Set upper pressure limit
%   J Marsden 9/4/2026
%   Input is a pump object created using pumpLSconnect and a float
%   Pressure is given in BAR
%   Sets upper pressure limit for the pump

command = "UP" + string(10*press);
write(pumpObj,command,"uint8");

end

