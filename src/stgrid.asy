size(300,0);

real xmin = -2.0;
real xmax = +2.0;
real ymax = 2.0;
pen axis  = linewidth(0.8);
draw(Label("$x$",EndPoint), (1.2*xmin,0)--(1.2*xmax,0), axis, Arrow);
draw(Label("$t$",EndPoint), (0,0)--(0,1.2*ymax), axis, Arrow);

int ni = 15;
int nj = 10;
real dx = (xmax-xmin)/(ni-1);
real dy = (ymax-0.0)/(nj-1);

pen pg = blue;

//vertical lines
for(int i=1; i<ni-1; ++i){
   guide g;
   for(int j=0; j<nj; ++j){
      real x = xmin + i*dx;
      real y = 0.0 + j*dy;
      g = g--(x,y);
   }
   draw(g,pg);
   dot(g);
}

//horixontal lines
for(int j=0; j<nj-1; ++j){
   guide g;
   for(int i=0; i<ni; ++i){
      real x = xmin + i*dx;
      real y = 0.0 + j*dy;
      g = g--(x,y);
   }
   draw(g,pg);
   dot(g);
}

draw( Label("$j$",EndPoint), (xmin,-dy)--(xmin+3*dx,-dy), Arrow);
draw( Label("$n$",EndPoint), (xmin-dx,dy)--(xmin-dx,4*dy), Arrow);

real x1 = xmin + 10*dx;
real y1 = -dy;

draw( (x1-2*dx,y1)--(x1,y1), Arrow);
draw( (x1+3*dx,y1)--(x1+dx,y1), Arrow);
draw( (x1,y1-0.5*dy)--(x1,y1+0.5*dy));
draw( (x1+dx,y1-0.5*dy)--(x1+dx,y1+0.5*dy));
label("$\Delta x$", (x1+0.5*dx,y1));

real x2 = xmax + dx;
real y2 = 3*dy;
draw( (x2,y2-2*dy)--(x2,y2), Arrow);
draw( (x2,y2+3*dy)--(x2,y2+dy), Arrow);
draw( (x2-0.5*dx,y2)--(x2+0.5*dx,y2) );
draw( (x2-0.5*dx,y2+dy)--(x2+0.5*dx,y2+dy) );
label("$\Delta t$", (x2,y2+0.5*dy));
