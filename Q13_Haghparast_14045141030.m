clear
clc

% Part A: Define symbolic variables s and t, and expression Is
syms s t
Is = 12 / (s * (4 + 0.2 * s));

% Part B: Find inverse Laplace transform to get i(t) and display it
it = ilaplace(Is);
disp('--- Part B Results ---');
disp('Time-domain current i(t):');
disp(it);

% Part C: Calculate current at t = 0.1 and t = 1 using subs and double
i_01 = double(subs(it, t, 0.1));
i_1 = double(subs(it, t, 1));

fprintf('\n--- Part C Results ---\n');
fprintf('Current at t = 0.1 s = %.4f A\n', i_01);
fprintf('Current at t = 1.0 s = %.4f A\n', i_1);

% Part D: Steady-state current using limit and voltage / resistance calculation
R = 4;
V_source = 12;
steady_state = double(limit(it, t, inf));
voltage_div_resistance = V_source / R;

fprintf('\n--- Part D Results ---\n');
fprintf('Steady-state current (limit): %.4f A\n', steady_state);
fprintf('Voltage divided by resistance (V/R): %.4f A\n', voltage_div_resistance);
