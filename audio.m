%filename is where I am getting the sound wav file from on my cpu, 
[y,Fs] = audioread('audio.mp3');
sound(y,Fs);
size('audio.mp3');
length(y)
whos y;
whos Fs;
TotalTime = length(y)./Fs;
t = 0:TotalTime/(length(y)):TotalTime-TotalTime/length(y);
subplot(2,1,1)
plot(t,y)
xlabel("time");
ylabel("amplitude");
F = 1./t;
nfft=fft(y);
subplot(2,1,2)
plot(F,y)
