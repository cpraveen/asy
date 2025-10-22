import graph;
size(350,0);

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
real cfl= 0.5;
real dy = cfl*(ymax-ymin)/(nj-1);

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

label("$i-1$", (xmin+2*dx,ymin),S);
label("$i$", (xmin+3*dx,ymin),S);
label("$i+1$", (xmin+4*dx,ymin),S);

label("$t_{n}$", (xmin,ymin+dy), W);
label("$t_{n+1}$", (xmin,ymin+2*dy), W);

real xj = xmin + 3*dx;
real yj = ymin + 2*dy;
dot((xj,yj));

// advection speed
real a = 1.0;
real xf = xj - a*dy;
real yf = yj - dy;
dot((xf,yf),magenta);

draw((xj,yj)--(xf,yf),red);

//label("$A$", (xj-dx,yj-dy), SW);
label("$f$", (xf,yf), S);
//label("$C$", (xj,yj-dy), SE);

//label("$x_f - x_{i-1} = \Delta x - \bar{u} \Delta t$", (xmax+dx,ymin+2*dy), E);
//label("$x_i - x_f = \bar{u}\Delta t$", (xmax+dx,ymin+1*dy), E);

label("$\Delta x$", (xmin+2.5*dx,ymin+3*dy), N);
label("$\Delta t$", (xmin+6.0*dx,ymin+1.5*dy), E);
draw((xmin+2*dx,ymin+3*dy)--(xmin+3*dx,ymin+3*dy), Arrows);
draw((xmin+6*dx,ymin+dy)--(xmin+6*dx,ymin+2*dy), Arrows);
