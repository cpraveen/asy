import graph;
size(150,150);

pair p1 = (1,1);
pair p2 = (0.5,0);

draw(p1--p2,red+linewidth(1.5));
dot(p1);
dot(p2);
label("$(x,t)$", p1, N);
label("$x_0$", p2, S);
label("$\frac{dx}{dt}=a$",(p1+p2)/2,E);

xaxis("$x$",Arrow);
yaxis("$t$",Arrow);
