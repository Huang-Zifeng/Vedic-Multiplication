function [myans] = vedicmultiply(a, b)
    % vedicmultiply computes the product a*b 
    % vedcimultiply computes the product of the numbers a*b where 
    % a and b are input as strings (to allow for long integers) 
    % usage: a='12345'; b='123' c=vedicmultiply(a,b) 
    % myans is a list containing all the digits of the answer
     
    % Convert input strings into numeric arrays of digits
    a = arrayfun(@(x) str2double(x), a);
    b = arrayfun(@(x) str2double(x), b);
    
    % Initialize digit array
    digit = zeros(1, length(a) + length(b));
    product = 0;
    
    % Perform Vedic multiplication algorithm
    for i = 1:length(b)
        for j = 1:length(a)
            digit(i+j-1) = digit(i+j-1) + b(i) * a(j);
        end
    end
    digit = digit(1:end-1);
    % disp(digit);
    for i = 1:length(digit)
        product = product + digit(i) * 10^(length(digit) - i);
    end
    [myans] = num2str(product);
end