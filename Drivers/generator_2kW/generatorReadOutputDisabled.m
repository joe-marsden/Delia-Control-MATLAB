function outputstate = generatorReadOutputDisabled(genObj)
%GENERATORREADOUTPUTDISABLED Read state of output disabled
%   J Marsden 29/10/2026
%   genObj is a valid generator object
%   0 is enabled, 1 is disabled

outputstate = read(genObj,"inputregs",64,1);    

end