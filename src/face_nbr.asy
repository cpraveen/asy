size(200,0);

pair p1 = (0,0);
pair p2 = (-1,1);

pen pc = linewidth(2);
pen pt = linewidth(0.8);
pen pb = linewidth(6);

draw(p1--p2,pc);
draw(p1--p2,pt,MidArrow);
dot(p1,pb);
dot(p2,pb);
label("vertex[0]",p1,SE);
label("vertex[1]",p2,NW);

// lcell
pair s  = 0.2*(1,1);
pair q1 = p1 - s;
pair q2 = p2 - s;
pair q3 = (-2,-1);
pair q4 = (-1,-1.5);
draw(q1--q2--q3--q4--cycle,pt);
label("lcell",0.25*(q1+q2+q3+q4));
draw(Label("$\xi$",MidPoint),q3--q4,pt,MidArrow);
draw(Label("$\eta$",MidPoint),q3--q2,pt,MidArrow);

//rcell
pair r1 = p1 + s;
pair r2 = p2 + s;
pair r3 = (+1.5,+1);
pair r4 = (+0.5,+1.5);
draw(r1--r2--r4--r3--cycle,pt);
label("rcell",0.25*(r1+r2+r3+r4));
draw(Label("$\xi$",MidPoint),r1--r3,pt,MidArrow);
draw(Label("$\eta$",MidPoint),r1--r2,pt,MidArrow);
