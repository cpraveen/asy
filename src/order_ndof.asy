import graph;
size(200,200,IgnoreAspect);
     
real f(real t) {return 1/t;}
real g(real t) {return 1/(t*t);}
     
scale(Log,Log);
draw(Label("First order"), graph(f,10,1000),red+linewidth(2));
draw(Label("Second order"), graph(g,10,1000),blue+linewidth(2));
pen thin=linewidth(0.1*linewidth());
/*
xaxis("$ndof$",BottomTop,LeftTicks(begin=false,end=false,extend=true,
                                ptick=thin));
yaxis("$Error$",LeftRight,RightTicks(begin=false,end=false,extend=true,
                                 ptick=thin));
*/
xaxis("$ndof$",BottomTop,LeftTicks(begin=false,end=false,extend=false,
                                ptick=thin));
yaxis("$Error$",LeftRight,RightTicks(begin=false,end=false,extend=false,
                                 ptick=thin));
