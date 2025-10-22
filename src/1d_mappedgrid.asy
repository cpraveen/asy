size(200,0);

real xmin = 0.0;
real xmax = 1.0;
real y    = 0.1;
pen axis  = linewidth(0.8);

int ni = 21;
real dx = (xmax-xmin)/(ni-1);

draw((xmin,0)--(xmax,0));
draw((xmin,y)--(xmax,y));
for(int i=0; i<ni; ++i)
{
   real xi = i*dx;
   dot((xi,y),linewidth(2));
   real x = 0.5*(1 - cos(pi*xi));
   dot((x,0),linewidth(2));
}

label("$x$", (xmin,0), W);
label("$\xi$", (xmin,y), W);
