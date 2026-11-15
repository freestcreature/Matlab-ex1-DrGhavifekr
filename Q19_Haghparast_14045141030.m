clear
clc

% Part A: Create a 4x4 random matrix and check if it is symmetric
A = rand(4, 4);
is_symmetric_A = isequal(A, A');

disp('--- Part A Results ---');
disp('Matrix A:');
disp(A);
if is_symmetric_A
    disp('Result: Matrix A is symmetric.');
else
    disp('Result: Matrix A is NOT symmetric.');
end

% Part B: Build a symmetric matrix S from A using the formula S = (A + A') / 2
S = (A + A') / 2;
is_symmetric_S = isequal(S, S');

disp('--- Part B Results ---');
disp('Generated Symmetric Matrix S:');
disp(S);
if is_symmetric_S
    disp('Result: Matrix S is symmetric.');
else
    disp('Result: Matrix S is NOT symmetric.');
end

% Part C: Define a custom 3x3 symmetric matrix manually and check symmetry
% A custom symmetric matrix where elements across the main diagonal are equal
C_custom = [
    5,  2, -1;
    2,  7,  4;
   -1,  4,  0
];

is_symmetric_C = isequal(C_custom, C_custom');

disp('--- Part C Results ---');
disp('Custom Matrix C:');
disp(C_custom);
if is_symmetric_C
    disp('Result: Custom Matrix C is symmetric.');
else
    disp('Result: Custom Matrix C is NOT symmetric.');
end
