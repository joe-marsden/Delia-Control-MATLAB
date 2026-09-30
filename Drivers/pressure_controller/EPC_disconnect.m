function EPC_disconnect(epcObj)
%EPC_DISCONNECT Summary of this function goes here
%   Detailed explanation goes here

if ~isempty(epcObj) && isvalid(epcObj)
    delete(epcObj);
end

epcObj = [];

end