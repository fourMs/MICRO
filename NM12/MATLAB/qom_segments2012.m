%Trimming time series by sound stimuli

b1=mctrim(a,0,179);
b2=mctrim(a,180,359);

parts = who('b*');

% Calculate QoM from mccumdist (almost the same - negligible difference from above)
a=b1;

a_mccumdist = mccumdist(a);
a_time=a.nFrames/a.freq
a_mccumdist_time = a_mccumdist.data(end,:)'/a_time;


