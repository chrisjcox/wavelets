% NAME: waveletrecon
% 
% PURPOSE: Reconstruct data (x) at scale to check accuracy of wavelet routine. 
% It is based on Eqs 11 and 14 from Torrence and Compo (1998) and their 
% recommondation for accuracy check.
%
% REFERENCE: Torrence and Compo (1998), Bull. Amer. Meteorol. Soc. 79, pgs. 61-78.
%
% CALLING SEQUENCE: 
%
% INPUTS:
%   Cdelta
%   dj
%   dt
%   sj
%   upsilon
%   W
%   n
%
% OUTPUTS:
%   xn
%   sigsq
%
%
%   Written by C. Cox 10/11/2012

function [xn sigsq] = waveletrecon(Cdelta,dj,dt,sj,upsilon,W,n,ind)

% Eq. 11
term1 = ( dj * dt^(1/2) ) / ( Cdelta * upsilon) ;
term2 = real(W(ind)) ./ ( sj^(1/2) )            ;
xn    = term1 * term2                           ;
clear term1 term2

% Eq. 14
term1 = ( dj * dt ) / ( Cdelta * n)             ;
term2 = ( (abs(W(ind))).^2 ) ./ sj              ;
sigsq = term1 .* term2                          ;
clear term1 term2
