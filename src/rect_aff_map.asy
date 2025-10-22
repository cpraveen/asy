size(300,0);

pair z1 = (0.2, 0.2);
pair z2 = (0.6, 0.3);
pair z4 = (0.4, 0.5);
pair z3 = z2 + (z4-z1); 

pen pt = blue + linewidth(1.3);
draw(z1--z2--z3--z4--cycle, pt);

pen pd = linewidth(4);
dot(z1,pd);
dot(z2,pd);
dot(z3,pd);
dot(z4,pd);

label("$1$", z1, S);
label("$2$", z2, S);
label("$3$", z3, E);
label("$4$", z4, N);
label("$K$", 0.25*(z1+z2+z3+z4));

draw(Label("$x$",EndPoint), (0,0)--(0.7,0), Arrow);
draw(Label("$y$",EndPoint), (0,0)--(0,0.5), Arrow);

pair a1 = (1.5,0);
pair a2 = a1 + (0.3,0);
pair a3 = a1 + (0.3,0.3);
pair a4 = a1 + (0,0.3);


draw(Label("$\hat{x}$",EndPoint), a1--(a1+(0.4,0.0)), Arrow);
draw(Label("$\hat{y}$",EndPoint), a1--(a1+(0.0,0.5)), Arrow);

draw(a1--a2--a3--a4--cycle, pt);

dot(a1,pd);
dot(a2,pd);
dot(a3,pd);
dot(a4,pd);

label("$1$", a1, S);
label("$2$", a2, S);
label("$3$", a3, NE);
label("$4$", a4, NE);
label("$\hat{K}$", 0.25*(a1+a2+a3+a4));

pair p1 = a1 + (-0.1,0.15);
pair p2 = p1 + (-0.5,0.30);
draw(Label("$F_K$",MidPoint), p1--p2, Arrow);
