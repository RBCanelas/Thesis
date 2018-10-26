%plots poiseuille and couette velocity profiles in time

clc
clear

Times=[0.025 0.05 0.1 15];
Res=100;
Res1=19;
Res2=49;
Res3=149;
L=0.001;
yy=[0:L/Res:L];
yy1=[0:L/Res1:L];
yy2=[0:L/Res2:L];
yy3=[0:L/Res3:L];

figure;
%Poiseuille
for i=1:numel(Times)
   u_p= poiseuille_t(0.0001,0.001,Times(i),Res);
   plot(yy,u_p,'DisplayName','u vs. y','XDataSource','yy','YDataSource','u');figure(gcf)
   hold all
   u_p= poiseuille_t(0.0001,0.001,Times(i),Res1);
   plot(yy1,1.05*u_p,'DisplayName','u vs. y','XDataSource','yy','YDataSource','u');figure(gcf)
   u_p= poiseuille_t(0.0001,0.001,Times(i),Res2);
   plot(yy2,1.02*u_p,'DisplayName','u vs. y','XDataSource','yy','YDataSource','u');figure(gcf)
   u_p= poiseuille_t(0.0001,0.001,Times(i),Res3);
   plot(yy3,1.001*u_p,'DisplayName','u vs. y','XDataSource','yy','YDataSource','u');figure(gcf)
end



figure;
%Couette
for i=1:numel(Times)
   u_c= couette_t(0.0000125,0.001,Times(i),Res);
   plot(yy,u_c,'DisplayName','u vs. y','XDataSource','yy','YDataSource','u');figure(gcf)
   hold all
   u_c= couette_t(0.0000125,0.001,Times(i),Res1);
   plot(yy1,1.01*u_c,'DisplayName','u vs. y','XDataSource','yy','YDataSource','u');figure(gcf)
   u_c= couette_t(0.0000125,0.001,Times(i),Res2);
   plot(yy2,1.005*u_c,'DisplayName','u vs. y','XDataSource','yy','YDataSource','u');figure(gcf)
   u_c= couette_t(0.0000125,0.001,Times(i),Res3);
   plot(yy3,1.001*u_c,'DisplayName','u vs. y','XDataSource','yy','YDataSource','u');figure(gcf)
end
