% Step 1: Load CSV data
data = csvread('taps_data.csv'); % Replace 'your_data.csv' with your file name

% Assuming the first column is time and the second column is the signal
signal_x = data(:, 3);
signal_y = data(:, 2);
signal_z = data(:, 1);

% Step 2: Design Butterworth bandpass filter
fs = 100;

% Cutoff frequency
cutoff= 0.3;
order = 1; % Filter order

% Design Butterworth filter
[b, a] = butter(order, cutoff);

% Step 3: Apply the filter to the signal
filtered_signal_x = filter(b, a, signal_x);
filtered_signal_y = filter(b, a, signal_y);
filtered_signal_z = filter(b, a, signal_z);

% Step 4: Power Spectral Density of Filtered Signal

[pxx, fx] = pwelch(signal_x, [], [], [], fs);
[pyy, fy] = pwelch(signal_y, [], [], [], fs);
[pzz, fz] = pwelch(signal_z, [], [], [], fs);

% Step 5: Plot Original Signals

figure(1);
plot(data);
title('Original Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;

figure(2);
subplot(3,1,1)
plot(signal_x);
title('Original Signal x-axis');
xlabel('Time');
ylabel('Amplitude');
grid on;

subplot(3,1,2)
plot(signal_y);
title('Original Signal y-axis');
xlabel('Time');
ylabel('Amplitude');
grid on;

subplot(3,1,3)
plot(signal_z);
title('Original Signal z-axis');
xlabel('Time');
ylabel('Amplitude');
grid on;

% Step 6: Plot Filtered Signals

figure(3);
subplot(3,1,1)
plot(filtered_signal_x);
title('Filtered signal of x-axis');
xlabel('Time');
ylabel('Amplitude');
grid on;

subplot(3,1,2)
plot(filtered_signal_y);
title('Filtered signal of y-axis');
xlabel('Time');
ylabel('Amplitude');
grid on;

subplot(3,1,3)
plot(filtered_signal_z);
title('Filtered signal of z-axis');
xlabel('Time');
ylabel('Amplitude');
grid on;

% Step 7: Plot Power Spectral Desnity of Filtered Signal

figure(4);
subplot(3,1,1)
plot(fx, pxx);
title('Fourier Transform of Filtered signal of x-axis');
xlabel('Frequency');
ylabel('Power');
grid on;

subplot(3,1,2)
plot(fy, pyy);
title('Fourier Transform of Filtered signal of y-axis');
xlabel('Frequency');
ylabel('Power');
grid on;

subplot(3,1,3)
plot(fz, pzz);
title('Fourier Transform of Filtered signal of z-axis');
xlabel('Frequency');
ylabel('Power');
grid on;