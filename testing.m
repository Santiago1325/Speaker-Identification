[xs, Fs] = audioread('audio.ogg');
coeffs = mfcc(xs, Fs, "LogEnergy", "Ignore", "WindowLength",Fs);


t = (0:length(xs)-1)/Fs;
plot(t,xs);


figure
imagesc(coeffs(:,2:end)'); 
colorbar