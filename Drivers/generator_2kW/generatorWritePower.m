function generatorWritePower(genObj, power)
%GENERATORWRITEPOWER Set microwave power
%   J Marsden 29/10/2026
%   genObj is a valid generator object
%   power is an integer between 0 and 2000
%   FUTURE add error handling to only allow integers

write(genObj,"holdingregs",5,power)    

end