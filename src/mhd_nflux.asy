size(200,0);

pen pc = linewidth(2);

pair x1 = (0.0,0.0);
pair x2 = (1.0,0.0);
pair x3 = (1.0,1.0);
pair x4 = (0.0,1.0);
draw(x1--x2--x3--x4--cycle,pc);

// Space Gauss Points
real[] yg = {
             0.2,
             1.0/2.0,
             0.8
            };

marker m1 = marker(scale(4)*unitcircle,red,Fill);
marker m2 = marker(scale(6)*polygon(3),magenta,Fill);
marker m3 = marker(scale(5)*polygon(4),blue,Fill);

for(int i=0; i<3; ++i)
{
   draw((1.0,yg[i]),   m1);
   draw((0.0,yg[i]),   m1);
   draw((yg[i],0.0),   m2);
   draw((yg[i],1.0),   m2);
}

draw((0,0),m3);
draw((1,0),m3);
draw((1,1),m3);
draw((0,1),m3);

pair p1 = (1.2,0.5);
draw(p1,m1);
label(" $\hat{E}_z,\hat{\bf F}_x$",p1,E);

pair p2 = (1.2,0.35);
draw(p2,m2);
label(" $\hat{E}_z,\hat{\bf F}_y$",p2,E);

pair p3 = (1.2,0.65);
draw(p3,m3);
label(" $\tilde{E}_z$",p3,E);

