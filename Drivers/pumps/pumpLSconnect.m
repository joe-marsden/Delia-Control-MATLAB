function pumpObj = pumpLSconnect(COMport)
%PUMPLSCONNECT Connect to LS class pump
%   J Marsden 9/4/2026
%   9600 Baud Rate required
%   COMport should be an integer
%   Connects and returns pump object

serialPort = sprintf('COM%d', com)
pumpObj = serialport(serialPort,9600);

end

