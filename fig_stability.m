function fig_stability(M,St,vpar,var)
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
figure;hold on;
box on;
if isequal(var,'\beta')
xlabel(sprintf('Adsorption rate constant %s',var));ylabel(sprintf('Eigenvalues (\\lambda) at the steady states'));
set(gca,'XScale','log','XMinorTick','on','Xdir','normal','FontSize',14);
elseif isequal(var,'\eta')
xlabel(sprintf('Sloughing off rate constant %s',var));ylabel(sprintf('Eigenvalues (\\lambda) at the steady states'));
set(gca,'XScale','linear','XMinorTick','on','Xdir','normal','FontSize',14);
elseif isequal(var,'\phi')
xlabel(sprintf('Biofilm Formation %s',var));ylabel(sprintf('Eigenvalues (\\lambda) at the steady states'));
set(gca,'XScale','linear','XMinorTick','on','Xdir','normal','FontSize',14);
end
set(gca,'YScale','linear','YMinorTick','on','Ydir','normal','FontSize',14);
%,'Position', get(gca, 'OuterPosition') - get(gca, 'TightInset') * [-1 0 1 0; 0 -1 0 1; 0 0 1 0; 0 0 0 1]
for i=1:SS
title(sprintf('Model %d with %d Equilibrium',M,i),'FontSize',20);
switch i
    case 1
plot(vpar(1:end),St(i,1:end),'k-', 'markersize', 6,'linewidth',1);
    case 2
plot(vpar(1:end),St(i,1:end),'k-.', 'markersize', 6,'linewidth',1);
    case 3
plot(vpar(1:end),St(i,1:end),'k:', 'markersize', 6,'linewidth',1);
    case 4
plot(vpar(1:end),St(i,1:end),'k--', 'markersize', 6,'linewidth',1);
    case 5
plot(vpar(1:end),St(i,1:end),'k.', 'markersize', 6,'linewidth',1);
end
% hold off;
end
switch M
    case 1
legend('TE','PFE','LE','AEE','Location','eastoutside');
    case 2 
legend('TE','PFE','LE','CE','AEE','Location','eastoutside');
    case 3  
legend('TE','PFE','LE','AEE','Location','eastoutside');
    case 4
legend('LE','AEE','Location','eastoutside');
end
% legend('\lambda_1','\lambda_2','\lambda_3');%,'Orientation','horizontal');
% legend('TE','PFE','LE','CE','Location','eastoutside');
legend('boxoff');
