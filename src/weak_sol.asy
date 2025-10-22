import graph;
size(300,0);

pen pc =  opacity(0.5, "Compatible") + grey;
path c = arc((0,0), 0.5, 0, 180);
c = c--cycle;
filldraw(c, pc, linewidth(1.5));

xaxis("$x$", -1.5, 1.5, Arrow);
yaxis("$t$", 0, 1.5, Arrow);

pair p1 = (-1,0);
pair p2 = (-1,1);
pair p3 = (+1,1);
pair p4 = (+1,0);

draw(p1--p2--p3--p4);
label("$T$", 0.5(p2+p3), NE);
label("$a$", p1, S);
label("$b$", p4, S);
label("$O$", (0,0), S);

pair pl = (1,1.3);
draw(pl--(0.4,sqrt(0.5*0.5-0.4*0.4)), Arrow);
label("Supp($\phi$)", pl, N);
