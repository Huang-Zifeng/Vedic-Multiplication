function result = myrandi(n)
    result = '';
    for i = 1:n
        ak = randi([0, 9]); % Generate a random integer between 0 and 9
        result = strcat(result, num2str(ak)); % Append the digit to the result string
    end
end