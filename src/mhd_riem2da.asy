size(270,0);

real sw = -1.0;
real se =  0.8;
real ss = -0.6;
real sn =  0.7;

pen pc = linewidth(2);

real L = 2.2;
path s1 = (-L,0)--(0,0)--(0,L)--(-L,L)--cycle;
filldraw(s1,green+opacity(0.5));
path s2 = (0,0)--(L,0)--(L,L)--(0,L)--cycle;
filldraw(s2,red+opacity(0.5));
path s3 = (-L,0)--(0,0)--(0,-L)--(-L,-L)--cycle;
filldraw(s3,blue+opacity(0.5));
path s4 = (0,0)--(L,0)--(L,-L)--(0,-L)--cycle;
filldraw(s4,cyan+opacity(0.5));

draw(Label("$x$",1),(-1.1*L,0)--(1.1*L,0),linewidth(1.0)+dashed+red,Arrow);
draw(Label("$y$",1),(0,-1.1*L)--(0,1.1*L),linewidth(1.0)+dashed+red,Arrow);

label("$b_y^w$",(-1.0,0),UnFill);
label("$b_y^e$",( 1.0,0),UnFill);
label("$b_x^s$",( 0.0,-1.0),UnFill);
label("$b_x^n$",( 0.0, 1.0),UnFill);

label(rotate(-45)*"$\mathcal{U}^{sw}=(U^{sw},b_x^s,b_y^w)$",(-1.2,-1.0));
label(rotate(+45)*"$\mathcal{U}^{nw}=(U^{nw},b_x^n,b_y^w)$",(-1.2, 1.0));
label(rotate(+45)*"$\mathcal{U}^{se}=(U^{se},b_x^s,b_y^e)$",( 1.2,-1.0));
label(rotate(-45)*"$\mathcal{U}^{ne}=(U^{ne},b_x^n,b_y^e)$",( 1.2, 1.0));
