function currentstatus = pumpLScurrentstatus(pumpObj)
%PUMPLSCURRENTSTATUS Get current status of the pump
%   J Marsden 9/4/2026
%   Input is a pump object created using pumpLSconnect
%   Gets the status in the format: OK,<flow>,<UPL>,
%    <LPL>,<p_units>, 0,<R/S>,0/

write(pumpObj,"CS","string");
currentstatus = read(pumpObj,27,"string");

end

