clear all
close all
clc

s = tf('s');
w = 0.001:100;
G1 = 100e6 / (1+10*s);
G2 = 50e6 / (1+5*s);
G3 = 150e6 / (1+20*s);

L.sys = [(5.21*(1+10*s)/(1+0.5*s) + 0.4*0.0076/s)*G1 + (1.65*(1+5*s)/(1+2*s) + 0.2*0.0076/s)*G2 + (-3.29*(1+20*s)/(1+10*s) + 0.4*0.0076/s)*G3]*1/(40e3 * s * (2*pi*50)^2);
[L.mag, L.phase] = bode(L.sys, w);
L.mag = 20*log10(squeeze(L.mag));
[L.Gm,L.Pm,L.Wcg,L.Wcp] = margin(L.sys);  
set(figure(), "Windowstyle", "docked");
semilogx(w, L.mag, 'LineWidth', 1.5);
hold on;
yline(0,'LineWidth', 1);

legend("\omega_c = " + L.Wcp)
grid on;



L1.sys = [(0.03788 + 2/3*0.01136/s)*G1 + (1.65 + 1/3*0.01136/s)*G2]*1/(30e3 * s * (2*pi*50)^2);
[L1.mag, L1.phase] = bode(L1.sys, w);
L1.mag = 20*log10(squeeze(L1.mag));
[L1.Gm,L1.Pm,L1.Wcg,L1.Wcp] = margin(L1.sys); 
set(figure(), "Windowstyle", "docked");
semilogx(w, L1.mag, 'LineWidth', 1.5);
hold on;
yline(0, "linewidth", 1);

legend("\omega_c = " + L1.Wcp)
grid on;



L2.sys = [(0.589244*(1+49.75*s)/(1+0.025*s) + 0.01136/s)*G3 ]*1/(10e3 * s * (2*pi*50)^2);
[L2.mag, L2.phase] = bode(L2.sys, w);
L2.mag = 20*log10(squeeze(L2.mag));
[L2.Gm,L2.Pm,L2.Wcg,L2.Wcp] = margin(L2.sys); 
set(figure(), "Windowstyle", "docked");
semilogx(w, L2.mag, 'LineWidth', 1.5);
hold on;
yline(0,'LineWidth', 1);

legend("\omega_c = " + L2.Wcp)
grid on;

