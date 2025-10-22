size(300,0);

real xmin = 1.2;
real xmax = 2.2;
real ymax = 1.0;
pen axis  = linewidth(0.8);
//draw(Label("$x$",EndPoint), (1.2*xmin,0)--(1.2*xmax,0), axis, Arrow);
//draw(Label("$y$",EndPoint), (0,0)--(0,1.2*ymax), axis, Arrow);

int ni = 11;
int nj = 11;
real dx = (xmax-xmin)/(ni-1);
real dy = (ymax-0.0)/(nj-1);

draw((0,0.5)--(1,0.5));
for(int i=0; i<ni; ++i)
{
   dot((i*dx,0.5));
}
label("$h$", (5.5*dx,0.5), S);
draw((5*dx,0.5)--(5*dx,0.4));
draw((6*dx,0.5)--(6*dx,0.4));
draw((4*dx,0.45)--(5*dx,0.45), Arrow);
draw((7*dx,0.45)--(6*dx,0.45), Arrow);

pen pg = blue;

//vertical lines
for(int i=0; i<ni; ++i){
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
for(int j=0; j<nj; ++j){
   guide g;
   for(int i=0; i<ni; ++i){
      real x = xmin + i*dx;
      real y = 0.0 + j*dy;
      g = g--(x,y);
   }
   draw(g,pg);
   dot(g);
}


real x1 = xmin + 7*dx;
real y1 = -dy;

draw( (x1-2*dx,y1)--(x1,y1), Arrow);
draw( (x1+3*dx,y1)--(x1+dx,y1), Arrow);
draw( (x1,y1-0.5*dy)--(x1,y1+0.5*dy));
draw( (x1+dx,y1-0.5*dy)--(x1+dx,y1+0.5*dy));
label("$h$", (x1+0.5*dx,y1));

real x2 = xmax + dx;
real y2 = 3*dy;
draw( (x2,y2-2*dy)--(x2,y2), Arrow);
draw( (x2,y2+3*dy)--(x2,y2+dy), Arrow);
draw( (x2-0.5*dx,y2)--(x2+0.5*dx,y2) );
draw( (x2-0.5*dx,y2+dy)--(x2+0.5*dx,y2+dy) );
label("$h$", (x2,y2+0.5*dy));
