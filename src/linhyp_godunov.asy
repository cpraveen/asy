size(300,0);

real h = 1;
real ujm2 = 0.4;
real ujm1 = 0.5;
real uj = 0.6;
real ujp1 = 0.7;

//-----------------------------t_n-------------------------------------------
draw(Label("$x$",EndPoint), (0,0)--(4*h,0),Arrow);

draw((0,0)--(0,1));
draw((h,0)--(h,1));
draw((2*h,0)--(2*h,1));
draw((3*h,0)--(3*h,1));

pen ps = red + linewidth(1);

draw(Label("$v_{j-1}^n$",MidPoint),(0,ujm1)--(h,ujm1),ps);
draw(Label("$v_{j}^n$",MidPoint),(h,uj)--(2*h,uj),ps);
draw(Label("$v_{j+1}^n$",MidPoint),(2*h,ujp1)--(3*h,ujp1),ps);

//label("$j-\frac{1}{2}$",(h,0),S);
//label("$j+\frac{1}{2}$",(2*h,0),S);

//-----------------------------t_n-------------------------------------------
real y1 = 2;
real ds = 0.3;

draw(Label("$x$",EndPoint), (0,y1)--(4*h,y1),Arrow);

draw((0,0+y1)--(0,1+y1));
draw((h,0+y1)--(h,1+y1));
draw((2*h,0+y1)--(2*h,1+y1));
draw((3*h,0+y1)--(3*h,1+y1));

draw(Label("$v_{j-2}^n$",MidPoint),(0,ujm2+y1)--(ds,ujm2+y1),ps);
draw(Label("$v_{j-1}^n$",MidPoint),(0+ds,ujm1+y1)--(h+ds,ujm1+y1),ps);
draw(Label("$v_{j}^n$",MidPoint),(h+ds,uj+y1)--(2*h+ds,uj+y1),ps);
draw(Label("$v_{j+1}^n$",MidPoint),(2*h+ds,ujp1+y1)--(3*h+ds,ujp1+y1),ps);

dot(Label("$A$"), (h,y1), S);
dot(Label("$B$"), (h+ds,y1), S);
dot(Label("$C$"), (2*h,y1), S);

label("$AB=a\Delta t, \qquad BC=\Delta x - a\Delta t$",(2*h,1.5));
