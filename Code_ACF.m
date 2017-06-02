function c = ACF(z,m)

% Parameters:
%   z: n-length vector
%   m: number of lags of the auto-correlation function of z
%      to return

a = 1;
b = 2;

zhat = z - mean(z);
autocorr = conv(zhat,zhat(end:-1:1))/length(z);

[val,idx] = max(autocorr);

c = autocorr(idx+1:idx+m);