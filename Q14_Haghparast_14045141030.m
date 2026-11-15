clear
clc

% Part A1: Print odd numbers from 3 to 34 using a 'for' loop
disp('--- Part A: Odd numbers using FOR loop ---');
for i = 3:2:34
    disp(i);
end

% Part A2: Print odd numbers from 3 to 34 using a 'while' loop
disp('--- Part A: Odd numbers using WHILE loop ---');
i = 3;
while i <= 34
    disp(i);
    i = i + 2;
end

% Part B: Calculate series sum using input and a loop
disp('--- Part B: Series Sum Calculation ---');
x = input('Enter value for x: ');
n = input('Enter value for n: ');

y = 0;
for k = 1:n
    y = y + (2 / x)^k;
end

fprintf('Series Sum y = %.4f\n', y);

% Part C: Robot speed controller using a while loop
disp('--- Part C: Robot Speed Controller ---');
v = 0;
step_count = 0;

while abs(500 - v) >= 5
    v = v + 0.1 * (500 - v);
    step_count = step_count + 1;
end

fprintf('Final Speed = %.4f\n', v);
fprintf('Total Steps = %d\n', step_count);
