clear
clc

% Part A: Store temperature data in a 10-element vector
dama_vector = [22.05, 22.08, 23.01, 24.00, 25.02, 25.04, 26.00, 26.01, 23.02, 24.03];

% Part B: Calculate statistics and print using fprintf
miangin = mean(dama_vector);
bishineh = max(dama_vector);
kamineh = min(dama_vector);
enheraf_mear = std(dama_vector);

fprintf('Mean Temp = %.2f C\n', miangin);
fprintf('Max Temp = %.2f C\n', bishineh);
fprintf('Min Temp = %.2f C\n', kamineh);
fprintf('Std Dev = %.4f C\n', enheraf_mear);

% Part C: Vectorized deviation from mean (without loops)
enheraf_az_miangin = dama_vector - miangin;
disp('--- Deviation from Mean ---');
disp(enheraf_az_miangin);

% Part D: Sort data and print the 3rd sorted reading
sorted_dama = sort(dama_vector);
disp('--- 3rd Sorted Temperature ---');
disp(sorted_dama(3));
