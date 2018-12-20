function [tv,Xv]= odesol(tmax,IC)
    options=odeset('RelTol',1e-3,'AbsTol',1e-3);
    [tv,Xv]=ode15s('ODEsol_dim',[0:tmax/10000:tmax],IC,options);
%     X=[tv;Xv(:,1);Xv(:,2);Xv(:,3)];
end

% tmax=30000;h=tmax/60000;t=0:h:tmax;
% IC(1,:)=[49.5540138751239;495.044598612488;999000.000000000];%[K/2,K/2,1000];
% IC(2,:)=[1,1,100];
% IC(3,:)=[3577.78568885725;142.221431114276;799000.000000000];
% i=0;
% for eta=0.90:0.01:0.92
%     i=i+1;
% X=ODEsolve(t,h,IC(i,:));
% X1(:,i)=X(:,1);
% X2(:,i)=X(:,2);
% X3(:,i)=X(:,3);
% figure;plot3(X1(:,i),X2(:,i),X3(:,i));
% % figure;loglog(t,X(:,1));
% % figure;loglog(t,X(:,2));
% % figure;loglog(t,X(:,3));
% end
% % for i=1:3
% % figure;
% % for j=1:100:length(t)-1
% % plot3(X1(1:j,i),X2(1:j,i),X3(1:j,i),'k-')
% % pause(0.0001)
% % end
% % end
