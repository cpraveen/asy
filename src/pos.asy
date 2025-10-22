import graph;
size(350,350);

real eps = 0.1;

xaxis("$\rho$", -0.3, 1.5, black, Arrow);
yaxis("$w_2, w_3$", -1.1, 1.1, black, Arrow);
label("$O$",(0,0),SW);

pair p1 = (eps, -1.0);
pair p2 = (eps, +1.0);
pair p3 = (0.5, +0.7);
pair p4 = (1.0,  0.0);
pair p5 = (0.5, -0.7);

draw(p1--p2, blue+linewidth(2));
draw(p2..p3..p4..p5..p1, red+linewidth(2));

draw((-0.2,0.2)--(0.0,0.2), Arrow);
draw((eps+0.2,0.2)--(eps,0.2), Arrow);
label("$\epsilon$", (0.5*eps,0.2));

label("$\mathcal{U}^\epsilon_{\textrm{ad}}$", (0.5,-0.3));
draw(Label("$\partial\mathcal{U}^\epsilon_{\textrm{ad}}$",BeginPoint), 
     (0.75,-0.75)--p5, Arrow);

pair p10 = (0.5,0.5);
pair p11 = (0.75,0.75);
label("$\bar{\mathbf w}_i$", p10, S);
label("$\hat{\mathbf w}_{i,q}$", p11, N);
draw(p10--p11);
dot(p10);
dot(p11);
real t = 0.55;
pair p12 = t*p10+(1-t)*p11;
dot(p12);
label("$(1-t_q)\bar{\mathbf w}_i+ t_q\hat{\mathbf w}_{i,q}$", p12+(0.02,0), E);
