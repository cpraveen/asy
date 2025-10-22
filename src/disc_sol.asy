import graph;
size(300,0);

pen pf = red+linewidth(2);

draw(Label("$u_l$", N), (-1,1)--(0,1), pf);
draw(Label("$u_r$", E), (0,0.5)--(1,0.5), pf);

label("Initial Condition", (-1,1.2));

xaxis("$x$", Arrow);
yaxis("$f$", Arrow);

