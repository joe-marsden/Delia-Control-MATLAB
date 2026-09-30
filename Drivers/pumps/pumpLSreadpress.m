function currentpress = pumpLSreadpress(pumpObj)
%PUMPLSREADPRESS Get current pressure status of the pump
%   J Marsden 9/4/2026
%   Input is a pump object created using pumpLSconnect
%   Gets the pressure 

write(pumpObj,"PR","string");
currentpress = read(pumpObj,"string");

end

