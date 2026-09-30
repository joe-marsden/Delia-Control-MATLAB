function pumpLSstart(pumpObj)
%PUMPLSCONNECT Connect to LS class pump
%   J Marsden 9/4/2026
%   Input is a pump object created using pumpLSconnect
%   Starts the pump
%   Includes small delay to allow it to kick in

write(pumpObj,"RU","uint8");
pause(0.5)

end

