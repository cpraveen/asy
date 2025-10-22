size(200,200);

pen pr = linewidth(2.5) + red;
pen pb = linewidth(2.5) + blue;
real L = 3;
real dx = 3;
real dy = 3;

pair A = (0,-dy/2);
pair B = (0, dy/2);
draw(A--B);
label(Label("$u_{i,j}$",Fill(white)), midpoint(A--B));

pair C = (-dx,-dy/2);
draw(A--C);
label(Label("$v_{i-1,j}$",Fill(white)), midpoint(A--C), pb);

pair D = (+dx,-dy/2);
draw(A--D);
label(Label("$v_{i,j}$",Fill(white)), midpoint(A--D), pb);

pair E = (+dx,dy/2);
draw(D--E);
label(Label("$u_{i+1,j}$",Fill(white)), midpoint(D--E));

draw(B--E);
label(Label("$v_{i,j+1}$",Fill(white)), midpoint(B--E), pb);

pair F = (-dx,dy/2);
draw(B--F);
label(Label("$v_{i-1,j+1}$",Fill(white)), midpoint(B--F), pb);

draw(C--F);
label(Label("$u_{i-1,j}$",Fill(white)), midpoint(C--F));

pair G = (0,-3*dy/2);
draw(A--G);
label(Label("$u_{i,j-1}$",Fill(white)), midpoint(A--G));

pair H = (0,+3*dy/2);
draw(B--H);
label(Label("$u_{i,j+1}$",Fill(white)), midpoint(B--H));

draw(H--(-dx,3*dy/2)--F);
draw(H--(+dx,3*dy/2)--E);
draw(G--(-dx,-3*dy/2)--C);
draw(G--(+dx,-3*dy/2)--D);

label("$p_{i,j}$",(dx/2,0),pr);
label("$p_{i-1,j}$",(-dx/2,0),pr);
