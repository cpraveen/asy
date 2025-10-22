import graph;
size(300,0);

real f(real x) 
{ 
   if (x<1.0e-13)
      return 1.0;
   else
      return sin(x)/x;
}

xaxis("$w$", 0, 1.2*pi, Arrow);
yaxis("$\varepsilon_d$", 0,1.5, Arrow);

draw(graph(f,0.0,pi), red+linewidth(2));
draw((pi,0)--(pi,1.5), dashed);
draw((0,1)--(pi,1), blue+dashed);

label("$\pi$", (pi,0), S, red);
label("$1$", (0,1), W, red);
label("$0$", (0,0), S, red);
label("$\varepsilon_d = \frac{\sin w}{w}$", (0.5*pi,0.5), S, blue);

//label("$f(x)$", (1.00,f(1.00)), NW, red);
//label("$u(x,t)$", (3.5,u(3.5)), NE, blue);
