import graph;
size(350,0);

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

label("$t_{n+1}$", (0,1), W, red);
label("$t_{n}$", (0,0.5), W, red);

label("$\mathcal{K}_i^n$", 0.25*(p1+p2+p3+p4), blue);
label("$x_{i-\frac{1}{2}}^n$", p1, S, black);
label("$x_{i+\frac{1}{2}}^n$", p3, S, black);
label("$x_{i-\frac{1}{2}}^{n+1}$", p2, N, black);
label("$x_{i+\frac{1}{2}}^{n+1}$", p4, N, black);

//label("$K_i^n$", 0.5*(p1+p3), S, red);
//label("$K_i^{n+1}$", 0.5*(p2+p4), N, red);

//label("$Q_{i-\frac{1}{2}}^n$", 0.5*(p1+p2), E, red);
//label("$Q_{i+\frac{1}{2}}^{n}$", 0.5*(p3+p4), E, red);

pair orig = (4,1);
real L = 1.0;
pair r1 = orig - (L,0);
pair r2 = orig + (L,0);
pair r3 = orig - (0,L);
pair r4 = orig + (0,L);
draw(Label("$\xi_1$", EndPoint), r1--r2, Arrow);
draw(Label("$\xi_0$", EndPoint), r3--r4, Arrow);

real s = L/2;
pair s1 = orig + (-s,-s);
pair s2 = orig + (s,-s);
pair s3 = orig + (s,s);
pair s4 = orig + (-s,s);
draw(s1--s2--s3--s4--cycle, blue+linewidth(2));
label("$\hat{\mathcal{K}}$", orig+(s/2,s/2), blue);

label("$(-1,-1)$", s1, SW);
label("$(+1,-1)$", s2, SE);
label("$(+1,+1)$", s3, NE);
label("$(-1,+1)$", s4, NW);

//draw((1.5,0.75){NE}..{SE}(orig+(-0.2,0.2)));
draw(Label("$T_i^n$", MidPoint), (orig+(-0.2,0.2))--(1.4,0.75), orange, Arrow);
