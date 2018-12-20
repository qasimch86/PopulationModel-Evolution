function M4=St_M4(alpha)
global K r delta b pL pS pD phi etaL pF V A gamma beta eta
%% EE1=LE, EE2=AEE
C4= K*b*beta*eta*pF-K*b*beta*pF*r-b*beta*pF*phi+gamma*r;
D4= (1/2)*(-C4+sqrt(4*K*b^2*beta^2*eta*pF^2*phi+C4^2))/(K*b*beta^2*pF^2); 
EE1=[(1/2)*(K^2*alpha^2*b*beta*pF+K^2*alpha*b*beta*eta*pF-K^2*alpha*b*beta*pF*r-K*sqrt(K^2*alpha^2+2*K^2*alpha*eta-2*K^2*alpha*r+K^2*eta^2-2*K^2*eta*r+K^2*r^2+2*K*alpha*phi+2*K*eta*phi+2*K*phi*r+phi^2)*alpha*b*beta*pF+K*alpha*b*beta*pF*phi+K*alpha*gamma*r-eta*r*K*gamma+K*gamma*r^2-sqrt(K^2*alpha^2+2*K^2*alpha*eta-2*K^2*alpha*r+K^2*eta^2-2*K^2*eta*r+K^2*r^2+2*K*alpha*phi+2*K*eta*phi+2*K*phi*r+phi^2)*gamma*r+gamma*phi*r)/(r*K*gamma), -gamma, -sqrt(K^2*alpha^2+2*K^2*alpha*eta-2*K^2*alpha*r+K^2*eta^2-2*K^2*eta*r+K^2*r^2+2*K*alpha*phi+2*K*eta*phi+2*K*phi*r+phi^2)/K];
M_EE2=[[-(phi*(D4*beta*pF+eta)/(-D4*beta*pF+alpha)+phi)/K+(1-(phi*(D4*beta*pF+eta)/(r*(-D4*beta*pF+alpha))+(D4*K*alpha*b*beta*pF+K*alpha*b*eta-K*alpha*b*r+D4*gamma*r)/(b*r*(D4*beta*pF-alpha)))/K)*r-alpha-eta, -(phi*(D4*beta*pF+eta)/(-D4*beta*pF+alpha)+phi)/K, 0]; [-(D4*K*alpha*b*beta*pF+K*alpha*b*eta-K*alpha*b*r+D4*gamma*r)/(K*b*(D4*beta*pF-alpha)), -(D4*K*alpha*b*beta*pF+K*alpha*b*eta-K*alpha*b*r+D4*gamma*r)/(K*b*(D4*beta*pF-alpha))+(1-(phi*(D4*beta*pF+eta)/(r*(-D4*beta*pF+alpha))+(D4*K*alpha*b*beta*pF+K*alpha*b*eta-K*alpha*b*r+D4*gamma*r)/(b*r*(D4*beta*pF-alpha)))/K)*r-beta*pF*D4-eta, -pF*beta*(D4*K*alpha*b*beta*pF+K*alpha*b*eta-K*alpha*b*r+D4*gamma*r)/(b*r*(D4*beta*pF-alpha))]; [b*alpha, D4*b*beta*pF, (D4*K*alpha*b*beta*pF+K*alpha*b*eta-K*alpha*b*r+D4*gamma*r)*beta*pF/(r*(D4*beta*pF-alpha))-gamma]];
flag=0;
% for i=1:3
% for j=1:3
% if or(isinf(M_EE2(i,j))==1,isnan(M_EE2(i,j))==1)
% M_EE2=zeros(3,3);flag=1;break;
% end
% end
% if flag==1
%     break;
% end
% end
EE2=eig(M_EE2);
% if flag==1
%     EE2=[0/0;0/0;0/0];
% end
% EE2=eig(M_EE2);
M4=[EE1,EE2'];