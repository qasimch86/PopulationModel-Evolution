function P=Parameters()
global K K2 r beta delta b pL pS pD pF alpha eta etaL gamma
% time
K=5*10^6; % Carrying Capacity - TABLE 17.1 STEPHEN D. ABEDON
K2=10^8;
% V=1;A=6;
delta=1/6;
r=1; % Growth rate constant for Bacteria with Biofilm
beta=10^-7; % Adsorption rate Biofilm Bacteria (levin and abedon)
b=200;       % Phage increase rate - Burst Size
alpha=10^-6;% Biofilm bacteria with prophage lyse (Moises Santillan)
etaL_tild=2.78*10^-7; % Formation of Biofilm from Planktonic; from HSP to HBP
Htild=10^8;
phi=etaL_tild*Htild;
eta=0.1; % Formation of Planktonic from biofilm; from HB to HS
etaL=eta*2;
pF=10^-5; % Probability of CRISPR Failure
pL=0.1; % Probability of gaining Prophage
pS=10^-5;% 10^-5; % Probability of gaining CRISPR Spacer
pD=0;%10^-5; % Probability of Death of Host with Prophage
gamma=0.01; % Loss of biofilm Phage
end