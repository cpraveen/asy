import graph;
size(150,0);

xaxis("$x$",0,1.2,Arrow);
yaxis("$y$",0,1.2,Arrow);

pair a1=(0,0);
pair a2=(1,0);
pair a3=(1,1);
pair a4=(0,1);

draw(a1--a2--a3--a4--cycle, red+linewidth(1.3));

pen pd = linewidth(4);
dot(a1,pd);
dot(a2,pd);
dot(a3,pd);
dot(a4,pd);

label("$p_1$", a1, SW);
label("$p_2$", a2, S);
label("$p_3$", a3, NE);
label("$p_4$", a4, W);
