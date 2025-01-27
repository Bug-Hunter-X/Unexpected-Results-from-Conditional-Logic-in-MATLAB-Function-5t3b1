function result = myFunction(x)
  if x > 5
    result = x^2;
  else
    result = x + 10;
  end
end

%Improved version with explicit type checking and error handling
function result = myFunctionImproved(x)
  if ~isnumeric(x)
    error('Input must be a number.');
  end
  if x > 5
    result = x^2;  %Ensure precedence is clear if needed
  elseif x <= 5 && x >=0 %add explicit check for 0 or negative values if needed
    result = x + 10;
  else
    result = 0; %handle the negative case explicitly
  end
end

% Test cases
values = [2, 6, 10, 0, -2];
for i = 1:length(values)
  output = myFunctionImproved(values(i));
  fprintf('Input: %d, Output: %d\n', values(i), output);
end