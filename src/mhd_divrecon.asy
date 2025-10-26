size(200,0);

pen pc = linewidth(2);

pair x1 = (0.0,0.0);
pair x2 = (1.0,0.0);
pair x3 = (1.0,1.0);
pair x4 = (0.0,1.0);
draw(x1--x2--x3--x4--cycle,pc);

label(rotate(90)*"$b_x^+(\eta)$",(1,0.5),W);
label(rotate(90)*"$b_x^-(\eta)$",(0,0.5),E);
label("$b_y^-(\xi)$",(0.5,0),N);
label("$b_y^+(\xi)$",(0.5,1),S);

label("$B_x(\xi,\eta)$",(0.5,0.5),N);
label("$B_y(\xi,\eta)$",(0.5,0.5),S);
