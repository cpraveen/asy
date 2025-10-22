import graph;
size(300,300);

real c0 = 1.0;
real t = 1.0;

xaxis("$x$", Arrow);
yaxis("$t$", Arrow);

draw((1,0)--(1-c0*t,t),red+linewidth(2));
draw((1,0)--(1+c0*t,t),red+dashed+linewidth(2));

draw((2,0)--(2-c0*t,t),blue+linewidth(2));
draw((2,0)--(2+c0*t,t),blue+dashed+linewidth(2));

label("1",(1,0),S);
label("2",(2,0),S);
label("$l$", (0.25,0.5));
label("$r$", (2.75,0.5));
label("$m$", (1.5,0.25));
label("$a$", (1.0,0.5));
label("$b$", (1.5,0.75));
label("$c$", (2.0,0.5));
