//size(300,0);
size(500,500);

real xmin = 0.0;
real xmax = 1.0;
real ymax = 0.05;
int nv = 10; //number of cells
int nf = nv-1; //number of faces

pen thick = linewidth(1.5);
pen bface = linewidth(2.0);
draw((xmin,0)--(xmax,0), thick);

pair[] zv = new pair[nv];

real xv = 0;
real dx=(xmax-xmin)/(nv-1);
for(int i=0; i<nv; ++i){
   zv[i] = (xv,0);
   xv = xv + dx;
}

dot(zv,linewidth(5));

pair[] zf = new pair[nf];
real xf=0.5*dx;
for(int i=0; i<nf; ++i){
   zf[i] = (xf,0);
   draw( (xf,-ymax)--(xf,+ymax) );
   xf = xf + dx;
}

label("$0$", zv[0], S);
label("$1$", zv[1], S);
label("$n-1$", zv[nv-2], S);
label("$n$", zv[nv-1], S);

int j = 5;
label("$j$", zv[j], S);
label("$j-1$", zv[j-1], S);
label("$j+1$", zv[j+1], S);
label("$j-1/2$", zv[j]+(-dx/2,-ymax), S);
label("$j+1/2$", zv[j]+(+dx/2,-ymax), S);
label("$\Omega_j$", zv[j]+(0,ymax), N);
draw(zv[j]+(-dx/2,+ymax)--zv[j]+(+dx/2,+ymax), Arrows );

label("$x=0$", zv[0], N);
label("$x=1$", zv[nv-1], N);
