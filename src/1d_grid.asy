size(400,0);

real xmin = 1.2;
real xmax = 2.2;
real ymax = 0.0;
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
   dot((i*dx,0.5),linewidth(8));
}
label("$h$", (5.5*dx,0.48), S);
draw((5*dx,0.5)--(5*dx,0.4));
draw((6*dx,0.5)--(6*dx,0.4));
draw((4*dx,0.45)--(5*dx,0.45), Arrow);
draw((7*dx,0.45)--(6*dx,0.45), Arrow);

real yl = 0.48;
label("$0$", (0,yl), S, red);
label("$1$", (dx,yl), S);
label("$2$", (2*dx,yl), S);
label("$N-2$", ((ni-3)*dx,yl), S);
label("$N-1$", ((ni-2)*dx,yl), S);
label("$N$", ((ni-1)*dx,yl), S, red);

label("$x=0$", (0,0.5), N);
label("$x=1$", (1,0.5), N);

