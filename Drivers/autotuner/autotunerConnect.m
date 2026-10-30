function homerObj = autotunerConnect(COMport)
%AUTOTUNERCONNECT Connect to autotuner
%   J Marsden 30/10/2026
%   COMport is an integer
%   Need to send a reset server command to stop streaming data

serialPort = sprintf('COM%d', COMport);
homerObj = serialport(serialPort, 115200);

pause(1)

% Send stop measuring command if data is streaming
if homerObj.NumBytesAvailable > 0
    % Send stop meas command
    write(homerObj,[128, 18], "uint8")
end

homerObj.flush;

end