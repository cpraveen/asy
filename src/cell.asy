size(100,0);

pen pc = linewidth(2);

pair x1 = (0.0,0.0);
pair x2 = (1.0,0.0);
pair x3 = (1.0,1.0);
pair x4 = (0.0,1.0);
draw(x1--x2--x3--x4--cycle,pc);

//label("$e_\xi^+$",(1,0.5),E);
//label("$e_\xi^-$",(0,0.5),W);
//label("$e_\eta^-$",(0.5,0),S);
//label("$e_\eta^+$",(0.5,1),N);
label("$\hat{K}$",(0.5,0.5));

label("$0$", (0,0), SW);
label("$1$", (1,0), SE);
label("$2$", (0,1), NW);
label("$3$", (1,1), NE);
