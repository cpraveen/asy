size(200,200);

// corner points
pair p1 = (-1,-1);
pair p2 = (+1,-1);
pair p3 = (+1,+1);
pair p4 = (-1,+1);

real a = 1.0/sqrt(3.0);
real[] x = {-a, 0, +a};
int n = 3; // number of gauss points

draw(p1--p2--p3--p4--cycle);
label("$K$", 0.25*(p1+p2+p3+p4));

pair p5 = (-3,-1);
pair p6 = (-3,+1);
pair p7 = (-2,-1);
pair p8 = (-2,+1);
pair p9 = (-1,0);
pair p10= (-3,0);
pair p11= (-3,+3);
pair p12= (-1,+3);
pair p13= (+1,+3);
pair p14= (+5,+3);
pair p15= (+5,-1);
pair p16= (-3,-3);
pair p17= (-1,-3);
pair p18= (+1,-3);
pair p19= (+5,-3);
pair p20= (+3,-3);
pair p21= (+3,-1);

draw(p1--p5--p6--p4);
draw(p7--p8);
draw(p9--p10);
draw(p6--p11--p12--p13--p14);
draw(p4--p12);
draw(p3--p13--p14--p15--p2);
draw(p5--p16--p17--p18--p19--p15);
draw(p1--p17);
draw(p2--p18);
draw(p20--p21);

label("$S_K$", (0,-2));
label("$N_K$", (0,+2));
label("$E_K$", (+2,0));
label("$W_K$", (-2,0));

path E = p3--(+3,+1)--p21--p2--cycle;
filldraw(E,pink,dashed);

path W = p1--p4--p6--p5--cycle;
filldraw(W,pink,dashed);

path S = p1--p2--p18--p17--cycle;
filldraw(S,pink);

path N = p3--p4--p12--p13--cycle;
filldraw(N,pink);
