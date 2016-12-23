%% Data
syms t;
u(t) = t^(exp(1) - exp(t^(1/11.7)));
U = int(u);
e(t) = int(u, 0, t)/t;

D = [0 10];
D2 = linspace(0.01, 10);

rVals = double(e(D2));
indexmax = find(max(rVals) == rVals);
xmax = D2(indexmax);
ymax = rVals(indexmax);

%% Plot
Fig1 = figure();


Sub1 = subplot(3,1,1);
fplot(u, D);
title('\bf Marginal Utility $u(t)$', 'interpreter', 'latex');
xlabel('Time ($t$) in Hours', 'interpreter', 'latex');
ylabel('Instantaneous Utility', 'interpreter', 'latex');


Sub2 = subplot(3,1,2);
fplot(U, D, 'g');
title('\bf Total Utility $U(t) = \int u(t)dt$', 'interpreter', 'latex');
xlabel('Time ($t$) in Hours', 'interpreter', 'latex');
ylabel('Total Utility', 'interpreter', 'latex');

for k = 1 : 10
    X = k;
    Y = double(int(u, 0, k));
    str = sprintf('(%.2f, %.2f)', X, Y);
    text(X, Y, str);
end


Sub3 = subplot(3,1,3);
plot(D2, rVals, 'r', xmax, ymax, 'r*');
title('\bf Efficiency Ratio $\frac{U(t)}{t}$', 'interpreter', 'latex');
xlabel('Time ($t$) in Hours', 'interpreter', 'latex');
ylabel('Efficiency Ratio', 'interpreter', 'latex');

str = sprintf('Max Efficiency Point = (%.1f, %.2f)', xmax, ymax);
text(xmax-0.5, ymax-0.05, str, 'VerticalAlignment', 'top');