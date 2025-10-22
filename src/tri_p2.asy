size(200,0);

pair a1 = (0,0);
pair a2 = (1,0.2);
pair a3 = (0.4,0.6);

pair a12=0.5*(a1+a2);
pair a23=0.5*(a2+a3);
pair a31=0.5*(a3+a1);

draw(a1--a2--a3--cycle, linewidth(1.2));

dot(a1,linewidth(4));
dot(a2,linewidth(4));
dot(a3,linewidth(4));

dot(a12,linewidth(4));
dot(a23,linewidth(4));
dot(a31,linewidth(4));

label("$a_1$", a1, SW);
label("$a_2$", a2, E);
label("$a_3$", a3, N);

label("$a_{12}$", a12, SE);
label("$a_{23}$", a23, NE);
label("$a_{13}$", a31, NW);
