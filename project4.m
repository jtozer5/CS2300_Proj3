% Load data
careerYear = [1 2 3 4 5 6 7 8 9 10]';
incomeUSD = [5000 7500 15000 20000 66000 72000 74500 80000 82000 98000]';

% Create graph
plot(careerYear, incomeUSD, 'r*')
title('Cubic least-square regression for Engineer X')
ylabel('Income (USD)')
xlabel('Career Year (since 2010)')

% Generate the coefficients of the least squares fit
[p, S, mu] = polyfit(careerYear, incomeUSD, 3);

% Plot the least squares fit
f = polyval(p, careerYear, S, mu);
hold on
plot(careerYear, f)
hold off

% Display best fit curve formula
s = sprintf('y = (%.1f) x^3 + (%.1f) x^2 + (%.1f) x + (%.1f)',p(1),p(2),p(3),p(4));
disp('Formula: ')
disp(s)

% Calculate the estimate income at 15 years
prediction = (p(1)*15^3) + (p(2)*15^2) + (p(3)*15) + p(4);
disp('Prediction at 15 years: ');
disp(prediction);

