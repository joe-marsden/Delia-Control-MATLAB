j = 1
while j == 1
    a = s.NumBytesAvailable
    if a >0
        write(s, uint8('B'), "uint8");
        pause(0.1);
        write(s, uint8('B'), "uint8");
        
        pause(3)
        write(s, uint8('A'), "uint8");
        j=0


    end
end