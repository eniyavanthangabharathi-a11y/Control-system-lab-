% Plant definition: Mass–Spring–Damper system

m = 2;      % mass (kg)
c = 2;      % damping coefficient (Ns/m)
k = 4;      % spring constant (N/m)

s = tf('s');
G = 1 / (m*s^2 + c*s + k);

