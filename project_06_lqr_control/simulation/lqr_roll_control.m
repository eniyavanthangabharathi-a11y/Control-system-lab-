% Load UAV roll model
run('../model/uav_roll_model.m');

% LQR weighting matrices
Q = diag([10 4]);   % penalize roll angle more than rate
R = 1;              % penalize control effort

% LQR gain
K_lqr = lqr(A, B, Q, R);

% Closed-loop system
sys_lqr = ss(A - B*K_lqr, B, C, D);

% Step response
figure;
step(sys_lqr);
grid on;
title('UAV Roll Control using LQR');
xlabel('Time (s)');
ylabel('Roll Angle (rad)');
