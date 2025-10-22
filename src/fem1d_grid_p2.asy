import graph;
size(300,0);

real dy = 0.02;
int i;
real xmin=0;
real xmax=1;
int n=6;
real h = (xmax-xmin)/n;

pen pt = linewidth(1);

draw((xmin,0)--(xmax,0),pt);

i=3;
real x1 = xmin + i*h;
real x2 = x1 + h;
label("$j$", (x1,-dy), S);
label("$j+1$", (x2,-dy), S);
label("$I_j$", ((x1+x2)/2,dy), N);

dot((x1,0.2));
dot((x2,0.2));
dot(((x1+x2)/2,0.2));

real x3 = x1 - 0.5*h;
real x4 = x1 + 0.5*h;
real x5 = x2 + 0.5*h;
real A=0.2;

real f1(real x)
{
   return A*(x-x4)*(x-x2)/((x1-x4)*(x1-x2));
}

real f2(real x)
{
   return A*(x-x1)*(x-x2)/((x4-x1)*(x4-x2));
}

real f3(real x)
{
   return A*(x-x1)*(x-x4)/((x2-x1)*(x2-x4));
}

draw(graph(f1,x1,x2),red+linewidth(1));
draw(graph(f2,x1,x2),blue+linewidth(1));
draw(graph(f3,x1,x2),magenta+linewidth(1));

for(i=0; i<n+1; ++i)
{
   real x1 = xmin + i*h;
   dot(x1);
   draw((x1,-dy)--(x1,dy));
}

for(i=0; i<n; ++i)
{
   real x1 = xmin + i*h + 0.5*h;
   dot(x1);
}

