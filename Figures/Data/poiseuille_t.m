function u=poiseuille_t(F,L,t,res)

yy=[0:L/res:L];
y_L=yy-L;

sum=0;
for n=0:100
    sum=sum+ 4*F*L^2/(10^(-6)*pi^3*(2*n+1)^3)*sin(pi*yy*(2*n+1)/L)*exp(-t*(2*n+1)^2*pi^2*10^(-6)/L^2);
end
    
u=-F/(2*10^(-6))*yy.*y_L - sum;


