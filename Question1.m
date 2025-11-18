% 1. Define a carrier frequency (you must pick one)
Fc = 5500;

% 2. Define the locations of the four deltas
%    F_locations = [ (Fc+500), (Fc-500), -(Fc-500), -(Fc+500) ];
%    Let's sort them from left to right:
F_locations = [ -(Fc+500), -(Fc-500), (Fc-500), (Fc+500) ];
% This will be: [ -5500, -4500, 4500, 5500 ]

% 3. Define the amplitudes (all are 1/4)
Amplitudes = [0.25, 0.25, 0.25, 0.25];

% 4. Plot with stem
figure;
stem(F_locations, Amplitudes, 'filled', 'Black');

% 5. Add labels and adjust axes
title(' X_T_X(F)');
xlabel('Frequency (F)');
ylabel('Amplitude');
grid on;

% --- Adjust axes for a clean look ---
ylim([0 0.3]); % A little above 0.25
% Give 1000Hz padding on each side
xlim([-Fc-1000, Fc+1000]);