size(300,0);

real h = 1;
real u = 0.3;
real v = 0.2;

pair[][] P1 = new pair[4][4];
pair[][] P2 = new pair[4][4];

for(int i=0; i<4; ++i)
   for(int j=0; j<4; ++j)
   {
      P1[i][j] = ((i-1)*h,(j-1)*h);
      P2[i][j] = P1[i][j] + (u,v);
   }

pen[][] p = new pen[3][3];
p[0][0] = red;
p[0][1] = yellow;
p[0][2] = orange;

p[1][0] = magenta;
p[1][1] = green;
p[1][2] = grey;

p[2][0] = blue;
p[2][1] = pink;
p[2][2] = cyan;

for(int i=0; i<3; ++i)
   for(int j=0; j<3; ++j)
   {
      path s = P2[i][j]--P2[i+1][j]--P2[i+1][j+1]--P2[i][j+1]--cycle;
      filldraw(s,p[i][j]);
   }

for(int i=0; i<4; ++i)
   draw(P1[i][0]--P1[i][3],linewidth(1));

for(int j=0; j<4; ++j)
   draw(P1[0][j]--P1[3][j],linewidth(1));

