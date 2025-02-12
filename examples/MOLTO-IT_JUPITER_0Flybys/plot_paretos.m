figure
hold on
% 0 FLybys
x = [   1.9,   2    , 2.1,2.2,2.3,2.4, 2.5  ,  3     ,3.5,   4, ];
y = [ 0.3338,0.3021,0.2839,0.2718,0.2631, 0.2568, 0.2521,0.2453,0.2432,0.2429];
plot(x,y)
% 1 FLyby Venus
x = [1.9,2,2.1,2.2,2.3,2.4,2.5,2.6,2.7,2.8,2.9,3,3.5,4];
y = [0.466,0.364,0.311,0.274,0.248,0.229,0.215,0.205,0.195,0.19,0.185,0.182,0.176,0.180 ];
plot(x,y)

% 2 FLyby Venus-Mars
x = [ 2.15, 2.2,2.3,2.4,2.5,2.6,2.7,2.8,2.9,3.0,3.1,3.2,3.3,3.4,3.5,3.6,3.7,3.8,3.9,4.0];
y = [0.47,0.41,0.32,0.255,0.208,0.175,0.151,0.135,0.1223,0.1133,0.1064,0.101,0.098,0.095,0.093,0.092,0.091,0.090,0.089,0.089 ];
plot(x,y)

% 3 FLybys Venus-Mars-Earth
x = [2.2,2.3,2.4,2.5,2.6,2.7,2.8,2.9,3.0,3.1,3.2,3.3,3.4,3.5,3.6,3.7,3.8,3.9,4.0];
y = [0.5,0.35,0.2686,0.2191,0.1847,0.1592,0.1397,0.125,0.1139,0.1054,0.0989,0.0943,0.091,0.0889,0.0880, 0.0874,0.0873,0.0872, 0.0870];
plot(x,y)

%%
% ENVOLVENTE DE PARETOS
%
figure
hold on
% 0 FLybys
x = [   1.9,   2    , 2.1,2.2 ];
y = [ 0.3338,0.3021,0.2839,0.2718];
plot(x,y,'black')
% 1 FLyby Venus
x = [2.2,2.3,2.4,2.5];
y = [0.2718,0.248,0.229,0.208];
plot(x,y,'red')

% 2 FLyby Venus-Mars
x = [2.5,2.6,2.7,2.8,2.9,3.0];
y = [0.208,0.175,0.151,0.135,0.1223,0.1133];
plot(x,y,'blue')

% 3 FLybys Venus-Mars-Earth
x = [3.0,3.1,3.2,3.3,3.4,3.5,3.6,3.7,3.8,3.9,4.0];
y = [0.1133,0.1054,0.0989,0.0943,0.091,0.0889,0.0880, 0.0874,0.0873,0.0872, 0.0870];
plot(x,y,'green')

