function fig_main2(M,B,C,vpar,var)
global k1 k2
    TE='TE';%'Trivial Equilibrium';
    PFE='PFE';%'Phage Free Equilibrium';
    LE='LE';%'Lysogenic Equilibirium';
    CE='CE';%'CRISPR Equilibrium';
    AEE='AEE';%'All Existing Equilibrium';
switch M
    case 1 
    SS=4;
    pop1='H';col(1,:)=[0 1 0];%Green
    pop2='H_L';col(2,:)=[0 0 1];%Blue
    pop3='V';col(3,:)=[1 0 0];%Red
    case 2 
    SS=5;
    pop1='C_S';col(1,:)=[0 0 0];%Black
    pop2='C_L';col(2,:)=[0.5 0 0.9];%Purple
    pop3='V';col(3,:)=[1 0 0];%Red
    case 3  
    SS=4;
    pop1='C_S';col(1,:)=[0 0 0];%Black
    pop2='H_L';col(2,:)=[0 0 1];%Blue
    pop3='V';col(3,:)=[1 0 0];%Red
    case 4 
    SS=2;
    pop1='C_S';col(1,:)=[0 0 0];%Black
    pop2='H_L';col(2,:)=[0 0 1];%Blue
    pop3='V';col(3,:)=[1 0 0];%Red
end
%     col(1,:)=[0 1 0];%Green
%     col(2,:)=[0 0 1];%Blue
%     col(3,:)=[0 0 0];%Black
%     col(4,:)=[0.5 0 0.9];%Purple
%     col(5,:)=[1 0 0];%Red
figure;
hold on;
for i=1:3
plot(0,0,'-','LineWidth',2,'Color',col(i,:));
end
% for i=1:SS
% plot(0,0,'--','LineWidth',2,'Color',col(i,:));
% end
for i=1:SS
box on;
if isequal(var,'\beta')
xlabel(sprintf('Adsorption rate constant %s',var));
set(gca,'XScale','log','XMinorTick','on','Xdir','normal','FontSize',14);
elseif isequal(var,'\eta')
xlabel(sprintf('Sloughing off rate constant %s',var));
set(gca,'XScale','linear','XMinorTick','on','Xdir','normal','FontSize',14);
elseif isequal(var,'\phi')
xlabel(sprintf('Biofilm Formation %s',var));
set(gca,'XScale','linear','XMinorTick','on','Xdir','normal','FontSize',14);
elseif isequal(var,'\alpha')
xlabel(sprintf('Prophage induction %s',var));
set(gca,'XScale','log','XMinorTick','on','Xdir','normal','FontSize',14);
end
ylabel(sprintf('Population density of %s, %s and %s',pop1,pop2,pop3));
set(gca,'YScale','log','YMinorTick','on','Ydir','normal','FontSize',14);
title(sprintf('Model %d, Total S.S. %d',M,SS));
% if and(and(sum(B(3*(i-1)+1,:))>=0,sum(B(3*(i-1)+2,:))>=0),sum(B(3*(i-1)+3,:))>=0)
if not(sum(B(3*(i-1)+1,:))==0)
    [r1,r2]=find(B(3*(i-1)+1,:)); %to find nonzero range of values
    semilogx(vpar(r2(1):r2(end)),B(3*(i-1)+1,r2(1):r2(end)),'LineWidth',2,'Color',col(1,:));
end
if not(sum(B(3*(i-1)+2,:))==0)
    [r1,r2]=find(B(3*(i-1)+2,:)); %to find nonzero range of values
    semilogx(vpar(r2(1):r2(end)),B(3*(i-1)+2,r2(1):r2(end)),'LineWidth',2,'Color',col(2,:));
end
if not(sum(B(3*(i-1)+3,:))==0)
    [r1,r2]=find(B(3*(i-1)+3,:)); %to find nonzero range of values
    semilogx(vpar(r2(1):r2(end)),B(3*(i-1)+3,r2(1):r2(end)),'LineWidth',2,'Color',col(3,:));
end 
if not(sum(C(3*(i-1)+1,:))==0)
     [r1,r2]=find(C(3*(i-1)+1,:));%to find nonzero range of values
        semilogx(vpar(r2(1):r2(end)),C(3*(i-1)+1,r2(1):r2(end)),'--','LineWidth',2,'Color',col(1,:));
end
if not(sum(C(3*(i-1)+2,:))==0)
     [r1,r2]=find(C(3*(i-1)+2,:));%to find nonzero range of values
        semilogx(vpar(r2(1):r2(end)),C(3*(i-1)+2,r2(1):r2(end)),'--','LineWidth',2,'Color',col(2,:));
end
if not(sum(C(3*(i-1)+3,:))==0)
     [r1,r2]=find(C(3*(i-1)+3,:));%to find nonzero range of values
        semilogx(vpar(r2(1):r2(end)),C(3*(i-1)+3,r2(1):r2(end)),'--','LineWidth',2,'Color',col(3,:));
end
end
legend(sprintf('%s',pop1),sprintf('%s',pop2),...
    sprintf('%s',pop3),'Location','eastoutside');
% switch M
%     case 1
%     case 2
% legend(sprintf('Stable %s',TE),sprintf('Stable %s',PFE),sprintf('Stable %s',LE),...
%     sprintf('Stable %s',CE),sprintf('Stable %s',AEE),...
%     sprintf('Unstable %s',TE),sprintf('Unstable %s',PFE),...
%     sprintf('Unstable %s',LE),sprintf('Unstable %s',CE),sprintf('Unstable %s',AEE),'Location','eastoutside');
%     case 3
% legend(sprintf('Stable %s',TE),sprintf('Stable %s',PFE),...
%     sprintf('Stable %s',LE),sprintf('Stable %s',CE),...
%     sprintf('Unstable %s',TE),sprintf('Unstable %s',PFE),sprintf('Unstable %s',LE),...
%     sprintf('Unstable %s',CE),'Location','eastoutside');
%     case 4
% legend(sprintf('Stable %s',LE),sprintf('Stable %s',AEE),...
%     sprintf('Unstable %s',LE),sprintf('Unstable %s',AEE),'Location','eastoutside');
% end