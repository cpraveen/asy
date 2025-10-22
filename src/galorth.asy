import geometry;
import graph;

size(200,0);

xaxis(-1,1);
yaxis(-1,1);

label("$V$", (-0.5,0.5));
draw(Label("$V_h$",EndPoint), (-1,-1)--(1,1), red+linewidth(1.2));

pair uh = (0.5,0.5);
dot(uh, linewidth(2.5));
label("$u_h$", uh, SE, red);

pair u = (0.5,0.5) + rotate(90)*0.5*(0.5,0.5);

draw(Label("$u$", EndPoint), uh--u, dashed);
dot(u);

perpendicular(uh,SE,uh--u);
