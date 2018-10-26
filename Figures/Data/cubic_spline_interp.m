function m= cubic_spline_interp(data)

xx=data(:,1);
yy=data(:,2);

XX=min(xx):(max(xx)-min(xx))/100:max(xx);
YY=spline(xx,yy,XX);

m(:,1)=XX;
m(:,2)=YY;