clear
clc
close all

% Part A: Create a 5-element vector with rand and plot a red bar chart
daily_usage = rand(1, 5);

figure(1);
bar(daily_usage, 'r');
title('Daily Home Electricity Usage (5 Days)');
xlabel('Day');
ylabel('Electricity Consumption (Normalized)');
grid on;

% Part B: Plot a simple pie chart for home electricity consumption shares
shares = [22, 28, 8, 33, 11];
labels = {'Cooling', 'Water Heater', 'Lighting', 'Other Appliances', 'Device Charging'};

figure(2);
pie(shares);
title('Home Electricity Consumption Share (Simple Pie Chart)');

% Part C: Explode the largest share (Other Appliances = 33%) and add labels
% The 4th element is the largest (33), so we set the 4th element of explode vector to 1
explode = [0, 0, 0, 1, 0];

figure(3);
pie(shares, explode, labels);
title('Home Electricity Consumption Share (With Labels and Explode)');
