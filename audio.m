%Taking the number of seconds of playing music
ns=input('please enter the number of the secounds needed ');
%filename is where I am getting the sound wave file from on my cpu
[y,Fs] = audioread('audio.mp3');
y=y(1:ns*Fs,:);
sound(y,Fs);
pause(ns);
size('audio.mp3');
length(y)
whos y;
whos Fs;
TotalTime = length(y)./Fs;
t = 0:TotalTime/(length(y)):TotalTime-TotalTime/length(y);
subplot(3,2,1)
plot(t,y(:,1))
xlabel("time");
ylabel("amplitude");
title("Left wave in time domain")
subplot(3,2,2)
plot(t,y(:,2))
xlabel("time");
ylabel("amplitude");
title("Right wave in time domain")
F = 1./t;
nfft=fft(y);
subplot(3,1,2)
plot(F,y)