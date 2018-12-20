function S=Stability(var, vpar)
% clear all
global M1
warning off;
Parameters_M4();
% var='\beta';dpar=0:0.1:12;vpar(length(dpar):-1:1)=10^-8*exp(-dpar);

%% Model 1
for i=1:length(vpar)
%     beta=vpar(i); 
    M1(:,i)=St_M1(vpar(i));
end
for i=1:4 % M1 have 4 steady states
    for j=1:length(M1(1,:))
        M1St(i,j)=max(max(real(M1(3*(i-1)+1,j)),real(M1(3*(i-1)+2,j))),real(M1(3*(i-1)+3,j)));% Maximum Eigenvalue of each SS
%         M1St(1,i)=max(max(M1(1,i),M1(2,i)),M1(3,i));% Maximum Eigenvalue of TE
%         M1St(2,i)=max(max(M1(4,i),M1(5,i)),M1(6,i));% Maximum Eigenvalue of PFE
%         M1St(3,i)=max(max(M1(7,i),M1(8,i)),M1(9,i));% Maximum Eigenvalue of LE
%         M1St(4,i)=max(max(M1(10,i),M1(11,i)),M1(12,i));% Maximum Eigenvalue of AEE
    end
end
% M=1; fig_stability(M,M1St,vpar,var);
%
%% Model 2
for i=1:length(vpar)
    %beta=vpar(i);
    M2(:,i)=St_M2(vpar(i));
end
for i=1:5 % M2 have 5 steady states
    for j=1:length(M2(1,:))
        M2St(i,j)=max(max(real(M2(3*(i-1)+1,j)),real(M2(3*(i-1)+2,j))),real(M2(3*(i-1)+3,j)));% Maximum Eigenvalue of each SS
    end
end
% M=2;fig_stability(M,M2St,vpar,var);
% 
%% Model 3
for i=1:length(vpar)
    %beta=vpar(i);
    M3(:,i)=St_M3(vpar(i));
end
for i=1:4 % M3 have 4 steady states
    for j=1:length(M3(1,:))
        M3St(i,j)=max(max(real(M3(3*(i-1)+1,j)),real(M3(3*(i-1)+2,j))),real(M3(3*(i-1)+3,j)));% Maximum Eigenvalue of each SS
%         M3St(1,i)=max(max(M3(1,i),M3(2,i)),M3(3,i));% Maximum Eigenvalue in TE
%         M3St(2,i)=max(max(M3(4,i),M3(5,i)),M3(6,i));% Maximum Eigenvalue in PFE
%         M3St(3,i)=max(max(M3(7,i),M3(8,i)),M3(9,i));% Maximum Eigenvalue in LE
%         M3St(4,i)=max(max(M3(10,i),M3(11,i)),M3(12,i));% Maximum Eigenvalue in AEE
    end
end
% M=3;fig_stability(M,M3St,vpar,var);

% Model 4
for i=1:length(vpar)
    %beta=vpar(i);
    M4(:,i)=St_M4(vpar(i));
end
for i=1:2 % M4 have 2 steady states
    for j=1:length(M4(1,:))
        M4St(i,j)=max(max(real(M4(3*(i-1)+1,j)),real(M4(3*(i-1)+2,j))),real(M4(3*(i-1)+3,j)));% Maximum Eigenvalue of each SS
%         M4St(1,i)=max(max(M4(1,i),M4(2,i)),M4(3,i));% Maximum Eigenvalue in LE
%         M4St(2,i)=max(max(M4(4,i),M4(5,i)),M4(6,i));% Maximum Eigenvalue in AEE
    end
end
% M=4;fig_stability(M,M4St,vpar,var);

%% Function call
S=[M1St;M2St;M3St;M4St];
% end