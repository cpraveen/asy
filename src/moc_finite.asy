//import graph;
size(300,0);

pen pp = red+linewidth(1.5);

//xaxis("$x$",Arrow);
//yaxis("$t$",Arrow);

real a = 1;

pair p1 = (1.5,1);
pair p2 = (p1.x-a*p1.y,0);

draw(p1--p2,pp);
dot(p1);
dot(p2);
//label("$(x,t)$", p1, N);
//label("$x_0$", p2, S);
//label("$\frac{dx}{dt}=a$",(p1+p2)/2,E);

pair p3 = (2,0.5);
pair p4 = (p3.x-a*p3.y, 0);
draw(p3--p4, pp);
dot(p3);
dot(p4);

pair p5 = (0.5,1);
pair p6 = (0,p5.x);
draw(p5--p6, pp);
dot(p5);
dot(p6);

draw(Label("$x$",EndPoint), (0,0)--(2.5,0), Arrow);
draw(Label("$t$",EndPoint), (0,0)--(0,2.0), Arrow);
draw((2,0)--(2,2));

label("$u(x,0)=f(x)$", (1,0), S);
label("$u(0,t)=g(t)$", (0,1), W);
label("$0$", (0,0), S);
label("$1$", (2,0), S);
