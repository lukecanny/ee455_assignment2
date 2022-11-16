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
