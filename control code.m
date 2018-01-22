clc    
clear

% initialize serial port on arduino
s = serial('COM6', 'BaudRate',115200);
fopen(s);
pause(3)

% generate thruster command
thrust = '1001';
fwrite(s,bin2dec(thrust));  
% c = fread(s, 1);

% close serial port
fclose(s);