%% plotting kernels

clc
clear

step=0.02;
q=[0:step:2];

WC2=(1+2*q).*(1-q/2).^4; %Wendland Kernel
dwc2hand=2*(1-q/2).^4-2*(1+2*q).*(1-q/2).^3;
dWC2=diff(WC2)/step;
d2WC2=diff(dWC2)/step;
% fftWC2=fft(WC2);
% fftdWC2=fft(dWC2);
% fftd2WC2=fft(d2WC2);

for i=1:numel(q) %Cubic Spline Kernel
   if q(i)<1
       CS(i)=1-3/2*q(i)^2+3/4*q(i)^3;
   else 
       CS(i)=1/4*(2-q(i))^3;
   end    
end
dCS=diff(CS)/step;
d2CS=diff(dCS)/step;
% fftCS=fft(CS);
% fftdCS=fft(dCS);
% fftd2CS=fft(d2CS);

figure;
plot(q,WC2)
hold all
plot(q,dwc2hand)
plot(q(:,1:length(dWC2)),dWC2)
plot(q(:,1:length(d2WC2)),d2WC2)
% figure;
% plot(q(:,1:length(fftWC2)),fftWC2)
% hold all
% plot(q(:,1:length(fftdWC2)),fftdWC2)
% plot(q(:,1:length(fftd2WC2)),fftd2WC2)

plot(q,CS)
plot(q(:,1:length(dCS)),dCS)
plot(q(:,1:length(d2CS)),d2CS)
% plot(q(:,1:length(fftCS)),fftCS)
% plot(q(:,1:length(fftdCS)),fftdCS)
% plot(q(:,1:length(fftd2CS)),fftd2CS)