size(200,0);

pen pc = linewidth(2);

draw((-4,0)--(4,0),pc);
draw((0,-4)--(0,4),pc);

label("$\mathcal{U}^{DL}$", (-0.5,-0.5), SW);
label("$\mathcal{U}^{DR}$", (0.5,-0.5), SE);
label("$\mathcal{U}^{UL}$", (-0.5,0.5), NW);
label("$\mathcal{U}^{UR}$", (0.5,0.5), NE);
