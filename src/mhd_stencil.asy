size(300,0);

pen pc = linewidth(2);

pair x1 = (0.0,0.0);
pair x2 = (1.0,0.0);
pair x3 = (1.0,1.0);
pair x4 = (0.0,1.0);
draw(x1--x2--x3--x4--cycle,pc);

// right cell
pair x5 = (2, 0);
pair x6 = (2, 1);
draw(x2--x5--x6--x3,pc);

// top cell
pair x7 = (1,2);
pair x8 = (0,2);
draw(x3--x7--x8--x4,pc);

// left cell
pair x9 = (-1,0);
pair x10 = (-1,1);
draw(x1--x9--x10--x4,pc);

// bottom cell
pair x11 = (0,-1);
pair x12 = (1,-1);
draw(x1--x11--x12--x2,pc);

label(rotate(90)*"$b_x^+$",(1,0.5),W);
label(rotate(90)*"$b_x^-$",(0,0.5),E);
label("$b_y^-$",(0.5,0),N);
label("$b_y^+$",(0.5,1),S);

label("$U^c$",(0.5,0.55),N);
label("$B_{x}^c$",(0.5,0.5));
label("$B_{y}^c$",(0.5,0.45),S);

label("$U^e$",(0.5,0.55)+(1,0),N);
label("$B_{x}^e$",(0.5,0.5)+(1,0));
label("$B_{y}^e$",(0.5,0.45)+(1,0),S);

label("$U^n$",(0.5,0.55)+(0,1),N);
label("$B_{x}^n$",(0.5,0.5)+(0,1));
label("$B_{y}^n$",(0.5,0.45)+(0,1),S);

label("$U^w$",(0.5,0.55)+(-1,0),N);
label("$B_{x}^w$",(0.5,0.5)+(-1,0));
label("$B_{y}^w$",(0.5,0.45)+(-1,0),S);

label("$U^s$",(0.5,0.55)+(0,-1),N);
label("$B_{x}^s$",(0.5,0.5)+(0,-1));
label("$B_{y}^s$",(0.5,0.45)+(0,-1),S);
