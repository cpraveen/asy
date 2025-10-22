size(0,100);

pair p1 = (0,0);
pair p2 = (1,0);
pair p3 = (1,1);
pair p4 = (0,1);
pair p5 = (-1,0);
pair p6 = (-1,1);

draw(p1--p2--p3--p4--cycle);
draw(p1--p5--p6--p4);

pair q1 = (0,0.2);
pair q2 = (0,0.5);
pair q3 = (0,0.8);
dot(q1);
dot(q2);
dot(q3);

label("$\bar{w}^L$", 0.25*(p1+p4+p5+p6));
label("$\bar{w}^R$", 0.25*(p1+p2+p3+p4));
label("$w_q^L$", q3, W);
label("$w_q^R$", q3, E);

