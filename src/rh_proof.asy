size(200,0);

real r = 1;
draw(circle((0,0),r));

real x1 = -0.7;
real y1 = -sqrt(r*r - x1*x1);
dot((x1,y1));

real x2 = +0.5;
real y2 = sqrt(r*r - x2*x2);
dot((x2,y2));

dot((0,0));

draw(Label("$\Gamma$", BeginPoint), (-1.7,-1.5)..(x1,y1)..(0,0)..(x2,y2)..(1.5,1.5));

label("$D_1$", (-0.5,0.5));
label("$D_2$", (+0.5,-0.5));
label("$Q_1$", (x1,y1), S);
label("$Q_2$", (x2,y2), E);
label("$P$", (0,0), SE);
