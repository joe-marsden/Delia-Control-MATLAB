function pumpLSdisconnect(pumpObj)
%EPC_DISCONNECT Summary of this function goes here
%   Detailed explanation goes here

if ~isempty(pumpObj) && isvalid(pumpObj)
    delete(pumpObj);
end

pumpObj = [];

end