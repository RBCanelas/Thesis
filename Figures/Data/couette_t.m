function u=couette_t(V0,L,t,res)

yy=[0:L/res:L];

sum=0;
for n=1:100
    sum=sum + 2*V0/(n*pi)*(-1)^n*sin(pi*yy*n/L)*exp(-10^(-6)*t*n^2*pi^2/L^2);
end
    
u=V0*yy/L + sum;
