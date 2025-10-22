import graph;

size(200,200);

real dx = 1.0;
real dy = 0.1;

pair p1 = (0,0);
pair p2 = (dx,0);
pair p3 = (2*dx,0);
pair p4 = (3*dx,0);

pen thick = linewidth(2);
draw(p1--p4, thick);

draw( (0,-dy)--(0,dy) );
draw( (dx,-dy)--(dx,dy) );
draw( (2*dx,-dy)--(2*dx,dy) );
draw( (3*dx,-dy)--(3*dx,dy) );

label("$i-\frac{1}{2}$", (dx,-dy), S);
label("$i+\frac{1}{2}$", (2*dx,-dy), S);
label("$I_{i-1}$",0.5*(p1+p2), N);
label("$I_{i}$",0.5*(p2+p3), N);
label("$I_{i-1}$",0.5*(p3+p4), N);

real u1(real x) 
{ 
   return 1.0 + 0.1*x*x;
}

real u2(real x) 
{ 
   return 1.2 + 0.1*x*x;
}

real u3(real x) 
{ 
   return 1.4 + 0.1*x*x;
}

pen gp = linewidth(2)+red;
draw(graph(u1,0,dx), gp);
draw(graph(u2,dx,2*dx), gp);
draw(graph(u3,2*dx,3*dx), gp);
