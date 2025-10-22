size(300,300);

pair p1 = (0,0);
pair p2 = (1.0,0.25);
pair p3 = (0.75,1.0);
pair p4 = (0.25,1.2);

draw(p1--p2--p3--p4--cycle, linewidth(2));

pen pd = red + linewidth(4);

dot(p1, pd);
dot(p2, pd);
dot(p3, pd);
dot(p4, pd);

label("$u_1$", p1, SW);
label("$u_2$", p2, SE);
label("$u_3$", p3, NE);
label("$u_4$", p4, NW);

label("$K$", 0.25*(p1+p2+p3+p4));

pair s  = (3.0, 0.0);
real sc = 0.5;
pair q1 = sc*(-1,-1) + s;
pair q2 = sc*(+1,-1) + s;
pair q3 = sc*(+1,+1) + s;
pair q4 = sc*(-1,+1) + s;

pair r1 = sc*(-1.5,0.0) + s;
pair r2 = sc*(+1.5,0.0) + s;
pair r3 = sc*(0.0,-1.5) + s;
pair r4 = sc*(0.0,+1.5) + s;
draw(Label("$\xi$", EndPoint), r1--r2, Arrow);
draw(Label("$\eta$", EndPoint), r3--r4, Arrow);

draw(q1--q2--q3--q4--cycle, linewidth(2));
dot(q1, pd);
dot(q2, pd);
dot(q3, pd);
dot(q4, pd);

label("$u_1$", q1, SW);
label("$u_2$", q2, SE);
label("$u_3$", q3, NE);
label("$u_4$", q4, NW);
