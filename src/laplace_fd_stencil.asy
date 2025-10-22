size(200,200);

pair p0 = (0,0);
pair p1 = (-1,0);
pair p2 = (+1,0);
pair p3 = (0,-1);
pair p4 = (0,+1);

pen pp = linewidth(1.5);
pen pt = linewidth(8);

dot(p0,pt);
dot(p1,pt);
dot(p2,pt);
dot(p3,pt);
dot(p4,pt);

draw(p1--p2,pp);
draw(p3--p4,pp);

label("$(j,k)$", p0, SE);
label("$(j-1,k)$", p1, W);
label("$(j+1,k)$", p2, E);
label("$(j,k-1)$", p3, S);
label("$(j,k+1)$", p4, N);
