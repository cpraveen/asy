size(500,500);

real xmin = 0.0;
real xmax = 1.0;
real ymax = 0.05;
int nc = 10; //number of cells
int nf = nc+1; //number of faces

pen thick = linewidth(1.5);
pen bface = linewidth(2.0);
draw((xmin,0)--(xmax,0), thick);

real xf = 0;
real dx=(xmax-xmin)/(nf-1);
pair[] zf = new pair[nf];
for(int i=0; i<nf; ++i){
   zf[i] = (xf,0);
   if(i==0 || i==nf-1)
      draw( (xf,-ymax)--(xf,+ymax), bface );
   else
      draw( (xf,-ymax)--(xf,+ymax) );
   xf = xf + dx;
}

label("$\frac{1}{2}$", (xmin,-ymax), S);
label("$N+\frac{1}{2}$", (xmax,-ymax), S);

//draw(Label("Boundary face", BeginPoint), (-0.2,-0.2)--(0.0,-0.05), Arrow);
//draw(Label("Boundary face", BeginPoint), (xmax+0.2,-0.2)--(xmax,-0.05), Arrow);

pair[] zc = new pair[nc];
for(int i=0; i<nc; ++i)
   zc[i] = 0.5*(zf[i] + zf[i+1]);


label("$1$", zc[0], S);
label("$N$", zc[nc-1], S);

int j = 5;
label("$i$", zc[j], S);
label("$i-1$", zc[j-1], S);
label("$i+1$", zc[j+1], S);
label("$i-\frac{1}{2}$", zc[j]+(-dx/2,-ymax), S);
label("$i+\frac{1}{2}$", zc[j]+(+dx/2,-ymax), S);
label("$I_i$", zc[j]+(0,ymax), N);
draw(zc[j]+(-dx/2,+ymax)--zc[j]+(+dx/2,+ymax), Arrows );

label("$x=0$", (xmin,ymax), N);
label("$x=1$", (xmax,ymax), N);
