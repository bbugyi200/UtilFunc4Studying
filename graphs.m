%% Data
syms t;
u(t) = t^(exp(1) - exp(t^(1/11.7))); % Instantaneous Utility
U = int(u); % Total Utility
p(t) = int(u, 0, t)/t; % Productivity

% Domain Ranges
D = [0 10];
D2 = linspace(0.01, 10);

% (xmax, ymax) is the global maximum of the productivity function p(t)
rVals = double(p(D2));
indexmax = find(max(rVals) == rVals);
xmax = D2(indexmax);
ymax = rVals(indexmax);

%% Plot
Fig1 = figure();


% Plots the instantaneous utility function, u(t)
Sub1 = subplot(3,1,1);
fplot(u, D);
title('\bf Marginal Utility $u(t)$', 'interpreter', 'latex');
xlabel('Time ($t$) in Hours', 'interpreter', 'latex');
ylabel('Marginal Utility', 'interpreter', 'latex');


% Plots the total utility function , U(t)
Sub2 = subplot(3,1,2);
fplot(U, D, 'g');
title('\bf Total Utility $U(t) = \int u(t)dt$', 'interpreter', 'latex');
xlabel('Time ($t$) in Hours', 'interpreter', 'latex');
ylabel('Total Utility', 'interpreter', 'latex');

% Labels the points at t = 1,2,...,9,10
for k = 1 : 10
    X = k;
    Y = double(int(u, 0, k));
    str = sprintf('(%.2f, %.2f)', X, Y);
    text(X, Y, str);
end


% Plot of productivity function, p(t)
Sub3 = subplot(3,1,3);
plot(D2, rVals, 'r', xmax, ymax, 'r*');
title('\bf Productivity Ratio $\frac{U(t)}{t}$', 'interpreter', 'latex');
xlabel('Time ($t$) in Hours', 'interpreter', 'latex');
ylabel('Productivity Ratio', 'interpreter', 'latex');

% Labels the global maximum of the productivity function, p(t)
str = sprintf('Max Productivty Point = (%.1f, %.2f)', xmax, ymax);
text(xmax-0.5, ymax-0.05, str, 'VerticalAlignment', 'top');
