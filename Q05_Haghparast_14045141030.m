clear
clc

% Part A: Create and display a 4x4 random matrix
matris_random = 10 * rand(4);
disp('--- Matris Avalie ---');
disp(matris_random);

% Part B: Find max and min values and their coordinates
max_val = max(matris_random(:));
min_val = min(matris_random(:));

[satr_max, sotoon_max] = find(matris_random == max_val);
[satr_min, sotoon_min] = find(matris_random == min_val);

fprintf('Max = %.4f dar (%d, %d)\n', max_val, satr_max, sotoon_max);
fprintf('Min = %.4f dar (%d, %d)\n', min_val, satr_min, sotoon_min);

% Part C: Swap max and min elements using indexing
matris_random(satr_max, sotoon_max) = min_val;
matris_random(satr_min, sotoon_min) = max_val;

disp('--- Matris Baad az Jabejaei ---');
disp(matris_random);

% Part D: Calculate and print column means
miangin_sotoonha = mean(matris_random);
disp('--- Miangin Har Sotoon ---');
disp(miangin_sotoonha);
