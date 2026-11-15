function n3 = norm3(v)
    % Calculate the 3-norm of a vector using a loop and accumulator
    sum_val = 0;
    for i = 1:length(v)
        sum_val = sum_val + abs(v(i))^3;
    end
    n3 = sum_val ^ (1/3);
end
