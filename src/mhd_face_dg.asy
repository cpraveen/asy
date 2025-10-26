size(200,0);

pen pc = linewidth(2);

draw((0,0)--(1,0)--(1,1)--(0,1)--cycle,pc);
draw((1,0)--(2,0)--(2,1)--(1,1),pc);
//draw((1,1)--(1,2)--(0,2)--(0,1),pc);

marker m1 = marker(scale(4)*unitcircle,red,Fill);
marker m2 = marker(scale(6)*polygon(3),magenta,Fill);
marker m3 = marker(scale(5)*polygon(4),blue,Fill);

label("$(U^L,b_x,B_y^L)$  ", (1.0,0.5), W);
label("  $(U^R,b_x,B_y^R)$", (1.0,0.5), E);
//dot((1,0.5),linewidth(5));
draw((1,0.5),m1);

//label("$(U^D,B_x^D,b_y)$", (0.5,1.0-0.05), S);
//label("$(U^U,B_x^U,b_y)$", (0.5,1.0+0.05), N);
//dot((0.5,1.0),linewidth(5));
//draw((0.5,1.0),m2);

draw((1.0,0.0),m3);
draw((1.0,1.0),m3);

pair p1 = (2.2,0.55);
draw(p1,m1);
label(" $\hat{E}_z$",p1,E);

pair p3 = (2.2,0.35);
draw(p3,m3);
label(" $\tilde{E}_z$",p3,E);
