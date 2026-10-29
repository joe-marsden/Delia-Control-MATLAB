function interlockstate = generatorReadInterlock(genObj)
%GENERATORREADINTERLOCK Read interlock state
%   J Marsden 29/10/2026
%   genObj is a valid generator object

interlockstate = read(genObj,"inputregs",67,1);    

end