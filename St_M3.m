function M3=St_M3(alpha)
global K r delta b pL pS pD gamma eta etaL pF V A beta
%% EE1=TE, EE2=PFE, EE3=LE, EE4=CE
EE1=[r-alpha-eta, r-eta, -gamma];
EE2=[-alpha, eta-r, -(K*b*beta*eta*pF-K*b*beta*pF*r+gamma*r)/r];
EE3=[alpha+eta-r, alpha*(K*alpha*b*beta*pF+K*b*beta*eta*pF-K*b*beta*pF*r+gamma*r)/(gamma*r), -gamma];
EE4=[-(K*alpha*b*beta*pF+K*b*beta*eta*pF-K*b*beta*pF*r+gamma*r)/(K*b*beta*pF), (1/2)*(-gamma*r+sqrt(4*K^2*b^2*beta^2*eta*gamma*pF^2-4*K^2*b^2*beta^2*gamma*pF^2*r+4*K*b*beta*gamma^2*pF*r+gamma^2*r^2))/(K*b*beta*pF), -(1/2)*(gamma*r+sqrt(4*K^2*b^2*beta^2*eta*gamma*pF^2-4*K^2*b^2*beta^2*gamma*pF^2*r+4*K*b*beta*gamma^2*pF*r+gamma^2*r^2))/(K*b*beta*pF)];
M3=[EE1,EE2,EE3,EE4];