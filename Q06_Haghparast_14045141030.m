clear
clc

% Part A: Calculate total inventory value for each branch using matrix multiplication
A = [120, 80, 45; 200, 60, 30; 90, 140, 75];
p = [35000; 80000; 120000];

arzesh_shobeha = A * p;
fprintf('--- Part A: Arzesh Kol Har Shobe ---\n');
fprintf('Shobe 1 Value = %0.0f Toman\n', arzesh_shobeha(1));
fprintf('Shobe 2 Value = %0.0f Toman\n', arzesh_shobeha(2));
fprintf('Shobe 3 Value = %0.0f Toman\n', arzesh_shobeha(3));

% Part B: Compare matrix multiplication with element-wise multiplication
disp('--- Part B: Comparison (A * p vs A .* p) ---');
disp('Natayej Zarb Matrisi (A * p):');
disp(arzesh_shobeha);

disp('Natayej Zarb Ansor-be-Ansor (A .* p):');
% Using element-wise operation to show the difference in output structure
matris_elementwise = A .* p; 
disp(matris_elementwise);

% Part C: Create transposed matrix using non-conjugate transpose (.')
matris_transposed = A .';
disp('--- Part C: Transposed Matrix (A .') ---');
disp(matris_transposed);

% Part D: Calculate total parts per branch using ones vector
jam_qataat = A * ones(3, 1);
disp('--- Part D: Jam Kol Qataat Har Shobe ---');
disp(jam_qataat);
