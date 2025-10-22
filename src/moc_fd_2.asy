import graph;
size(300,0);

xaxis("$x$",Arrow);
yaxis("$t$",Arrow);

real xmin = 0.5;
real xmax = 2.5;
real ymin = 0.2;
real ymax = 1.2;
pen axis  = linewidth(0.8);

int ni = 7;
int nj = 4;
real dx = (xmax-xmin)/(ni-1);
real dy = (ymax-ymin)/(nj-1);

pen pg = blue;

//vertical lines
for(int i=1; i<ni-1; ++i){
   guide g;
   for(int j=0; j<nj; ++j){
      real x = xmin + i*dx;
      real y = ymin + j*dy;
      g = g--(x,y);
   }
   draw(g,pg);
   dot(g);
}

//horixontal lines
for(int j=1; j<nj-1; ++j){
   guide g;
   for(int i=0; i<ni; ++i){
      real x = xmin + i*dx;
      real y = ymin + j*dy;
      g = g--(x,y);
   }
   draw(g,pg);
   dot(g);
}

label("$j-1$", (xmin+2*dx,ymin),S);
label("$j$", (xmin+3*dx,ymin),S);
label("$j+1$", (xmin+4*dx,ymin),S);

label("$t^{n}$", (xmin,ymin+dy), W);
label("$t^{n+1}$", (xmin,ymin+2*dy), W);

real xj = xmin + 3*dx;
real yj = ymin + 2*dy;
dot((xj,yj));

real xf = xj - 1.5*dy;
real yf = yj - dy;
dot((xf,yf),magenta);

draw((xj,yj)--(xf,yf),red);

//label("$A$", (xj-dx,yj-dy), SW);
label("$f$", (xf,yf), S);
//label("$C$", (xj,yj-dy), SE);

label("$h$", (xmin+2.5*dx,ymin+3*dy), N);
label("$\Delta t$", (xmin+6.0*dx,ymin+1.5*dy), E);

draw((xmin+2*dx,ymin+3*dy)--(xmin+3*dx,ymin+3*dy), Arrows);
draw((xmin+6*dx,ymin+dy)--(xmin+6*dx,ymin+2*dy), Arrows);
