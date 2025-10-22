import graph;
size(200,0);

pen pf = red+linewidth(2);

pair p1 = (1,1);
draw(Label("$\frac{dx}{dt}=a$",MidPoint), (0,0)--p1, pf);

label("$u=u_l$", (-0.25,0.5));
label("$u=u_r$", (+1.0,0.5));

xaxis("$x$", Arrow);
yaxis("$t$", Arrow);

