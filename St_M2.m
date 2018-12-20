function M2=St_M2(alpha)
global K r delta b pL pS pD gamma eta pF V A phi beta EE3
%% EE1=TE, EE2=PFE, EE3=LE, EE4=CE, EE5=AEE
etaL=sqrt(eta);%exp(eta)/exp(1);%eta*2;
EE1=[r-alpha-etaL, r-eta, -gamma];
EE2=[-alpha+eta-etaL, eta-r, -(K*b*beta*eta*pF-K*b*beta*pF*r+gamma*r)/r];
EE3=[(K*alpha^2*b*beta*pF-K*alpha*b*beta*eta*pD+K*alpha*b*beta*pD*r-K*alpha*b*beta*pF*r+K*alpha*b*beta*pF*etaL+alpha*gamma*r-eta*gamma*r+gamma*r*etaL)/(K*alpha*b*beta*pD+gamma*r), -(1/2)*(K*alpha*b*beta*gamma*pD-alpha*gamma*r+gamma^2*r+gamma*r^2-gamma*r*etaL-sqrt(4*K^2*alpha^3*b^2*beta^2*gamma*pD^2+K^2*alpha^2*b^2*beta^2*gamma^2*pD^2-4*K^2*alpha^2*b^2*beta^2*gamma*pD^2*r+4*K^2*alpha^2*b^2*beta^2*gamma*pD^2*etaL+6*K*alpha^2*b*beta*gamma^2*pD*r+2*K*alpha*b*beta*gamma^3*pD*r-6*K*alpha*b*beta*gamma^2*pD*r^2+6*K*alpha*b*beta*gamma^2*pD*r*etaL+alpha^2*gamma^2*r^2+2*alpha*gamma^3*r^2-2*alpha*gamma^2*r^3+2*alpha*gamma^2*r^2*etaL+gamma^4*r^2-2*gamma^3*r^3+2*gamma^3*r^2*etaL+gamma^2*r^4-2*gamma^2*r^3*etaL+gamma^2*r^2*etaL^2))/(K*alpha*b*beta*pD+gamma*r), -(1/2)*(K*alpha*b*beta*gamma*pD-alpha*gamma*r+gamma^2*r+gamma*r^2-gamma*r*etaL+sqrt(4*K^2*alpha^3*b^2*beta^2*gamma*pD^2+K^2*alpha^2*b^2*beta^2*gamma^2*pD^2-4*K^2*alpha^2*b^2*beta^2*gamma*pD^2*r+4*K^2*alpha^2*b^2*beta^2*gamma*pD^2*etaL+6*K*alpha^2*b*beta*gamma^2*pD*r+2*K*alpha*b*beta*gamma^3*pD*r-6*K*alpha*b*beta*gamma^2*pD*r^2+6*K*alpha*b*beta*gamma^2*pD*r*etaL+alpha^2*gamma^2*r^2+2*alpha*gamma^3*r^2-2*alpha*gamma^2*r^3+2*alpha*gamma^2*r^2*etaL+gamma^4*r^2-2*gamma^3*r^3+2*gamma^3*r^2*etaL+gamma^2*r^4-2*gamma^2*r^3*etaL+gamma^2*r^2*etaL^2))/(K*alpha*b*beta*pD+gamma*r)];
EE4=[-(K*alpha*b*beta*pF^2-K*b*beta*eta*pD*pF+K*b*beta*pD*pF*r-K*b*beta*pF^2*r+K*b*beta*pF^2*etaL-gamma*pD*r+gamma*pF*r)/(beta*K*b*pF^2), -(1/2)*(gamma*r-sqrt(4*K^2*b^2*beta^2*eta*gamma*pF^2-4*K^2*b^2*beta^2*gamma*pF^2*r+4*K*b*beta*gamma^2*pF*r+gamma^2*r^2))/(K*b*pF*beta), -(1/2)*(gamma*r+sqrt(4*K^2*b^2*beta^2*eta*gamma*pF^2-4*K^2*b^2*beta^2*gamma*pF^2*r+4*K*b*beta*gamma^2*pF*r+gamma^2*r^2))/(K*b*pF*beta)];
M_EE5=[[-(alpha-eta+etaL)*(K*alpha*b*beta*pF^2-K*b*beta*eta*pD*pF+K*b*beta*pD*pF*r-K*b*beta*pF^2*r+K*b*beta*pF^2*etaL-gamma*pD*r+gamma*pF*r)/(K*beta*(pD-pF)*(alpha*pD-eta*pF+pF*etaL)*b)+r*(1-((alpha-eta+etaL)*(K*alpha*b*beta*pF^2-K*b*beta*eta*pD*pF+K*b*beta*pD*pF*r-K*b*beta*pF^2*r+K*b*beta*pF^2*etaL-gamma*pD*r+gamma*pF*r)/(beta*(pD-pF)*r*(alpha*pD-eta*pF+pF*etaL)*b)+(K*alpha^2*b*beta*pF-K*alpha*b*beta*eta*pD+K*alpha*b*beta*pD*r-K*alpha*b*beta*pF*r+K*alpha*b*beta*pF*etaL+alpha*gamma*r-eta*gamma*r+gamma*r*etaL)/((alpha*pD-eta*pF+pF*etaL)*r*b*beta))/K)-alpha+pD*(alpha-eta+etaL)/(pD-pF)-etaL, -(alpha-eta+etaL)*(K*alpha*b*beta*pF^2-K*b*beta*eta*pD*pF+K*b*beta*pD*pF*r-K*b*beta*pF^2*r+K*b*beta*pF^2*etaL-gamma*pD*r+gamma*pF*r)/(K*beta*(pD-pF)*(alpha*pD-eta*pF+pF*etaL)*b), -pD*(alpha-eta+etaL)*(K*alpha*b*beta*pF^2-K*b*beta*eta*pD*pF+K*b*beta*pD*pF*r-K*b*beta*pF^2*r+K*b*beta*pF^2*etaL-gamma*pD*r+gamma*pF*r)/((pD-pF)*r*(alpha*pD-eta*pF+pF*etaL)*b)]; [ -(K*alpha^2*b*beta*pF-K*alpha*b*beta*eta*pD+K*alpha*b*beta*pD*r-K*alpha*b*beta*pF*r+K*alpha*b*beta*pF*etaL+alpha*gamma*r-eta*gamma*r+gamma*r*etaL)/(K*(alpha*pD-eta*pF+pF*etaL)*b*beta), -(K*alpha^2*b*beta*pF-K*alpha*b*beta*eta*pD+K*alpha*b*beta*pD*r-K*alpha*b*beta*pF*r+K*alpha*b*beta*pF*etaL+alpha*gamma*r-eta*gamma*r+gamma*r*etaL)/(K*(alpha*pD-eta*pF+pF*etaL)*b*beta)+r*(1-((alpha-eta+etaL)*(K*alpha*b*beta*pF^2-K*b*beta*eta*pD*pF+K*b*beta*pD*pF*r-K*b*beta*pF^2*r+K*b*beta*pF^2*etaL-gamma*pD*r+gamma*pF*r)/(beta*(pD-pF)*r*(alpha*pD-eta*pF+pF*etaL)*b)+(K*alpha^2*b*beta*pF-K*alpha*b*beta*eta*pD+K*alpha*b*beta*pD*r-K*alpha*b*beta*pF*r+K*alpha*b*beta*pF*etaL+alpha*gamma*r-eta*gamma*r+gamma*r*etaL)/((alpha*pD-eta*pF+pF*etaL)*r*b*beta))/K)+pF*(alpha-eta+etaL)/(pD-pF)-eta, -pF*(K*alpha^2*b*beta*pF-K*alpha*b*beta*eta*pD+K*alpha*b*beta*pD*r-K*alpha*b*beta*pF*r+K*alpha*b*beta*pF*etaL+alpha*gamma*r-eta*gamma*r+gamma*r*etaL)/((alpha*pD-eta*pF+pF*etaL)*r*b)]; [ b*alpha, -(alpha-eta+etaL)*b*pF/(pD-pF), (K*alpha^2*b*beta*pF-K*alpha*b*beta*eta*pD+K*alpha*b*beta*pD*r-K*alpha*b*beta*pF*r+K*alpha*b*beta*pF*etaL+alpha*gamma*r-eta*gamma*r+gamma*r*etaL)*pF/((alpha*pD-eta*pF+pF*etaL)*r)-gamma]];
flag=0;
% for i=1:3
% for j=1:3
% if or(isinf(M_EE5(i,j))==1,isnan(M_EE5(i,j))==1)
% M_EE5=zeros(3,3);flag=1;break;
% end
% end
% end
EE5=eig(M_EE5);
if flag==1
    EE5=[0/0;0/0;0/0];
end
M2=[EE1,EE2,EE3,EE4,EE5'];