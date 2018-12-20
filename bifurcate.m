function B=bifurcate(var, vpar)
% clear all
% tic
Parameters_M4();
% % Change each function Sol_Mi for change of parameter
% % var='pF';vpar=10^-5:0.01:10^-4;
% % var='\gamma';vpar=0.005:0.0001:0.01;
% % var='\phi';vpar=0.005:0.0001:0.01;
% % var='pF';vpar=10^-5:0.01:10^-4;
% var='\beta';dpar=0:0.1:12;vpar(length(dpar):-1:1)=10^-6*exp(-dpar);
% % var='\eta';vpar=0:0.01:1;
%% Model 1
for i=1:length(vpar)
%     eta=vpar(i);
    M1(:,i)=Sol_M1(vpar(i));
end
M=1;
% fig_bifurc(M,M1,vpar,var);

%% Model 2
for i=1:length(vpar)
%     eta=vpar(i);
    M2(:,i)=Sol_M2(vpar(i));
end
M=2;
% fig_bifurc(M,M2,vpar,var);
%% Model 3
for i=1:length(vpar)
%     eta=vpar(i);
    M3(:,i)=Sol_M3(vpar(i));
end
M=3;
% fig_bifurc(M,M3,vpar,var);

%% Model 4
for i=1:length(vpar)
%     eta=vpar(i);
    M4(:,i)=Sol_M4(vpar(i));
end
M=4;
% fig_bifurc(M,M4,vpar,var);
B=[M1;M2;M3;M4];
end