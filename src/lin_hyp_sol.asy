import graph;
size(300,0);

real f(real x) 
{ 
   if(x<0 || x>2*pi)
      return 0;
   else
      return sin(x); 
}

real u(real x) 
{ 
   real x0 = x - 1.0;
   if(x0<0 || x0>2*pi)
      return 0;
   else
      return sin(x0); 
}

xaxis("$x$", 0,3.0*pi, Arrow);
yaxis(-1,1.5, Arrow);

draw(graph(f,-0.5,2.8*pi), red+linewidth(2));
draw(graph(u,-0.5,2.8*pi), blue+linewidth(2));

label("$f(x)$", (1.00,f(1.00)), NW, red);
label("$u(x,t)$", (3.5,u(3.5)), NE, blue);

draw(Label("$at$",MidPoint,S), (1.5*pi,f(1.5*pi)-0.2)--(1.5*pi+1,u(1.5*pi+1)-0.2), Arrows);
draw((1.5*pi,f(1.5*pi))--(1.5*pi,f(1.5*pi)-0.4));
draw((1.5*pi+1,u(1.5*pi+1))--(1.5*pi+1,u(1.5*pi+1)-0.4));
