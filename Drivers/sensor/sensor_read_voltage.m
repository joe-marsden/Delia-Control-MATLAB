function voltage = sensor_read_voltage(sensorObj)
%sensor_voltage read voltage in pressure sensor
%   J Marsden 23/9/2026

    writeline(sensorObj, "MEASURE");
    response = readline(sensorObj);
    % disp(response)

    voltage = sscanf(response, "V %f");

end