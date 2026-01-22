% Mass–Spring–Damper parameters
m = 2;
c = 2;
k = 4;

% Original state-space model
A = [ 0      1;
     -k/m  -c/m ];

B = [ 0;
      1/m ];

C = [1 0];
D = 0;

% Augmented system (add integral of error)
A_aug = [ A      zeros(2,1);
         -C       0         ];

B_aug = [ B;
           0 ];

C_aug = [C 0];
D_aug = 0;
