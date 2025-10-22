size(350,0);

pair p0=(0,0);
pair p1=(-1,0);
pair p2=(+1,0);
pair p3=(0,-1);
pair p4=(0,+1);
pair p5=(-1,-1);
pair p6=(-1,+1);
pair p7=(+1,+1);
pair p8=(+1,-1);

pen pp = linewidth(6);

dot(p0, pp);
dot(p1, pp);
dot(p2, pp);
dot(p3, pp);
dot(p4, pp);
dot(p5, pp);
dot(p6, pp);
dot(p7, pp);
dot(p8, pp);

draw(p1--p2);
draw(p3--p4);
draw(p5--p6);
draw(p6--p7);
draw(p5--p8);
draw(p8--p7);

label("$(j,k)$", p0, SE);
label("$(j-1,k)$", p1, W);
label("$(j+1,k)$", p2, E);
label("$(j,k-1)$", p3, S);
label("$(j,k+1)$", p4, N);
label("$(j-1,k-1)$", p5, SW);
label("$(j-1,k+1)$", p6, NW);
label("$(j+1,k+1)$", p7, NE);
label("$(j+1,k-1)$", p8, SE);
