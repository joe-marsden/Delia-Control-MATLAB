function sensorObj = sensor_connect(COMport)
%EPC_connect Connect to electronic pressure controller
%   J Marsden 23/9/2026
%   9600 Baud Rate required
%   COMport should be an integer
%   Connects and returns pump object

    serialPort = sprintf('COM%d', COMport);
    sensorObj = serialport(serialPort,9600);


    response = readline(sensorObj);
    disp(response)
end