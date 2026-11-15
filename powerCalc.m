function [P, S] = powerCalc(V, I, pf)
    % Calculate Active Power (P) and Apparent Power (S)
    S = V * I;
    P = S * pf;
end
