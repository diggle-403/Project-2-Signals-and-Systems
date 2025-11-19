% 1. Define the locations of the deltas
F_locations = [-500, 500];

% 2. Define the amplitudes at those locations
Amplitudes = [0.5, 0.5];

% 3. Plot with stem
figure;
stem(F_locations, Amplitudes, 'filled', 'black');

% 4. Add labels and adjust axes
title('X_{TX}(F) with F_c = 0');
xlabel('Frequency (F)');
ylabel('Amplitude');
grid on;

% --- This part is important ---
% Get the current axis limits
ax = gca;
% Add some padding to the x-axis (e.g., 100 units)
xlim([ax.XLim(1)-100, ax.XLim(2)+100]);
% Set y-axis to start at 0
ylim([0 0.6]);