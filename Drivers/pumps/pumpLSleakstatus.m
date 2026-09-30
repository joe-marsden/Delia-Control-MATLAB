function leakstatus = pumpLSleakstatus(pumpObj)
%PUMPLSLEAKSTATUS Get current status of the pump to check for leaks
%   J Marsden 9/4/2026
%   Input is a pump object created using pumpLSconnect
%   Gets the status in the format: 0 - no leak, 1 - leak

write(pumpObj,"LS","string");
leakstatus = read(pumpObj,"string");

end

