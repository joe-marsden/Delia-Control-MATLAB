function EPC_set_voltage(epcObj, channel, voltage)
%EPC_set_voltage set voltage in electronic pressure controller
%   J Marsden 23/9/2026

    if channel ~= 0 && channel ~= 1
        error("Channel must be 0 or 1");
    end

    if voltage < 0 || voltage > 10
        error("Voltage must be between 0 and 10 V");
    end

    command = sprintf("V%d %.4f", channel, voltage);

    writeline(epcObj, command);

    response = readline(epcObj);

    %disp(response);

end