clear
clc
close all

% Part A: Plot y1 and y2 on a single figure with different colors, LineWidth, legend, and title
t1 = 0:0.1:5;
y1 = sin(t1) .* (cos(t1).^2) ./ (t1.^2 + 1);
y2 = sqrt(t1.^3) .* exp(2);

figure(1);
plot(t1, y1, 'b', 'LineWidth', 1.5);
hold on;
plot(t1, y2, 'r--', 'LineWidth', 2);
title('Part A: Comparison of y1(t) and y2(t)');
legend('y1(t)', 'y2(t)');
% Part D requirements applied to this figure (xlabel, ylabel, grid on)
xlabel('Time (t)');
ylabel('Amplitude');
grid on;

% Part B: Plot f, Z, and k in three separate panels using subplot
x = -2:0.05:2;
f = sin(x).^2 + sinh(x).^2;
Z = cos(x).^2 + cosh(x).^2;
k = x.^2 + 2 .* x .* sin(x);

figure(2);
subplot(3, 1, 1);
plot(x, f, 'g', 'LineWidth', 1.5);
title('f(x) = sin^2(x) + sinh^2(x)');
grid on;

subplot(3, 1, 2);
plot(x, Z, 'm', 'LineWidth', 1.5);
title('Z(x) = cos^2(x) + cosh^2(x)');
grid on;

subplot(3, 1, 3);
plot(x, k, 'k', 'LineWidth', 1.5);
title('k(x) = x^2 + 2x*sin(x)');
xlabel('x');
grid on;

% Part C: Plot continuous carrier wave and discrete sampled signal using subplot and stem
t_cont = 0:0.001:2;
s_cont = sin(2 * pi * 3 * t_cont);

t_disc = 0:0.1:2;
s_disc = sin(2 * pi * 3 * t_disc);

figure(3);
subplot(2, 1, 1);
plot(t_cont, s_cont, 'b', 'LineWidth', 1.5);
title('Continuous Carrier Signal s(t)');
ylabel('Amplitude');
grid on;

subplot(2, 1, 2);
stem(t_disc, s_disc, 'r', 'LineWidth', 1.5);
title('Sampled Discrete Signal (step = 0.1)');
xlabel('Time (t)');
ylabel('Amplitude');
grid on;
