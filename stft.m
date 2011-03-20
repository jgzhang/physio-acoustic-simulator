% Physio-Acoustic Simulator
%
% This code is adapted from
% http://www.ee.columbia.edu/~dpwe/resources/matlab/pvoc/

function D = stft(x, f, w, h, sr, filt_mode, filt_vec, filt_num)
% D = stft(X, F, W, H, SR)                       Short-time Fourier transform.
%	Returns some frames of short-term Fourier transform of x.  Each 
%	column of the result is one F-point fft (default 256); each
%	successive frame is offset by H points (W/2) until X is exhausted.  
%       Data is hann-windowed at W pts (F), or rectangular if W=0, or 
%       with W if it is a vector.
%       Without output arguments, will plot like sgram (SR will get
%       axes right, defaults to 8000).
%	See also 'istft.m'.
% dpwe 1994may05.  Uses built-in 'fft'
% $Header: /home/empire6/dpwe/public_html/resources/matlab/pvoc/RCS/stft.m,v 1.4 2010/08/13 16:03:14 dpwe Exp $

if nargin < 2;  f = 256; end
if nargin < 3;  w = f; end
if nargin < 4;  h = 0; end
if nargin < 5;  sr = 8000; end

% expect x as a row
if size(x,1) > 1
  x = x';
end

s = length(x);

if length(w) == 1
  if w == 0
    % special case: rectangular window
    win = ones(1,f);
  else
    if rem(w, 2) == 0   % force window to be odd-len
      w = w + 1;
    end
    halflen = (w-1)/2;
    halff = f/2;   % midpoint of win
    halfwin = 0.5 * ( 1 + cos( pi * (0:halflen)/halflen));
    win = zeros(1, f);
    acthalflen = min(halff, halflen);
    win((halff+1):(halff+acthalflen)) = halfwin(1:acthalflen);
    win((halff+1):-1:(halff-acthalflen+2)) = halfwin(1:acthalflen);
  end
else
  win = w;
end

w = length(win);
% now can set default hop
if h == 0
  h = floor(w/2);
end

c = 1;

% pre-allocate output array
d = zeros((1+f/2),1+fix((s-f)/h));

if (strcmp('audiogram', filt_mode)) filt_mode = 1;
elseif (strcmp('cochlear', filt_mode)) filt_mode = 2;
end

% Generate filter
if (filt_mode == 1)
    scale = ones(1, f);
    for i=1:size(filt_vec, 1)
        lo = floor(f / 2 * filt_vec(i, 1) / (sr/2)) + 1;
        if (filt_vec(i, 2) == -1)
            hi = f;
        else
            hi = floor(f / 2 * filt_vec(i, 2) / (sr/2)) + 1;
        end
        % 0 maps to 0
        % (0,1] maps to (0.001,1]
        if (filt_vec(i,3) == 0)
            scale(lo:hi) = 0;
        else
            scale(lo:hi) = db2mag((filt_vec(i, 3) - 1) * 60);
        end
    end
elseif (filt_mode == 2)
    filt_len = size(filt_vec, 1);
    filt = floor(filt_vec .* f/2 ./ (sr/2)) + 1;
    peaks = zeros(filt_len,1);
end

for b = 0:h:(s-f)
  u = win.*x((b+1):(b+f));
  t = fft(u);
  
  if (filt_mode == 2)
      for i = 1:filt_len
          peaks(i) = max(t(filt(i,1):filt(i,2)));
      end
      [peaks, I] = sort(peaks, 1, 'descend');
      t = zeros(1, length(t));
      for i=1:filt_num
          lo = filt(I(i),1);
          hi = filt(I(i),2);
          t(floor((lo+hi)/2)) = peaks(i);
      end
  else  
    % FILTERS APPLIED HERE
    t = t .* scale;
  end
  
  
  d(:,c) = t(1:(1+f/2))';
  c = c+1;
end;

% If no output arguments, plot a spectrogram
if nargout == 0
  tt = [0:size(d,2)]*h/sr;
  ff = [0:size(d,1)]*sr/f;
  imagesc(tt,ff,20*log10(abs(d)));
  axis('xy');
  xlabel('time / sec');
  ylabel('freq / Hz')
  % leave output variable D undefined
else
  % Otherwise, no plot, but return STFT
  D = d;
end
