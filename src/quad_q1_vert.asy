size(100,100);

pair p1 = (0,0);
pair p2 = (1.0,0.25);
pair p3 = (0.75,1.0);
pair p4 = (0.25,1.2);

draw(p1--p2--p3--p4--cycle, linewidth(2));

pen pd = red + linewidth(5);

dot( p1, pd);
dot( p2, pd);
dot( p3, pd);
dot( p4, pd);
