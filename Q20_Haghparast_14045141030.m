clear
clc
close all

% Part A: Get coefficients a, b, and c from user, put them in a vector, and find roots
disp('--- Part A: Quadratic Equation Roots ---');
a = input('Enter coefficient a: ');
b = input('Enter coefficient b: ');
c = input('Enter coefficient c: ');

% Check if 'a' is zero (not a quadratic equation)
if a == 0
    error('Error: Coefficient "a" cannot be zero in a quadratic equation!');
end

% Create coefficient vector and calculate roots using roots()
coeff_vector = [a, b, c];
r = roots(coeff_vector);

disp('Roots of the equation:');
disp(r);

% Part B & C: Plot the parabola and mark the roots on it
% Check if the roots are real numbers before plotting on x-axis
if isreal(r)
    % Define range for x around the roots (from min root - 2 to max root + 2)
    x_min = min(r) - 2;
    x_max = max(r) + 2;
    x = x_min : 0.01 : x_max;
    
    % Calculate y values using polyval
    y = polyval(coeff_vector, x);
    
    figure(1);
    plot(x, y, 'b', 'LineWidth', 1.5);
    hold on;
    
    % Part C: Mark the roots on the plot using red asterisks (*)
    y_roots = zeros(size(r)); % y values at roots are zero
    plot(r, y_roots, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');
    
    title('Quadratic Parabola and Roots');
    xlabel('x');
    ylabel('y');
    grid on;
    legend('Parabola y(x)', 'Roots');
    hold off;
else
    disp('Note: The roots are complex numbers, so they cannot be plotted on the real 2D x-axis.');
end
