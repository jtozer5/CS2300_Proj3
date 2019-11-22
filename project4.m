careerYear = [1 2 3 4 5 6 7 8 9 10]';
incomeUSD = [5000 7500 15000 20000 66000 72000 74500 80000 82000 98000]';

plot(careerYear, incomeUSD, '*')

[p, S, mu] = polyfit(careerYear, incomeUSD, 3);

f = polyval(p, careerYear, S, mu);
hold on
plot(careerYear, f)
hold off

s = sprintf('y = (%.1f) x^3 + (%.1f) x^2 + (%.1f) x + (%.1f)',p(1),p(2),p(3),p(4));
disp('Formula: ')
disp(s)

prediction = (p(1)*15^3) + (p(2)*15^3) + (p(3)*15) + p(4);
disp('Prediction at 15 years: ');
disp(prediction);

