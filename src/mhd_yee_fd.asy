size(200,0);

pen pc = linewidth(2);

draw((0,0)--(1,0)--(1,1)--(0,1)--cycle,pc);

marker m1 = marker(scale(4)*unitcircle,red,Fill);
marker m2 = marker(scale(6)*polygon(3),magenta,Fill);
marker m3 = marker(scale(5)*polygon(4),blue,Fill);

label(rotate(90)*"$(B_x)_{i+1/2,j}$  ", (1.0,0.5), E);
label(rotate(90)*"$(B_x)_{i-1/2,j}$  ", (0.0,0.5), W);
label("$(B_y)_{i,j-1/2}$  ", (0.5,0.0), S);
label("$(B_y)_{i,j+1/2}$  ", (0.5,1.0), N);

label(rotate(-45)*"$(E_z)_{i+1/2,j+1/2}$",(1,1),NE);
label(rotate(+45)*"$(E_z)_{i+1/2,j-1/2}$",(1,0),SE);
label(rotate(-45)*"$(E_z)_{i-1/2,j-1/2}$",(0,0),SW);
label(rotate(+45)*"$(E_z)_{i-1/2,j+1/2}$",(0,1),NW);

draw((0.5,0.0),m1);
draw((0.5,1.0),m1);
draw((0,0.5),m2);
draw((1,0.5),m2);

draw((0,0),m3);
draw((1,0),m3);
draw((1,1),m3);
draw((0,1),m3);
