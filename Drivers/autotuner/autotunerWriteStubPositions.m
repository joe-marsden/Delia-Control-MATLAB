function autotunerWriteStubPositions(homerObj, s1, s2, s3)
%AUTOTUNERWRITESTUBPOSITIONS Set stub positions for the homer
%   J Marsden 30/10/2026
%   homerObj is a valid serial object for the autotuner
%   s1, s2, s3 are stub positions in mm between 0 and 22.7.
%   FUTURE limit to 22.7 and positive numbers

%   For calculating: max steps = 477. step size = 0.0476mm
s1steps = round(s1/0.0476,0,"decimals");
s2steps = round(s2/0.0476,0,"decimals");
s3steps = round(s3/0.0476,0,"decimals");

% Create appropriate command. Has to be "MPO s1 s2 s3" format converted to
% decimal

commandstring = "MPO " + string(s1steps) + " " + string(s2steps) + " " + string(s3steps);

command = [128, 28, uint8(char(commandstring)), 13, 10, 128, 71];

% Send command to homer

write(homerObj, command, "uint8")

end