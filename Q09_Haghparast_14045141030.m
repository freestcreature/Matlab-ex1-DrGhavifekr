clear
clc

% Part A: Time and position vectors
dt = 0.5;
t = 0:dt:20;
s = 60 * (1 - exp(-t / 5));

% Part B: Calculate speed using diff and gradient, and check lengths
speed_diff = diff(s) / dt;
speed_grad = gradient(s, dt);

disp('--- Part B: Length Comparison ---');
fprintf('Length of t: %d\n', length(t));
fprintf('Length of speed (diff): %d (Kootah-tar be andazeye 1 element)\n', length(speed_diff));
fprintf('Length of speed (gradient): %d (Ham-tool ba t)\n', length(speed_grad));

% Part C: Symbolic derivative, value at t = 5 using subs and double
syms t_sym
s_sym = 60 * (1 - exp(-t_sym / 5));
v_sym = diff(s_sym, t_sym);

v_at_5_sym = subs(v_sym, t_sym, 5);
v_at_5_double = double(v_at_5_sym);

disp('--- Part C: Symbolic Derivative & Evaluation at t=5 ---');
disp('Symbolic Velocity Function:');
disp(v_sym);
fprintf('Velocity at t = 5 sec (double): %.4f m/s\n', v_at_5_double);

% Part D: Max speed from gradient, speed and acceleration at t = 10 sec
max_speed = max(speed_grad);

% Finding index for t = 10 sec
t_index = find(t == 10);
speed_at_10 = speed_grad(t_index);

% Calculating acceleration using gradient of speed
accel_grad = gradient(speed_grad, dt);
accel_at_10 = accel_grad(t_index);

fprintf('\n--- Part D: Max Speed & Values at t = 10 sec --سن\n');
fprintf('Maximum Speed = %.4f m/s\n', max_speed);
fprintf('Speed at t = 10 s = %.4f m/s\n', speed_at_10);
fprintf('Acceleration at t = 10 s = %.4f m/s^2\n', accel_at_10);
