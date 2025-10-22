size(200,200);

pair p1 = (0,0);
pair p2 = (1,0);
pair p3 = (1,1);
pair p4 = (0,1);

draw(p1--p2--p3--p4--cycle);
label("$K$",0.25*(p1+p2+p3+p4));

pair shift = (2,0);
pair p5 = p1 + shift;
pair p6 = p2 + shift;
pair p7 = p3 + shift;
pair p8 = p4 + shift;
pair p9 = 0.5*(p5 + p6);
pair p10= 0.5*(p7 + p8);
pair p11= 0.5*(p5 + p8);
pair p12= 0.5*(p6 + p7);
pair p13 = 0.25*(p5+p6+p7+p8);

draw(p5--p6--p7--p8--cycle);
draw(p9--p10);
draw(p11--p12);

label("$A$", 0.25*(p5+p9+p11+p13));
label("$B$", 0.25*(p9+p13+p6+p12));
label("$C$", 0.25*(p11+p13+p10+p8));
label("$D$", 0.25*(p13+p12+p7+p10));

draw((1.1,0.5)--(1.9,0.5), Arrow);
