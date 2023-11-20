
pkg load symbolic

a = 0;

c_0 = 0;
d_0 = 0;
theta_0 = 0;

syms x(t) y(t) theta(t) f(t)

f(t) = sin(t);

ode1 = diff(x) == cos(theta);
ode2 = diff(y) == sin(theta);
ode3 = diff(theta) == f;

odes = [ode1; ode2; ode3];

cond1 = x(a) == c_0;
cond2 = y(a) == d_0;
cond3 = theta(0) == theta_0;

conds = [cond1; cond2; cond3];

[xx(t), yy(t), theta_(t)] = dsolve(odes, conds);

RESOLUTION = 1000;
syms x(t) y(t)

fig_1 = figure()

t_ = linspace(-18, 18, RESOLUTION);
x_ = ParametricPlot(RESOLUTION, xx, t, t_);
y_ = ParametricPlot(RESOLUTION, yy, t, t_);

plot(x_, y_);
