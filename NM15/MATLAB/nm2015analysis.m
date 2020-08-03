%  Load raw data by using mcread

a = mcread('file name');

% Calculate QoM for each marker (this was used during NM)
a_dx = mctimeder(a,1,[1 0.99999]);
a_dx_norm = mcnorm(a_dx);
a_dx_norm_mean = mcmean(a_dx_norm)';
a_dx_norm_std = mcstd(a_dx_norm)';


% Calculate QoM from mccumdist (almost the same - negligible difference from above)
a_mccumdist = mccumdist(a);
a_time=a.nFrames/a.freq
a_mccumdist_time = a_mccumdist.data(end,:)/a_time;

% norm-std
a_norm = mcnorm(a);
a_norm_std = mcstd(a_norm)';


% Find std for each dimension
a_mcstd=mcstd(a);
a_x_std = a_mcstd(1:3:3*a.nMarkers)';
a_y_std = a_mcstd(2:3:3*a.nMarkers)';
a_z_std = a_mcstd(3:3:3*a.nMarkers)';

% Find average height of each person
a_mcmean = mcmean(a);
a_z_mean = a_mcmean(3:3:3*a.nMarkers)';

