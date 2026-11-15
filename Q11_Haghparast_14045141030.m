clear
clc

% Part A: Calculate distance with trapz and dt = 0.01
dt_fine = 0.01;
t_fine = 0:dt_fine:5;
v_fine = 3 * (t_fine.^2) + 2 * t_fine;
distance_trapz = trapz(t_fine, v_fine);

% Part B: Calculate exact distance using symbolic integration
syms t
v_sym = 3 * (t^2) + 2 * t;
distance_exact_sym = int(v_sym, t, 0, 5);
distance_exact = double(distance_exact_sym);

fprintf('--- Part B Results ---\n');
fprintf('Trapz distance (dt = 0.01): %.4f\n', distance_trapz);
fprintf('Exact distance (symbolic): %.4f\n', distance_exact);

% Part C: Calculate integral with dt = 0.5 and find error
dt_coarse = 0.5;
t_coarse = 0:dt_coarse:5;
v_coarse = 3 * (t_coarse.^2) + 2 * t_coarse;
distance_coarse = trapz(t_coarse, v_coarse);

error_value = abs(distance_coarse - distance_exact);
fprintf('\n--- Part C Results ---\n');
fprintf('Distance with dt = 0.5: %.4f\n', distance_coarse);
fprintf('Absolute error: %.4f\n', error_value);

% Part D: Cumulative distance and half-way time
cum_dist = cumtrapz(t_fine, v_fine);
total_dist = cum_dist(end);
half_dist = total_dist / 2;

[~, index] = min(abs(cum_dist - half_dist));
half_time = t_fine(index);

fprintf('\n--- Part D Results ---\n');
fprintf('Total distance: %.4f\n', total_dist);
fprintf('Half distance: %.4f\n', half_dist);
fprintf('Time at half distance: %.4f seconds\n', half_time);
