clear
clc

% Part A: Calculate and print capacitor voltage at specific time moments
t = [0, 1, 2, 5, 10];
v_charge = 12 * (1 - exp(-t / 2));

disp('--- Part A: Voltazh Dar Lahzat Mokhtalef (Charg) ---');
% Printing table of time and voltage using fprintf
for i = 1:length(t)
    fprintf('t = %2d sec ---> v(t) = %.4f V\n', t(i), v_charge(i));
end

% Part B: Calculate time required to reach 95% of final voltage
% v(t) = 0.95 * 12 = 11.4 ---> 11.4 = 12 * (1 - exp(-t/2)) ---> exp(-t/2) = 0.05
zaman_95 = -2 * log(0.05);
fprintf('\n--- Part B: Zaman Residən be 95 Darsad Voltazh Nahayi ---\n');
fprintf('Zaman = %.4f seconds\n', zaman_95);

% Part C: Simulate capacitor discharging process at t = 10 seconds
t_discharge = 10;
v_discharge = 12 * exp(-t_discharge / 2);
fprintf('\n--- Part C: Shibeh-sazi Dsharzh Dar t = 10 sec ---\n');
fprintf('Voltazh Dsharzh dar t = 10 s = %.4f V\n', v_discharge);
