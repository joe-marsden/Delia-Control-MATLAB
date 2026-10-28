function pumpLSwriteflow(pumpObj, flow)
%PUMPLSWRITEFLOW Set pump flowrate
%   J Marsden 9/4/2026
%   Input is a pump object created using pumpLSconnect and a float
%   Flowrate is given in mL/min
%   Sets the pump flowrate

command = "FI" + string(10*flow);
write(pumpObj,command,"uint8");

end

