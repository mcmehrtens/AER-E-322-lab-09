% AER E 322 Lab 9 Spring 2023
% Section 4 Group 2
clear,clc,close all;

u = symunit;
F = 8*u.in; % [in]
V_s = 0.58*u.cm/u.us; % [cm/us]
V_w = 0.148*u.cm/u.us; % [cm/us]
T = 23*u.mm; % [mm]

L_1 = unitConvert(F - V_s / V_w * T, u.mm); % [mm]
delta_t_top = 2 * L_1 / unitConvert(V_w, u.mm); % [us]
delta_t_bot = 2 * unitConvert(T, u.cm) / V_s; % [us]

delta_t = delta_t_top + delta_t_bot; % [us]

fprintf("L_1 = %g [mm]\n" + ...
    "delta_t_top = %g [us]\n" + ...
    "delta_t_bot = %g [us]\n" + ...
    "delta_t_top + delta_t_bot = %g [us]\n", ...
    [double(separateUnits(L_1)), double(separateUnits(delta_t_top)), ...
    double(separateUnits(delta_t_bot))], double(separateUnits(delta_t)));