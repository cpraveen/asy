import graph;
size(300,0);

real a = 2;

xaxis("$x$", 0, a, Arrow);
yaxis("$t$", 0, 1.5, Arrow);

draw((0,1)--(a,1), blue);
draw((0,0.5)--(a,0.5), blue);

pair p1 = (0.5, 0.5);
pair p2 = (0.6, 1.0);
pair p3 = (1.5, 0.5);
pair p4 = (1.7, 1.0);
draw(p1--p2--p4--p3--cycle, black+linewidth(2));

//draw(p1--(p1+0.6*(p2-p1)), linewidth(1.0), Arrow);
//draw(p3--(p3+0.6*(p4-p3)), linewidth(1.0), Arrow);

label("$t_{n+1}$", (0,1), W, red);
label("$t_{n}$", (0,0.5), W, red);

label("$\mathcal{K}_i^n$", 0.25*(p1+p2+p3+p4), blue);
label("$x_{i-\frac{1}{2}}^n$", p1, S, black);
label("$x_{i+\frac{1}{2}}^n$", p3, S, black);
label("$x_{i-\frac{1}{2}}^{n+1}$", p2, N, black);
label("$x_{i+\frac{1}{2}}^{n+1}$", p4, N, black);

label("$K_i^n$", 0.5*(p1+p3), S, red);
label("$K_i^{n+1}$", 0.5*(p2+p4), N, red);

label("$Q_{i-\frac{1}{2}}^n$", 0.5*(p1+p2), E, red);
label("$Q_{i+\frac{1}{2}}^{n}$", 0.5*(p3+p4), E, red);
