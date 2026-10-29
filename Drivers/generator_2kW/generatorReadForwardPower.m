function forwardpower = generatorReadForwardPower(genObj)
%GENERATORREADFORWARDPOWER Read forward power
%   J Marsden 29/10/2026
%   genObj is a valid generator object

forwardpower = read(genObj,"inputregs",1,1);    

end