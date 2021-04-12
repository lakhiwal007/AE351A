clc
clear all
%%
Re = (0.01:0.01:10^6);
Cd = zeros(1,length(Re));
for i = 1:length(Re)
    if Re(1,i) < 1
        Cd(1,i) = 24/Re(i);

    elseif (Re(1,i) < 1000) && (Re(1,i) >= 1)
        Cd(1,i) = (24/Re(1,i))*(1+Re(1,i)^(2/3)/6);

    else
        Cd(1,i) = 0.44*Re(1,i);
    end
end
clear i

figure
loglog(Re,Cd)