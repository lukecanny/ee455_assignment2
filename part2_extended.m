%   Author: Luke Canny 19339166
%   Date:   16/11/22
%   Description: This script generates the required plots for Part B of
%   Assignment 2 EE445 (Digital Signal Processing)
%
close all
% Declaring inital variables
fsamp           = 10000;    % Sampling Frequency
fcut            = 3000;     % Cut-off Frequency
transitionBW    = 400;      % Transition Bandwidth
gainStop        = 0;        % Stopband Gain
n = 50;                     % Order of the filter

% Deriving variables required to use firpm function
f = [0 fcut/(fsamp/2) (fcut+transitionBW)/(fsamp/2) 1];
a = [1 1 0 0];

% Applying firpm function & Plotting
b = firpm(n, f, a);
freqz(b,1,512);
title("Plot of Magnitude Response - n = " + n);
hold on;

% Applying fir1 function & Plotting
b = fir1(n, fcut/(fsamp/2));
freqz(b,1,512);
title("Plot of Magnitude Response - n = " + n);
hold on;

% Changing colours of lines to differenciate between the two
lines = findall(gcf, 'type', 'line');
lines(1).Color = 'red';
lines(2).Color = 'blue';
hold off;
