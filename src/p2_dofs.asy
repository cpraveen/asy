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
