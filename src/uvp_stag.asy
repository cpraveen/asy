size(100,100);

pen pr = linewidth(2.5) + red;
pen pb = linewidth(2.5) + blue;
real L = 3;
real dx = 3;
real dy = 3;

pair A = (0,-dy/2);
pair B = (0, dy/2);
draw(A--B);
//label("$u_{i,j}$", midpoint(A--B), align=Center, filltype=Fill);
label(Label("$u_{i,j}$",Fill(white)), midpoint(A--B));

pair D = (+dx,-dy/2);
draw(A--D);
label(Label("$v_{i,j}$",Fill(white)), midpoint(A--D), pb);

pair E = (+dx,dy/2);
draw(D--E);
label(Label("$u_{i+1,j}$",Fill(white)), midpoint(D--E));

draw(B--E);
label(Label("$v_{i,j+1}$",Fill(white)), midpoint(B--E), pb);

label("$p_{i,j}$",(dx/2,0),pr);
