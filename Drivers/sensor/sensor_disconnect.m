function sensor_disconnect(sensorObj)
%EPC_DISCONNECT Summary of this function goes here
%   Detailed explanation goes here

    if ~isempty(sensorObj) && isvalid(sensorObj)
        delete(sensorObj);
    end
    
    sensorObj = [];

end