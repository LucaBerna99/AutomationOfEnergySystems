clear all
clc

P1 = 0:.01:120;
P3 = 0:.01:150;

for i=1:numel(P1)
c1(i) = 0.5 + 1.5*(P1(i) - 95)^2;
end
c1()

for i=1:numel(P3)
c3(i) = 1.5 + 4*(P3(i) - 140)^2;
end

set(figure(), "WindowStyle", "docked");
plot (P1, c1, P3, c3);

Pe = 170;
P2 = 50;



[x,y] = meshgrid(0:.1:150);
keepind = (x + y) == 120;
x(~keepind) = NaN;
y(~keepind) = NaN;
f = (0.5 + 1.5*(x - 95).^2) + (1.5 + 4*(y - 140).^2);
surf(x,y,f)