function result = myFunction(x)
  if x > 5
    result = x^2;
  else
    result = x + 10;
  end
end

% Test cases
values = [2, 6, 10, 0, -2];
for i = 1:length(values)
  output = myFunction(values(i));
  fprintf('Input: %d, Output: %d\n', values(i), output);
end