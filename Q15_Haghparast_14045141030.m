clear
clc

% Test Part A: c2k function
disp('--- Part A: Celsius to Kelvin ---');
temps_c = [0, 25, 100];
temps_k = c2k(temps_c);
disp(temps_k);

% Test Part B: norm3 function
disp('--- Part B: 3-Norm Calculation ---');
v1 = [4, 3];
v2 = [2, 2, 1];
fprintf('3-Norm of [4 3] = %.4f\n', norm3(v1));
fprintf('3-Norm of [2 2 1] = %.4f\n', norm3(v2));

% Test Part C: powerCalc function and print with fprintf
disp('--- Part C: Power Calculation ---');
V = 220;
I = 5;
pf = 0.9;
[P, S] = powerCalc(V, I, pf);

fprintf('Active Power P = %.2f W\n', P);
fprintf('Apparent Power S = %.2f VA\n', S);
