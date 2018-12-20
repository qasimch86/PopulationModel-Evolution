function M3=Sol_M3(alpha)
global K r delta b pL pS pD pF eta etaL gamma V A beta
%% EE1=TE, EE2=PFE, EE3=LE, EE4=CE
EE1=[0, 0, 0];
EE2=[-K*(eta-r)/r,0, 0];
EE3=[ 0,-K*(alpha+eta-r)/r, -K*alpha*b*(alpha+eta-r)/(gamma*r)];
EE4=[gamma/(b*pF*beta),0,-(K*b*beta*eta*pF-K*b*beta*pF*r+gamma*r)/(K*b*beta^2*pF^2)];
 M3=[EE1,EE2,EE3,EE4];