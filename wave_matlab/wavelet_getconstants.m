% NAME: wavelet_getconstants
% 
% PURPOSE: To return constants for wavelet routines based on specified
% wavelet.  Reference to Table 2 from Torrence and Compo (1998).
%
% REFERENCE: Torrence and Compo (1998), Bull. Amer. Meteorol. Soc. 79, pgs. 61-78.
%
% CALLING SEQUENCE: [Cdelta dj0 gamma upsilon] = wavelet_getconstants(mother)
%
% INPUTS:
%       mother: the name of the mother wavelet
%
% OUTPUTS:
%       Cdelta  : reconstruction factor
%       dj0     : decorrelation factor for time averaging
%       gamma   : 
%       upsilon : energy normalization factor
%
%
%   Written by C. Cox 10/11/2012

function [Cdelta dj0 gamma upsilon] = wavelet_getconstants(mother)

mother = upper(mother);

% Table 2 from Torrence and Compo (1998)
if strcmp('MORLET',mother)
    Cdelta  = 0.776; 
    gamma   = 2.32;
    dj0     = 0.6;
    upsilon = pi^(-1/4);   
elseif strcmp('PAUL',mother)
    Cdelta  = 1.132; 
    gamma   = 1.17;
    dj0     = 1.5;
    upsilon = 1.079;
elseif strcmp('MARR',mother)
    Cdelta  = 3.541; 
    gamma   = 1.43;
    dj0     = 1.4;
    upsilon = 0.867;
elseif strcmp('DOG',mother)
    Cdelta  = 1.966; 
    gamma   = 1.37;
    dj0     = 0.97;
    upsilon = 0.884;
end