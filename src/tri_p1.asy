size(200,0);

pair a1 = (0,0);
pair a2 = (1,0.2);
pair a3 = (0.4,0.6);

draw(a1--a2--a3--cycle, linewidth(1.2));

dot(a1,linewidth(4));
dot(a2,linewidth(4));
dot(a3,linewidth(4));

label("$a_1$", a1, SW);
label("$a_2$", a2, E);
label("$a_3$", a3, N);
