tones = [125 250 500 1000 2000 4000 8000];
test = zeros(1, length(tones));

for i = 1:length(tones)
    cf = tones(i);              % carrier frequency (Hz)
    sf = 22050;                 % sample frequency (Hz)
    d = 1.0;                    % duration (s)
    n = sf * d;                 % number of samples
    s = (1:n) / sf;             % sound data preparation
    s = sin(2 * pi * cf * s);   % sinusoidal modulation
    sound(s, sf);               % sound presentation
    pause(d);

    heard = questdlg('Did you hear the tone?', 'Tone Test', 'Yes', 'No', 'Yes');
    switch heard
        case 'Yes'
            test(i) = 1;
        case 'No'
            test(i) = 0;
        otherwise
            test(i) = 0;
    end
end

