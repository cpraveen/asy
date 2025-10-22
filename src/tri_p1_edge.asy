size(100,100);

pair p1 = (0,0);
pair p2 = (1.0,0.25);
pair p3 = (0.5,1.0);

draw(p1--p2--p3--cycle, linewidth(2));

pen pd = red + linewidth(5);

dot( 0.5*(p1+p2), pd);
dot( 0.5*(p2+p3), pd);
dot( 0.5*(p3+p1), pd);
