[x, Fs] = audioread('audio.ogg');
comp_cepstrum = cceps(x);
real_cepstrum = rceps(x);

