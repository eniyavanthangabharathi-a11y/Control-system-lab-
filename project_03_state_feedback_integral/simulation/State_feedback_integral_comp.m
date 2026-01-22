% ---- Comparison: without integrator ----

% Original state-space model
A = [ 0      1;
     -k/m  -c/m ];

B = [ 0;
      1/m ];

C = [1 0];
D = 0;

% State feedback only
poles_sf = [-1.2 -1.3];
K_sf = place(A, B, poles_sf);

sys_sf = ss(A - B*K_sf, B, C, D);

% Simulate
y_sf = step(sys_sf, t);

% ---- Plot comparison ----
figure;
plot(t, y_sf, '--', 'LineWidth', 1.5); hold on;
plot(t, y, '-', 'LineWidth', 1.5);
grid on;
legend('State feedback only', 'State feedback + integral');
xlabel('Time (s)');
ylabel('Displacement');
title('Effect of Integral Action on Steady-State Error');

