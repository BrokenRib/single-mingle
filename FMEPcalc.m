clear; close all;

pmax = 145; % bar
N = 1000:100:7000; % rpm
S = 86e-3;
A = 0.3; % bar
B = 0.006;
C = 0.05; % bar*s/m
D = 85e-5; % bar*s2/m2

w = N*pi/30; % rad/s

for i=1:length(w)
    Sf(i) = S/2 * w(i);
    FMEP(i) = A + B*pmax + C * Sf(i) + D * Sf(i)^2;
end

plot(N,FMEP,'LineWidth',2);
grid on;
xlabel('Engine speed [rpm]');
ylabel('FMEP [bar]');
