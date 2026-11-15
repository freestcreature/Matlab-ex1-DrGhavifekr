clear
clc
close all

% Draw 5 concentric circles with increasing radii
center = [0, 0];
radii = [1, 2, 3, 4, 5];
colors = {'b', 'r', 'g', 'm', 'k'};

figure(1);
for i = 1:length(radii)
    [x, y] = getCircle(center, radii(i));
    plot(x, y, colors{i}, 'LineWidth', 2);
    hold on;
end

title('Concentric Circles');
xlabel('x');
ylabel('y');
grid on;
axis equal;
hold off;
