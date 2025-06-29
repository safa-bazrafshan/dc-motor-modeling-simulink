% Motor parameters
R = 1;          % Armature resistance (Ohm)
L = 0.5;        % Armature inductance (H)
Kb = 0.01;      % Back EMF constant (V·s/rad)
Kt = 0.01;      % Torque constant (N·m/A)
J = 0.01;       % Rotor inertia (kg·m^2)
B = 0.1;        % Viscous friction coefficient (N·m·s)

% Numerator and denominator of transfer function
num = [Kt];  
den = [J*L, (J*R + B*L), (B*R + Kb*Kt)];

% Create transfer function
sys = tf(num, den);

% Display the transfer function
disp('Transfer Function:')
sys

% Step response
step(sys)
title('Step Response of the DC Motor')
xlabel('Time (s)')
ylabel('Angular Velocity (rad/s)')
grid on