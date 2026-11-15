clear
clc

% Part A: Define polynomial vector and calculate height at specific times
p = [-5, 40, 0];
zaman_ha = [0, 2, 4, 6];
ertefa_ha = polyval(p, zaman_ha);

disp('--- Part A: Ertefa Dar Lahzat Mokhtalef ---');
for i = 1:length(zaman_ha)
    fprintf('t = %d sec ---> h(t) = %.2f m\n', zaman_ha(i), ertefa_ha(i));
end

% Part B: Find when the projectile hits the ground (zero height roots)
zaman_rizesh = roots(p);
disp('--- Part B: Zaman-ha-ye Barخورد ba Zamin (Roots) ---');
disp(zaman_rizesh);

% Part C: Multiply two factors using conv and compare with p
amel_1 = [1, -8];
amel_2 = [1, 0]; % Represents (t) which is equivalent to (t - 0)
% Wait, the question states: h = 5*t*(t - 8) which expands to -5*t^2 + 40*t
% So the factors corresponding to -5*t*(t-8) or 5*t*(8-t) are checked via conv:
zarb_avamel = conv([5, 0], [8, 1]); % checking equivalence with p coefficients
disp('--- Part C: Zarh-e Amamel ba conv ---');
disp(zarb_avamel);

% Part D: Calculate maximum height time and maximum height using vertex formula and polyval
% For h(t) = a*t^2 + b*t + c, vertex time is t = -b / (2*a)
a = p(1);
b = p(2);
zaman_oj = -b / (2 * a);
ertefa_oj = polyval(p, zaman_oj);

fprintf('\n--- Part D: Ras-e Sahmi (Oje Partabe) ---\n');
fprintf('Zaman-e Oje Parvaz = %.2f seconds\n', zaman_oj);
fprintf('Ertefa-ye Bishineh = %.2f meters\n', ertefa_oj);
