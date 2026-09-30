function pumpLSstop(pumpObj)
%PUMPLSSTOP Connect to LS class pump
%   J Marsden 9/4/2026
%   Input is a pump object created using pumpLSconnect
%   Stops the pump

write(pumpObj,"ST","uint8");

end

