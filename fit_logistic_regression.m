function beta_coeffs = fit_logistic_regression()

    files = dir(fullfile('Audios\*.ogg'));

    X = [];
    Y = []; 
    for i = 19:28
        [x, Fs] = audioread(strcat('Audios\',files(i).name));
        x = x./max(x);
        coeffs = mfcc(x, Fs, "LogEnergy", "Ignore", "WindowLength", Fs*0.04, 'NumCoeffs', 35);
        X = [X ; coeffs];
        Y = [Y ; ones(size(coeffs, 1),1)];
    end
    
    for i = 9:18
        [x, Fs] = audioread(strcat('Audios\',files(i).name));
        x = x./max(x);
        coeffs = mfcc(x, Fs, "LogEnergy", "Ignore", "WindowLength", Fs*0.04, 'NumCoeffs', 35);
        X = [X ; coeffs];
        Y = [Y ; ones(size(coeffs, 1),1) .* 2];
    end
    
    for i = 1:8
        [x, Fs] = audioread(strcat('Audios\',files(i).name));
        x = x./max(x);
        coeffs = mfcc(x, Fs, "LogEnergy", "Ignore", "WindowLength", Fs*0.04, 'NumCoeffs', 35);
        X = [X ; coeffs];
        Y = [Y ; ones(size(coeffs, 1),1) .* 3];
    end    
    beta_coeffs = mnrfit(X,Y);
     

end