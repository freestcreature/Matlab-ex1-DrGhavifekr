clear
clc

% Part A: Data definition
tolid_roozane = 402;
gheymat_kWh = 5000;
rooz_mah = 30;
rooz_sal = 365;

% Part B: Calculations
daramad_mahane = tolid_roozane * rooz_mah * gheymat_kWh;
daramad_salane = tolid_roozane * rooz_sal * gheymat_kWh;

% Part C: Formatted printing (Use %% to print the % sign if needed)
fprintf('Mahane Income: %0.2f Toman\n', daramad_mahane);
fprintf('Salane Income: %0.2f Toman\n', daramad_salane);
% Nokte: Baraye chap-e alamat % dar fprintf bayad az %% estefade konid (Mesal: fprintf('Bazdeh: 95%%\n');)

% Part D: Workspace and format comparison
who

disp('--- Format Short Output ---');
format short;
natije_short = 10 / 3;
disp(natije_short);

disp('--- Format Long Output ---');
format long;
natije_long = 10 / 3;
disp(natije_long);
