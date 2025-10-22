import graph;
size(350,0);

real a = 2;
real xmin = -0.5;

xaxis("$x$", xmin, a, red, Arrow);
yaxis("$t$", 0, 1.5, red, Arrow);

draw((xmin,1)--(a,1), blue);
draw((xmin,0.5)--(a,0.5), blue);

draw((0.5,0)--(0.5,1.5), black);
draw((1.5,0)--(1.5,1.5), black);

pair p1 = (0.5, 0.5);
pair p2 = (0.5, 1.0);
pair p3 = (1.5, 0.5);
pair p4 = (1.5, 1.0);
draw(p1--p2--p4--p3--cycle, black+linewidth(2));

draw(Label("$(-1,0)$",EndPoint), (1,0.5)--(1,0.3), Arrow);
draw(Label("$(+1,0)$",EndPoint), (1,1.0)--(1,1.2), Arrow);
draw(Label("$(0,-1)$",EndPoint), (0.5,0.75)--(0.3,0.75), Arrow);
draw(Label("$(0,+1)$",EndPoint), (1.5,0.75)--(1.7,0.75), Arrow);

label("$t_{n+1}$", (0,1), NW, red);
label("$t_{n}$", (0,0.5), NW, red);

label("$\mathcal{K}_i^n$", 0.25*(p1+p2+p3+p4), blue);
label("$x_{i-\frac{1}{2}}$", (0.5,0), S, black);
label("$x_{i+\frac{1}{2}}$", (1.5,0), S, black);
//label("$x_{i-\frac{1}{2}}^{n+1}$", p2, N, black);
//label("$x_{i+\frac{1}{2}}^{n+1}$", p4, N, black);

label("$K_i$", (1,0), S, red);
//label("$K_i^{n+1}$", 0.5*(p2+p4), N, red);

//label("$Q_{i-\frac{1}{2}}^n$", 0.5*(p1+p2), E, red);
//label("$Q_{i+\frac{1}{2}}^{n}$", 0.5*(p3+p4), E, red);
