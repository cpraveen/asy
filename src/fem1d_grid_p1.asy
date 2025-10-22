size(300,0);

real xmin=0;
real xmax=1;
int n=10;
real h = (xmax-xmin)/n;

pen pt = linewidth(1);

draw((xmin,0)--(xmax,0),pt);
label("$x_0$",(xmin,-0.02),S);
label("$x_N$",(xmax,-0.02),S);

real dy = 0.02;
int i;
for(i=0; i<n+1; ++i)
{
   real x1 = xmin + i*h;
   dot(x1);
   draw((x1,-dy)--(x1,dy));
}

i=5;
real x1 = xmin + i*h;
real x2 = x1 + h;
label("$j$", (x1,-dy), S);
label("$j+1$", (x2,-dy), S);
label("$I_j$", ((x1+x2)/2,dy), N);
