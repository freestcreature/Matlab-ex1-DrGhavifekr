clear
clc

% Part A: Complex division and printing in standard a + bi form
z_div = (2 + 3*i) / (3 - 4*i);
real_div = real(z_div);
imag_div = imag(z_div);

fprintf('--- Part A Results ---\n');
if imag_div >= 0
    fprintf('Result = %.4f + %.4fi\n', real_div, imag_div);
else
    fprintf('Result = %.4f - %.4fi\n', real_div, abs(imag_div));
end

% Part B: Calculate impedance Z for given R, L, C, and f
R = 10;
L = 0.1;
C = 2e-4;
f = 50;

w = 2 * pi * f;
Z = R + 1i * (w * L - 1 / (w * C));

real_Z = real(Z);
imag_Z = imag(Z);

fprintf('\n--- Part B Results ---\n');
fprintf('Impedance Z = %.4f + %.4fi\n', real_Z, imag_Z);
fprintf('Real part (real) = %.4f\n', real_Z);
fprintf('Imaginary part (imag) = %.4f\n', imag_Z);

% Part C: Magnitude (abs) and phase angle in degrees
mag_Z = abs(Z);
phase_rad = angle(Z);
phase_deg = phase_rad * (180 / pi);

fprintf('\n--- Part C Results ---\n');
fprintf('Magnitude (abs) = %.4f\n', mag_Z);
fprintf('Phase angle (degrees) = %.4f degrees\n', phase_deg);
