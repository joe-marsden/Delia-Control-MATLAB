function [forwardPower,reflectedPower] = autotunerReadPower(homerObj)
%AUTOTUNEREADFORWARDPOWER Get incident and reflected powers from homer
%   J Marsden 30/10/2026
%   Needs some decoding of the response information

% Flush any unwanted bytes
homerObj.flush;

% Send measurement request
write(homerObj,[128, 85], "uint8");

pause(0.1)

received = read(homerObj, homerObj.NumBytesAvailable,"uint8")

% First two bytes are confirming the command. 3 and 4 are status.
incidentbytes = received(5:7)

% 11 to 14 are for reflection coefficient in CW mode
reflectionbytes = received(11:14)

% Calculate forward power
forwardPower = (incidentbytes(2)+256*incidentbytes(1))^(incidentbytes(3)-10);

% Calculate reflected power
reflectedPower = forwardPower * ( ( (reflectionbytes(1) + 256 * reflectionbytes(2))/4096 )^2 + ( (reflectionbytes(3) + 256 * reflectionbytes(4))/4096 )^2 );
end