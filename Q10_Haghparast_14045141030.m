clear
clc

% Part A: Calculate distance using trapz with dt = 0.01
dt_fine = 0.01;
t_fine = 0:dt_fine:5;
v_fine = 3 * (t_fine.^2) + 2 * t_fine;
distance_trapz = trapz(t_fine, v_fine);

% Part B: Calculate exact distance using symbolic integration and compare
syms t_sym
v_sym = 3 * (t_sym^2) + 2 * t_sym;
distance_exact_sym = int(v_sym, t_sym, 0, 5);
distance_exact = double(distance_exact_sym);

fprintf('--- Part B: Comparison (Trapz vs Exact) ---\n');
fprintf('Distance (trapz, dt=0.01) = %.4f m\n', distance_trapz);
fprintf('Distance (exact symbolic) = %.4f m\n', distance_exact);

% Part C: Calculate integral with dt = 0.5 and report absolute error
dt_coarse = 0.5;
t_coarse = 0:dt_coarse:5;
v_coarse = 3 * (t_coarse.^2) + 2 * t_coarse;
distance_coarse = trapz(t_coarse, v_coarse);

error_abs = abs(distance_coarse - distance_exact);
fprintf('\n--- Part C: Coarse Integration (dt=0.5) ---\n');
fprintf('Distance (dt=0.5) = %.4f m\n', distance_coarse);
fprintf('Absolute Error (abs) = %.4f m\n', error_abs);

% Part D: Cumulative distance using cumtrapz and finding half-way time
cum_distance = cumtrapz(t_fine, v_fine);
total_distance = cum_distance(end);
half_distance = total_distance / 2;

% Find the index where cumulative distance is closest to half of total distance
[~, idx] = min(abs(cum_distance - half_distance));
half_way_time = t_fine(idx);

fprintf('\n--- Part D: Cumulative Distance & Half-Way Time ---\n');
fprintf('Total Distance = %.4f m\n', total_distance);
fprintf('Half Total Distance = %.4f m\n', half_distance);
fprintf('Time at half distance = %.4f seconds\n', half_way_time);
