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
filldraw(s3,green+opacity(0.5));
path s4 = (0,0)--(L,0)--(L,-L)--(0,-L)--cycle;
filldraw(s4,red+opacity(0.5));

draw(Label("$x$",1),(-1.1*L,0)--(1.1*L,0),linewidth(1.0)+dashed+red,Arrow);
draw(Label("$y$",1),(0,-1.1*L)--(0,1.1*L),linewidth(1.0)+dashed+red,Arrow);

//label("$b_y^w$",(-1.0,0),UnFill);
//label("$b_y^e$",( 1.0,0),UnFill);
//label("$b_x^s$",( 0.0,-1.0),UnFill);
//label("$b_x^n$",( 0.0, 1.0),UnFill);

label("$\mathcal{U}^{sw}=\mathcal{U}^L$",(-1.2,-1.0));
label("$\mathcal{U}^{nw}=\mathcal{U}^L$",(-1.2, 1.0));
label("$\mathcal{U}^{se}=\mathcal{U}^R$",( 1.2,-1.0));
label("$\mathcal{U}^{ne}=\mathcal{U}^R$",( 1.2, 1.0));
