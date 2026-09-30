function faultstatus = pumpLSfaultstatus(pumpObj)
%PUMPLSFAULTSTATUS Get current status of the pump to check for faults
%   J Marsden 9/4/2026
%   Input is a pump object created using pumpLSconnect
%   Gets the status in the format: 0 - no fault, 1 - fault
%   <stall><PAH><PAL>

write(pumpObj,"RF","string");
faultstatus = read(pumpObj,"string");

end

