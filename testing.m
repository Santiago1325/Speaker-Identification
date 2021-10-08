% [xs, Fs] = audioread('audio.ogg');
% coeffs = mfcc(xs, Fs, "LogEnergy", "Ignore", "WindowLength", Fs, 'NumCoeffs', 35);
% 
% 
% 
% t = (0:length(xs)-1)/Fs;
% plot(t,xs);
% 
% 
% figure
% imagesc(coeffs(:,2:end)'); 
% colorbar

 files = dir(fullfile('Audios\*.ogg'));
 for i = 1:size(files,1)
    [x, Fs] = audioread(strcat('Audios\',files(i).name));
    coeffs = mfcc(x, Fs, "LogEnergy", "Ignore", "WindowLength", Fs*0.04, 'NumCoeffs', 35);
    predict(x,Fs,B)
end
