size(300,0);

pair z1 = (0.2, 0.2);
pair z2 = (0.4, 0.4);
pair z3 = (0.6, 0.3);

pen pt = blue + linewidth(1.3);
draw(z1--z2--z3--cycle, pt);

pen pd = linewidth(4);
dot(z1,pd);
dot(z2,pd);
dot(z3,pd);

label("$1$", z2, N);
label("$2$", z1, W);
label("$3$", z3, E);
label("$K$", (z1+z2+z3)/3);

draw(Label("$x$",EndPoint), (0,0)--(0.7,0), Arrow);
draw(Label("$y$",EndPoint), (0,0)--(0,0.5), Arrow);

pair a1 = (1.0,0);
pair a2 = a1 + (0.3,0);
pair a3 = a1 + (0,0.3);


draw(Label("$\hat{x}$",EndPoint), a1--(a1+(0.5,0.0)), Arrow);
draw(Label("$\hat{y}$",EndPoint), a1--(a1+(0.0,0.5)), Arrow);

draw(a1--a2--a3--cycle, pt);
dot(a1,pd);
dot(a2,pd);
dot(a3,pd);

label("$1$", a3, W);
label("$2$", a1, SW);
label("$3$", a2, NE);
label("$\hat{K}$", (a1+a2+a3)/3);
