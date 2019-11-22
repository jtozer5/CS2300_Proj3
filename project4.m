careerYear = [1 2 3 4 5 6 7 8 9 10]';
incomeUSD = [5000 7500 15000 20000 66000 72000 74500 80000 82000 98000]';
T = table(careerYear, incomeUSD);

plot(careerYear, incomeUSD, '*')

[p, S, mu] = polyfit(careerYear, incomeUSD, 3);

f = polyval(p, careerYear, S, mu);
hold on
plot(careerYear, f)
hold off
