% Load UAV roll model
run('../model/uav_roll_model.m');

% Desired closed-loop poles (moderate response)
poles = [-4 -5];

% State feedback gain
K = place(A, B, poles);

% Closed-loop system
sys_cl = ss(A - B*K, B, C, D);

% Step response (commanded roll angle)
figure;
step(sys_cl);
grid on;
title('Closed-Loop UAV Roll Attitude Response');
xlabel('Time (s)');
ylabel('Roll Angle (rad)');
