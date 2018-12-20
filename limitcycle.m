function LM=limitcycle(var,vpar)
global eta
tmax(1:6)=[20000;100000;1;1/2;1;1];%h=tmax/60000;t=0:h:tmax;
IC(1,:)=[5.04327273730193-.1,495.044598612488,998444.741947406];%[K/2,K/2,1000];
IC(2,:)=[4.96973039235979-.2,495.044598612488,998798.551608214];%[K/2,K/2,1000];
IC(3,:)=[4.95540138751239;495.044598612488;999000.000000000];%[K/2,K/2,1000];
IC(4,:)=[4.95540138751239;495.044598612488;999000.000000000];
IC(5,:)=[405.769749258560-1.9;94.2302507414397;699000.000000000];
IC(6,:)=[405.769749258560-2.9;94.2302507414397;699000.000000000];
% IC(5,:)=[4.95540138751239;495.044598612488;999000.000000000];
    figure;hold on;
for i=1: length(vpar)
    eta=vpar(i);
    [t,X]=odesol(tmax(i),IC(i,:));
%     for j=1:length(t)-1
j=length(t);
switch i
            case 1;        plot(X(1:j,1),X(1:j,3),'k--','LineWidth',2)
            case 2;        %plot(X(1:j,1),X(1:j,3),'k:','LineWidth',2);
                            plot3(X(1:j,1),X(1:j,2),X(1:j,3),'k:','LineWidth',2)
            case 3;        plot(X(1:j,1),X(1:j,3),'k-','LineWidth',2)
            case 4;        plot(X(1:j,1),X(1:j,3),'k-.','LineWidth',2)
            case 5;        plot(X(1:j,1),X(1:j,3),'k-.','LineWidth',2)
            case 6;        plot(X(1:j,1),X(1:j,3),'k-.','LineWidth',2)
        end
%         title(sprintf('t = %d',j));
%         pause(0.00001);
%     end
%     pause;
for k=1:3
LM(1:length(X(:,k)),k)=X(:,k);
end
end
box on;
xlabel(sprintf('Population H'));
set(gca,'XScale','linear','XMinorTick','on','Xdir','normal','FontSize',14);
ylabel(sprintf('Population V'));
set(gca,'YScale','linear','YMinorTick','on','Ydir','normal','FontSize',14);
title(sprintf('Model 1, Limit Cycle'));
legend(sprintf('Stable AEE for \\eta = 0.9'),sprintf('Stable AEE limit cycle for \\eta = 0.9'),...
    sprintf('Unstable AEE for \\eta = 0.91'),sprintf('Unstable AEE for \\eta = 0.93'));
