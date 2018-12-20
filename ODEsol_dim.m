function ODEs=ODEsol_dim(t,X)
% global K1 K2 rB rS betaB betaS betaBSP betaSSP betaBP betaSP b pB pS pBP pSSP pBSP pSP pBPD pSPD lambdaBP lambdaSP muBP muSP etaS etaB etaSP etaBP gammaB gammaS;
global K r beta delta b pL pD pF alpha eta etaL gamma
Hsum=sum(X(1:2));
%% Differential Equations
% Model 1
    H=r*(1-Hsum/K)*X(1)-beta*X(1)*X(3)-eta*X(1);
    HL=r*(1-Hsum/K)*X(2)+pL*beta*X(1)*X(3)-alpha*X(2)-eta*X(2);
    V=b*(1-pL)*beta*X(1)*X(3)-gamma*X(3)+b*alpha*X(2);
    ODEs=[H;HL;V];
end