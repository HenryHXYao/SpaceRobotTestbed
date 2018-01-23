clc    
clear

% initialize serial port on arduino
s = serial('COM5', 'BaudRate',115200);
fopen(s);
pause(3)

% start floatation
fwrite(s,255); 

% generate thruster command
% while (1)
    thrust = '10000000';
    fwrite(s,bin2dec(thrust));
% end

% close serial port
fwrite(s,3); 
fclose(s);