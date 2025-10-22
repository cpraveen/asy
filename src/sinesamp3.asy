
import graph;

size(300,300);

real xmin = 0.0;
real xmax = 2*pi;
real ymax = 1.5;
pen axis  = linewidth(0.8);
draw(Label("$x$",EndPoint), (-0.1,0)--(1.2*xmax,0), axis, Arrow);
draw(Label("$u(x)$",EndPoint), (0,-0.1)--(0,ymax), axis, Arrow);

real u0(real x){
   return sin(x);
}

int np=200;
real dx = (xmax-xmin)/(np-1);
path u;

pen cur = linewidth(1.2) + red;
draw(graph(u0,xmin,xmax),cur);

guide us;
int ns = 8;
real dx = (xmax - xmin)/(ns-1);

for(int i=0; i<ns; ++i){
   real x = xmin + i*dx;
   real y = u0(x);
   us = us--(x,y);
   draw((x,0)--(x,y), dashed);
   dot((x,0));
}

pen cir = linewidth(5) + blue;
pen cir2= linewidth(1) + blue;
dot(us, cir);
draw(us,cir2);
