function genObj = generatorConnect(COMport)
%GENERATORCONNECT Connect to generator
%   J Marsden 29/10/2026
%   115200 Baud Rate required
%   COMport should be an integer
%   Hopefully works for both 2kW and 1kW generators

serialPort = sprintf('COM%d', COMport)
genObj = modbus("serialrtu", serialPort, ...
    BaudRate=115200, ...
    DataBits=8, ...
    Parity="none", ...
    StopBits=1, ...
    Timeout=3);

end

