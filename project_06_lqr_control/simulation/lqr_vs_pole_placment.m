% Load UAV roll model
run('../model/uav_roll_model.m');

% Pole placement controller
poles_pp = [-4 -5];
K_pp = place(A, B, poles_pp);
sys_pp = ss(A - B*K_pp, B, C, D);

% LQR controller
Q = diag([10 1]);
R = 1;
K_lqr = lqr(A, B, Q, R);
sys_lqr = ss(A - B*K_lqr, B, C, D);

% Compare responses
figure;
step(sys_pp, sys_lqr);
grid on;
legend('Pole Placement', 'LQR');
title('Pole Placement vs LQR for UAV Roll Control');
