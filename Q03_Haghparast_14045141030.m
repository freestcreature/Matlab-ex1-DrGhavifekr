clear
clc

% Part A: Get voltage and resistance from user
voltage = input('Enter voltage (V): ');
moghavemat = input('Enter resistance (ohm): ');

% Part B: Calculations (Ohm's law and power)
jaryan = voltage / moghavemat;
tavan = voltage * jaryan;

% Part C: Formatted printing with units
fprintf('Current = %.4f A\n', jaryan);
fprintf('Power = %.4f W\n', tavan);

% Part D Test Note: For V = 12 V and R = 820 ohm, 
% enter 12 and then 820 when prompted by input.
