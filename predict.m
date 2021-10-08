function category = predict(x,fs,B)
    
    coeffs = mfcc(x, fs, "LogEnergy", "Ignore", "WindowLength", fs*0.04, 'NumCoeffs', 35);
    
    probs = mean(mnrval(B, coeffs));
    
    [M, category] = max(probs);
    
end

