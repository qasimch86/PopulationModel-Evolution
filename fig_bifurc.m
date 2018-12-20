function Fb=fig_bifurc(M,Sol,vpar,var)
switch M
    case 1 
    SS=4;
    case 2 
    SS=5;
    case 3  
    SS=4;
    case 4
    SS=2;
end
figure;hold on;box on;
if isequal(var,'\beta')
xlabel(sprintf('Adsorption rate constant %s',var));ylabel(sprintf('Population density'));
elseif isequal(var,'\eta')
xlabel(sprintf('Sloughing off rate constant %s',var));ylabel(sprintf('Population density'));
elseif isequal(var,'pF')
xlabel(sprintf('Probability of CRISPR Failure %s',var));ylabel(sprintf('Population density'));
elseif isequal(var,'\gamma')
xlabel(sprintf('Phage loss %s',var));ylabel(sprintf('Population density'));
elseif isequal(var,'\tild(\eta)_L')
xlabel(sprintf('Sloughing off rate constant %s',var));ylabel(sprintf('Population density'));
end
set(gca,'XScale','log','XMinorTick','on','Xdir','normal','FontSize',14);
set(gca,'YScale','log','YMinorTick','on','Ydir','normal','FontSize',14);
for i=1:3:SS*3
title(sprintf('Model %d with %d Equilibrium',M,(i+2)/3),'FontSize',20);
switch i
    case 1
plot(vpar(1:10:end),Sol(i,1:10:end),'ko-', 'markersize', 6,'linewidth',1);
plot(vpar(1:10:end),Sol(i+1,1:10:end),'rx-', 'markersize', 6,'linewidth',1);
plot(vpar(1:10:end),Sol(i+2,1:10:end),'bs-', 'markersize', 6,'linewidth',1);
    case 4
plot(vpar(1:10:end),Sol(i,1:10:end),'ko-.', 'markersize', 6,'linewidth',1);
plot(vpar(1:10:end),Sol(i+1,1:10:end),'rx-.', 'markersize', 6,'linewidth',1);
plot(vpar(1:10:end),Sol(i+2,1:10:end),'bs-.', 'markersize', 6,'linewidth',1);
    case 7
plot(vpar(1:10:end),Sol(i,1:10:end),'ko:', 'markersize', 6,'linewidth',1);
plot(vpar(1:10:end),Sol(i+1,1:10:end),'rx:', 'markersize', 6,'linewidth',1);
plot(vpar(1:10:end),Sol(i+2,1:10:end),'bs:', 'markersize', 6,'linewidth',1);
    case 10
plot(vpar(1:10:end),Sol(i,1:10:end),'ko--', 'markersize', 6,'linewidth',1);
plot(vpar(1:10:end),Sol(i+1,1:10:end),'rx--', 'markersize', 6,'linewidth',1);
plot(vpar(1:10:end),Sol(i+2,1:10:end),'bs--', 'markersize', 6,'linewidth',1);
    case 13
plot(vpar(1:10:end),Sol(i,1:10:end),'ko-', 'markersize', 6,'linewidth',1);
plot(vpar(1:10:end),Sol(i+1,1:10:end),'rx-', 'markersize', 6,'linewidth',1);
plot(vpar(1:10:end),Sol(i+2,1:10:end),'bs-', 'markersize', 6,'linewidth',1);
end
% hold off;
end
switch M
    case 1
legend('H at TE','H_L at TE','V at TE','H at PFE','H_L at PFE','V at PFE','H at LE','H_L at LE','V at LE','H at AEE','H_L at AEE','V at AEE','Location','eastoutside');
    case 2 
legend('C_S at TE','C_L at TE','V at TE','C_S at PFE','C_L at PFE','V at PFE','C_S at LE','C_L at LE','V at LE','C_S at CE','C_L at CE','V at CE','C_S at AEE','C_L at AEE','V at AEE','Location','eastoutside');
    case 3  
legend('C_S at TE','H_L at TE','V at TE','C_S at PFE','H_L at PFE','V at PFE','C_S at LE','H_L at LE','V at LE','C_S at AEE','H_L at AEE','V at AEE','Location','eastoutside');
    case 4
legend('C_S at LE','H_L at LE','V at LE','C_S at AEE','H_L at AEE','V at AEE','Location','eastoutside');
end
% legend('\lambda_1','\lambda_2','\lambda_3');%,'Orientation','horizontal');
% legend('TE','PFE','LE','CE','Location','eaSoloutside');
legend('boxoff');