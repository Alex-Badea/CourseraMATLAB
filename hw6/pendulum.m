function [ T ] = pendulum( L, a0 )
%PENDULUM Summary of this function goes here
%   Detailed explanation goes here
if L == 0 || a0 == 0, T = 0; return, end
DT = 1e-6;
G = 9.8;
theta = a0;
omega = 0;
qT = 0;
while theta > 0
    alpha = -G*sin(theta)/L;
    omega = omega + alpha*DT;
    theta = theta + omega*DT;
    qT = qT + DT;
end
T = 4*qT;
end

