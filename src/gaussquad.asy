size(0,100);

// corner points
pair p1 = (-1,-1);
pair p2 = (+1,-1);
pair p3 = (+1,+1);
pair p4 = (-1,+1);

real a = 1.0/sqrt(3.0);
real[] x = {-a, 0, +a};
int n = 3; // number of gauss points

// boundary gauss points
pen pd = linewidth(5);
for(int i=0; i<n; ++i)
{
   dot((x[i],-1),pd);
   dot((x[i],+1),pd);
   dot((-1,x[i]),pd);
   dot((+1,x[i]),pd);
}

// interior gauss points
for(int i=0; i<n; ++i)
   for(int j=0; j<n; ++j)
      label("$\circ$",(x[i],x[j]));

draw(p1--p2--p3--p4--cycle);

pair p5 = (1.5,0.25);
label("$\circ$ cell quadrature points", p5, E);

pair p6 = p5 - (0, 0.5);
label("$\bullet$ face quadrature points", p6, E);
