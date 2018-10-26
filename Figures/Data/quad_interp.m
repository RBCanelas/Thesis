function m=quad_interp(data)

xx=data(:,1);
yy=data(:,2);

p=polyfit(xx,yy,2);

XX=min(xx):(max(xx)-min(xx))/100:max(xx);
YY=polyval(p,XX);

m(:,1)=XX;
m(:,2)=YY;