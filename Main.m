clear all
tic
global K K2 r beta delta b pL pS pD pF alpha eta etaL gamma phi k1 k2
Parameters_M4();
% var='\beta';vpar=[10^-13;5*10^-13;10^-12;5*10^-12;10^-11;5*10^-11];%[0.90;0.90;0.91;0.93;0.93;0.93];
% X=limitcycle(var,vpar);
%% Change each function St_Mi and Sol_Mi after change of parameter
% var='\gamma';vpar=0.001:0.001:0.1;
% var='\eta';vpar=1:10:1000;%changed parameters b=200 (old 100), beta=10^-7 (old 10^-8), alpha=10^-6 (10^-3)
% var='p_F';vpar=10^-5:0.0001:10^-3;
% var='\beta';dpar=0:0.01:10;vpar(length(dpar):-1:1)=10^-5*exp(-dpar);
% var='\eta';vpar=0.001:0.001:1-0.001;
% var='\alpha';dpar=0:0.01:5;vpar(length(dpar):-1:1)=10^-4*exp(-dpar);
var='\alpha';dpar=10^-8:10^-8:10^-5;vpar(length(dpar):-1:1)=dpar;
%% SS and Stability
St=Stability(var, vpar); % Populations
SS=bifurcate(var, vpar); % Eigenvalues for the models' equations
% B=zeros(length(St(:,1)),length(St(1,:)));
SS1=SS(1:12,:);
SS2=SS(13:27,:);
SS3=SS(28:39,:);
SS4=SS(40:45,:);
St1=St(1:4,:);
St2=St(5:9,:);
St3=St(10:13,:);
St4=St(14:15,:);
B1=zeros(12,length(vpar));
C1=zeros(12,length(vpar));
% Model 1
    for j=1:length(St1(1,:))
        for i=1:4%length(St(:,1))
            if and(St1(i,j)<0,and(and(SS1(3*(i-1)+1,j)>=0,SS1(3*(i-1)+2,j)>=0),SS1(3*(i-1)+3,j)>=0))
                B1(3*(i-1)+1,j)=SS1(3*(i-1)+1,j);
                B1(3*(i-1)+2,j)=SS1(3*(i-1)+2,j);
                B1(3*(i-1)+3,j)=SS1(3*(i-1)+3,j);
            else%if or(or(SS1(3*(i-1)+1,j)<0,SS1(3*(i-1)+2,j)<0),SS1(3*(i-1)+3,j)<0)
                C1(3*(i-1)+1,j)=SS1(3*(i-1)+1,j);
                C1(3*(i-1)+2,j)=SS1(3*(i-1)+2,j);
                C1(3*(i-1)+3,j)=SS1(3*(i-1)+3,j);
            end
        end
    end
% end

fig_main2(1,B1,C1,vpar,var);
% for i=1:12
%     if i<=3
%     loglog(vpar,B1(i,:),'k-'); hold on; plot(vpar,C1(i,:),'k--'); 
%     elseif i<=6
%     loglog(vpar,B1(i,:),'k-.'); hold on; plot(vpar,C1(i,:),'k--'); 
%     elseif i<=9
%     loglog(vpar,B1(i,:),'k--'); hold on; plot(vpar,C1(i,:),'k--'); 
%     elseif i<=12
%     loglog(vpar,B1(i,:),'k:'); hold on; plot(vpar,C1(i,:),'k--'); 
%     end
% %     plot(vpar,C1(4,:),'k--');plot(vpar,C1(7,:),'k--'); plot(vpar,C1(10,:),'k--')
% end
% Model 2
B2=zeros(15,length(vpar));
C2=zeros(15,length(vpar));
    for j=1:length(St3(1,:))
        for i=1:5%length(St(:,1))
            if and(St2(i,j)<0,and(and(SS2(3*(i-1)+1,j)>=0,SS2(3*(i-1)+2,j)>=0),SS2(3*(i-1)+3,j)>=0))
                B2(3*(i-1)+1,j)=SS2(3*(i-1)+1,j);
                B2(3*(i-1)+2,j)=SS2(3*(i-1)+2,j);
                B2(3*(i-1)+3,j)=SS2(3*(i-1)+3,j);
            else
                C2(3*(i-1)+1,j)=SS2(3*(i-1)+1,j);
                C2(3*(i-1)+2,j)=SS2(3*(i-1)+2,j);
                C2(3*(i-1)+3,j)=SS2(3*(i-1)+3,j);
            end
        end
    end
% end
fig_main2(2,B2,C2,vpar,var);
% Model 3
B3=zeros(12,length(vpar));
C3=zeros(12,length(vpar));
    for j=1:length(St3(1,:))
        for i=1:4%length(St(:,1))
            if and(St3(i,j)<0,and(and(SS3(3*(i-1)+1,j)>=0,SS3(3*(i-1)+2,j)>=0),SS3(3*(i-1)+3,j)>=0))
                B3(3*(i-1)+1,j)=SS3(3*(i-1)+1,j);
                B3(3*(i-1)+2,j)=SS3(3*(i-1)+2,j);
                B3(3*(i-1)+3,j)=SS3(3*(i-1)+3,j);
            else
                C3(3*(i-1)+1,j)=SS3(3*(i-1)+1,j);
                C3(3*(i-1)+2,j)=SS3(3*(i-1)+2,j);
                C3(3*(i-1)+3,j)=SS3(3*(i-1)+3,j);
            end
        end
    end
% end
fig_main2(3,B3,C3,vpar,var);

% Model 4
B4=zeros(6,length(vpar));
C4=zeros(6,length(vpar));
    for j=1:length(St4(1,:))
        for i=1:2%length(St(:,1))
            if and(St4(i,j)<0,and(and(SS4(3*(i-1)+1,j)>=0,SS4(3*(i-1)+2,j)>=0),SS4(3*(i-1)+3,j)>=0))
                B4(3*(i-1)+1,j)=SS4(3*(i-1)+1,j);
                B4(3*(i-1)+2,j)=SS4(3*(i-1)+2,j);
                B4(3*(i-1)+3,j)=SS4(3*(i-1)+3,j);
            else
                C4(3*(i-1)+1,j)=SS4(3*(i-1)+1,j);
                C4(3*(i-1)+2,j)=SS4(3*(i-1)+2,j);
                C4(3*(i-1)+3,j)=SS4(3*(i-1)+3,j);
            end
        end
    end
% end
fig_main2(4,B4,C4,vpar,var);
% Take one model that has given maximum eigenvalue for each steady state.
% Note the negative values of eigenvalues and match it with the steady state
% found from bifurcate function. This will generate a plot between
% population vs parameters where the populations are stable.
toc