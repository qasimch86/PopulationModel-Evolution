function M4=Sol_M4(alpha)
global K r delta b pL pS pD pF eta etaL gamma V A beta phi
%% EE1=LE, EE2=AEE
C4= K*b*beta*eta*pF-K*b*beta*pF*r-b*beta*pF*phi+gamma*r;
D4= (1/2)*(-C4+sqrt(4*K*b^2*beta^2*eta*pF^2*phi+C4^2))/(K*b*beta^2*pF^2); 
EE1=[0,(K*(r-eta-alpha)-phi+sqrt((K*(r-eta-alpha)-phi)^2+4*r*K*phi))/(2*r),...
    (1/2)*alpha*b*(K*(r-eta-alpha)-phi+sqrt((K*(r-eta-alpha)-phi)^2+4*r*K*phi))/(gamma*r)];
EE2=[(D4*K*alpha*b*beta*pF+K*alpha*b*eta-K*alpha*b*r+D4*gamma*r)/(b*r*(D4*beta*pF-alpha)),...
    phi*(D4*beta*pF+eta)/(r*(-D4*beta*pF+alpha)),  D4];
 M4=[EE1,EE2];