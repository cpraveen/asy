import graph;
size(300,0);

real dy = 0.02;
int i;
real xmin=0;
real xmax=1;
int n=5;
real h = (xmax-xmin)/n;

pen pt = linewidth(1);

draw((xmin,0)--(xmax,0),pt);

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

label("$0$", (xmin+0.0*h,-0.02), S);
label("$1$", (xmin+0.5*h,-0.02), S);
label("$2$", (xmin+1.0*h,-0.02), S);
label("$3$", (xmin+1.5*h,-0.02), S);
label("$4$", (xmin+2.0*h,-0.02), S);
label("$5$", (xmin+2.5*h,-0.02), S);
label("$6$", (xmin+3.0*h,-0.02), S);
label("$7$", (xmin+3.5*h,-0.02), S);
label("$8$", (xmin+4.0*h,-0.02), S);
label("$9$", (xmin+4.5*h,-0.02), S);
label("$10$", (xmin+5.0*h,-0.02), S);

label("$I_0$", (xmin+0.0*h+0.5*h,+0.02), N);
label("$I_1$", (xmin+1.0*h+0.5*h,+0.02), N);
label("$I_2$", (xmin+2.0*h+0.5*h,+0.02), N);
label("$I_3$", (xmin+3.0*h+0.5*h,+0.02), N);
label("$I_4$", (xmin+4.0*h+0.5*h,+0.02), N);

// local numbers for I_2
label("$0$", (xmin+2.0*h,-0.06), S, brown);
label("$1$", (xmin+2.5*h,-0.06), S, brown);
label("$2$", (xmin+3.0*h,-0.06), S, brown);

// Now draw basis functions
i=2;
real x1 = xmin + i*h;
real x2 = x1 + h;
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

label("$\phi_4=\hat{\varphi}_0$",(x1,0.25),left,red);
label("$\phi_5=\hat{\varphi}_1$",(x4,0.25),blue);
label("$\phi_6=\hat{\varphi}_2$",(x2,0.25),right,magenta);
