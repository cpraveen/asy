size(200,0);

pen pp = linewidth(2);

pair p1 = (0,0);
pair p2 = (0.5,0.25);
pair p3 = (0.8,0.2);
pair p4 = (0.9,0.5);
pair p5 = (0.7,1.2);
pair p6 = (0.4,1.2);
pair p7 = (-0.1,1.0);
pair p8 = (0.1,0.5);

draw(p1..p2..p3, pp);
draw(p3..p4..p5, pp);
draw(p5..p6..p7, pp);
draw(p7..p8..p1, pp);

draw(Label("$F_K$",MidPoint), (1.4,0.5)--(1.0,0.8), Arrow);

label("$0$", p1, S);
label("$1$", p3, S);
label("$3$", p5, N);
label("$2$", p7, W);
label("$K$",(0.5,0.7));
