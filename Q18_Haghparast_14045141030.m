clear
clc

% Part A & C: Get input for 'a', validate for non-positive numbers, and compute square root
a = input('Enter a positive number a: ');

% Check if a is less than or equal to zero (Part C)
if a <= 0
    error('Error: The input number must be strictly greater than zero!');
end

% Initial guess and settings
x_old = a;
tolerance = 0.0001;
diff_val = inf;
iteration_count = 0;

% While loop to improve the guess until difference is less than 0.0001
while diff_val >= tolerance
    x_new = (x_old + a / x_old) / 2;
    diff_val = abs(x_new - x_old);
    x_old = x_new;
    iteration_count = iteration_count + 1;
end

my_sqrt = x_new;
builtin_sqrt = sqrt(a);
error_diff = abs(my_sqrt - builtin_sqrt);

fprintf('\n--- Results for user input (a = %.2f) ---\n', a);
fprintf('Calculated Square Root = %.4f\n', my_sqrt);
fprintf('Total Iterations = %d\n', iteration_count);
fprintf('Built-in sqrt() = %.4f\n', builtin_sqrt);
fprintf('Difference = %.6f\n', error_diff);

% Part B: Test the algorithm for a = 25, 7, and 0.5
test_values = [25, 7, 0.5];
fprintf('\n--- Part B: Testing specific values (25, 7, 0.5) ---\n');

for i = 1:length(test_values)
    val = test_values(i);
    x_old = val;
    diff_val = inf;
    count = 0;
    
    while diff_val >= tolerance
        x_new = (x_old + val / x_old) / 2;
        diff_val = abs(x_new - x_old);
        x_old = x_new;
        count = count + 1;
    end
    
    res_custom = x_new;
    res_builtin = sqrt(val);
    err = abs(res_custom - res_builtin);
    
    fprintf('a = %.1f ---> Custom: %.4f | Built-in: %.4f | Diff: %.6f | Iterations: %d\n', ...
        val, res_custom, res_builtin, err, count);
end
