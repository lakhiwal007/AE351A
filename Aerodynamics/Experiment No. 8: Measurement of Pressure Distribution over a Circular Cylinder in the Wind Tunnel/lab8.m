clc
clear all
format long
%%
load cp;
load location;
dt = pi/180;
cd = -(0.5*cp.*cos(locationdeg.*dt));
Cd = trapz(locationdeg.*dt,cd);
Cp = 1-4*(sin(locationdeg.*dt)).^2;
cD = -(0.5*Cp.*cos(locationdeg.*dt));
CD = trapz(locationdeg.*dt,cD);

figure
plot(locationdeg,Cp);
hold on
plot(locationdeg,cp);
xlabel('location(deg)');
ylabel('Cp');
xlim([0,360]);
hold off
