size(350,0);

real xmin = 0.0;
real xmax = 1.0;
real ymin = 0.0;
real ymax = 1.0;
pen axis  = linewidth(0.8);
draw(Label("$x$",EndPoint), (1.2*xmin,0)--(1.2*xmax,0), axis, Arrow);
draw(Label("$y$",EndPoint), (0,0)--(0,1.2*ymax), axis, Arrow);

int ni = 6;
int nj = 6;
real dx = (xmax-xmin)/(ni-1);
real dy = (ymax-0.0)/(nj-1);

pen pg = blue;

//vertical lines
for(int i=1; i<ni; ++i){
   guide g;
   for(int j=0; j<nj; ++j){
      real x = xmin + i*dx;
      real y = 0.0 + j*dy;
      g = g--(x,y);
   }
   draw(g,pg);
   //dot(g);
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
   //dot(g);
}

for(int i=1; i<ni; ++i)
   for(int j=1; j<nj; ++j)
   {
      real x = xmin + (i-1)*dx + 0.5*dx;
      real y = ymin + (j-1)*dy + 0.5*dy;
      label("$p$",(x,y));
   }

for(int i=1; i<ni; ++i)
   for(int j=1; j<=nj; ++j)
   {
      real x = xmin + (i-1)*dx + 0.5*dx;
      real y = ymin + (j-1)*dy;
      label(Label("$v$",Fill(white)),(x,y));
   }

for(int i=1; i<=ni; ++i)
   for(int j=1; j<nj; ++j)
   {
      real x = xmin + (i-1)*dx;
      real y = ymin + (j-1)*dy + 0.5*dy;
      label(Label("$u$",Fill(white)),(x,y));
   }

/*
pen pd = red+linewidth(4);
for(int j=0; j<nj; ++j){
  real y = 0.0 + j*dy;
  dot((xmin,y),pd);
  dot((xmax,y),pd);
}
for(int i=0; i<ni; ++i){
  real x = xmin + i*dx;
  dot((x,0),pd);
  dot((x,ymax),pd);
}
*/


real x1 = xmin + 3*dx;
real y1 = -0.75*dy;

draw( (x1-dx,y1)--(x1,y1), Arrow);
draw( (x1+2*dx,y1)--(x1+dx,y1), Arrow);
draw( (x1,y1-0.5*dy)--(x1,y1+0.5*dy));
draw( (x1+dx,y1-0.5*dy)--(x1+dx,y1+0.5*dy));
label("$\Delta x$", (x1+0.5*dx,y1));

real x2 = xmax + 0.75*dx;
real y2 = 3*dy;
draw( (x2,y2-dy)--(x2,y2), Arrow);
draw( (x2,y2+2*dy)--(x2,y2+dy), Arrow);
draw( (x2-0.5*dx,y2)--(x2+0.5*dx,y2) );
draw( (x2-0.5*dx,y2+dy)--(x2+0.5*dx,y2+dy) );
label("$\Delta y$", (x2,y2+0.5*dy));

draw( Label("$i$",EndPoint), (xmin,y1)--(xmin+dx,y1), Arrow);
draw( Label("$j$",EndPoint), (xmin-0.75*dx,dy)--(xmin-0.75*dx,2*dy), Arrow);
