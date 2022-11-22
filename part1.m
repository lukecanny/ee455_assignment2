%   Author: Luke Canny 19339166
%   Date:   16/11/22
%   Description: This script generates the required plots for Part A of
%   Assignment 2 EE445 (Digital Signal Processing)
%

% Declaring inital variables
fsamp           = 12000;    % Sampling Frequency
fcut            = 3500;     % Cut-off Frequency
transitionBW    = 400;      % Transition Bandwidth
Astop           = 30;       % Stop band attenuation
dPass           = 0.1;      % Passband Ripple

% Applying cheb1ord function
Wp = fcut/(fsamp/2);
Ws = (fcut+transitionBW)/(fsamp/2);
Rp = dPass;
Rs = Astop;
[n,Wp] = cheb1ord(Wp,Ws,Rp,Rs);

% Applying cheby1 function
[b,a] = cheby1(n, Rp, Wp);

% Applying freqz function to plot Magnitude and Phase response.
freqz(b,a,1024,fsamp)