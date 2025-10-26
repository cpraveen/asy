size(300,0);

real sw = -1.0;
real se =  0.8;
real ss = -0.6;
real sn =  0.7;


path s1 = (sw,ss)--(sw,-2)--(-2,-2)--(-2,ss)--cycle;
filldraw(s1,blue+opacity(0.5));
path s2 = (se,ss)--(2,ss)--(2,-2)--(se,-2)--cycle;
filldraw(s2,cyan+opacity(0.5));
path s3 = (se,sn)--(2,sn)--(2,2)--(se,2)--cycle;
filldraw(s3,red+opacity(0.5));
path s4 = (sw,sn)--(sw,2)--(-2,2)--(-2,sn)--cycle;
filldraw(s4,green+opacity(0.5));
path s5 = (sw,ss)--(se,ss)--(se,sn)--(sw,sn)--cycle;
filldraw(s5,gray+opacity(0.5));

path s12 = (sw,ss)--(se,ss)--(se,-2)--(sw,-2)--cycle;
filldraw(s12,blue+cyan+opacity(0.5));
path s23 = (se,ss)--(2,ss)--(2,sn)--(se,sn)--cycle;
filldraw(s23,purple+opacity(0.5));
path s34 = (se,sn)--(se,2)--(sw,2)--(sw,sn)--cycle;
filldraw(s34,red+green+opacity(0.5));
path s41 = (sw,ss)--(sw,sn)--(-2,sn)--(-2,ss)--cycle;
filldraw(s41,pink+opacity(0.5));

pen pc = linewidth(2);

draw(Label("$x$",1),(-2.2,0)--(2.2,0),linewidth(1)+dashed+red,Arrow);
draw(Label("$y$",1),(0,-2.2)--(0,2.2),linewidth(1)+dashed+red,Arrow);
draw((sw,ss)--(se,ss)--(se,sn)--(sw,sn)--cycle,pc+blue);

label("$A$",(sw,ss),SW);
label("$B$",(se,ss),SE);
label("$C$",(se,sn),NE);
label("$D$",(sw,sn),NW);

draw(Label("$S_n\Delta t$",EndPoint),(se,sn)--(2,sn),pc);
draw(Label("$S_s\Delta t$",EndPoint),(se,ss)--(2,ss),pc);
draw(Label("$S_n\Delta t$",EndPoint),(sw,sn)--(-2,sn),pc);
draw(Label("$S_s\Delta t$",EndPoint),(sw,ss)--(-2,ss),pc);

draw(Label("$S_e\Delta t$",EndPoint),(se,sn)--(se,2),pc);
draw(Label("$S_e\Delta t$",EndPoint),(se,ss)--(se,-2),pc);
draw(Label("$S_w\Delta t$",EndPoint),(sw,sn)--(sw,2),pc);
draw(Label("$S_w\Delta t$",EndPoint),(sw,ss)--(sw,-2),pc);

label("$\mathcal{U}^{**}$",(0,0),UnFill);
label("$\mathcal{U}^{n*}$",(0,1.5),UnFill);
label("$\mathcal{U}^{s*}$",(0,-1.5),UnFill);
label("$\mathcal{U}^{*w}$",(-1.5,0),UnFill);
label("$\mathcal{U}^{*e}$",(1.5,0),UnFill);

label("$\mathcal{U}^{sw}$",(-1.5,-1.5),UnFill);
label("$\mathcal{U}^{nw}$",(-1.5, 1.5),UnFill);
label("$\mathcal{U}^{se}$",( 1.5,-1.5),UnFill);
label("$\mathcal{U}^{ne}$",( 1.5, 1.5),UnFill);
