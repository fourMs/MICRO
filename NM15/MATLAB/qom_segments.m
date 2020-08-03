%Trimming time series by sound stimuli

b1=mctrim(a,0,59);
b2=mctrim(a,60,119);
b3=mctrim(a,120,179);
b4=mctrim(a,180,239);
b5=mctrim(a,240,299);
b6=mctrim(a,300,359);

parts = who('b*');

% Calculate QoM from mccumdist (almost the same - negligible difference from above)
a=b6;

a_mccumdist = mccumdist(a);
a_time=a.nFrames/a.freq
a_mccumdist_time = a_mccumdist.data(end,:)'/a_time;


