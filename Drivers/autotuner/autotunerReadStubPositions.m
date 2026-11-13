function [s1,s2,s3] = autotunerReadStubPositions(homerObj)
%AUTOTUNEREADFORWARDSTUBPOSITIONS Get the stub positions
%   J Marsden 13/11/2026
%   Gets and decodes the stub positions. homerObj is a valid serial object.

% Flush any unwanted bytes
homerObj.flush;

% Send measurement request
write(homerObj,[128, 74], "uint8");

pause(0.1)

received = read(homerObj, homerObj.NumBytesAvailable,"uint8")

% received = [128, 28, 48, 0, 0, 1, 2, 160, 15, 119, 0, 89, 128, 16]

% 5 and 6 are motor 1
m1bytes = received(4:5);
% 7 and 8 are motor 2
m2bytes = received(6:7);
% 9 and 10 are motor 3
m3bytes = received(8:9);

% Need to convert to length using max steps and step size
%   For calculating: max steps = 477. step size = 0.0476mm

m1steps = m1bytes(1) + 256 * m1bytes(2);
m2steps = m2bytes(1) + 256 * m2bytes(2);
m3steps = m3bytes(1) + 256 * m3bytes(2);

s1 = m1steps*0.0476
s2 = m2steps*0.0476
s3 = m3steps*0.0476

end