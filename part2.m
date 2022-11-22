%   Author: Luke Canny 19339166
%   Date:   16/11/22
%   Description: This script generates the required plots for Part B of
%   Assignment 2 EE445 (Digital Signal Processing)
%

% Declaring inital variables
fsamp           = 10000;    % Sampling Frequency
fcut            = 3000;     % Cut-off Frequency
transitionBW    = 400;      % Transition Bandwidth
gainStop        = 0;        % Stopband Gain

% Deriving variables required to use firpm function
f = [0 fcut/(fsamp/2) (fcut+transitionBW)/(fsamp/2) 1];
a = [1 1 0 0];

% Applying firpm function
b = firpm(20, f, a);
freqz(b,1,512);
