m1=mctrim(m,0,29);
m2=mctrim(m,30,89);
m3=mctrim(m,90,149);
m4=mctrim(m,150,209);
m5=mctrim(m,210,269);
m6=mctrim(m,270,329);
m7=mctrim(m,330,359);

m1_dx = mctimeder(m1,1,[1 0.99999]);
m1_dx_norm = mcnorm(m1_dx);
m1_dx_norm_mean = mcmean(m1_dx_norm)';

m2_dx = mctimeder(m2,1,[1 0.99999]);
m2_dx_norm = mcnorm(m2_dx);
m2_dx_norm_mean = mcmean(m2_dx_norm)';

m3_dx = mctimeder(m3,1,[1 0.99999]);
m3_dx_norm = mcnorm(m3_dx);
m3_dx_norm_mean = mcmean(m3_dx_norm)';

m4_dx = mctimeder(m4,1,[1 0.99999]);
m4_dx_norm = mcnorm(m4_dx);
m4_dx_norm_mean = mcmean(m4_dx_norm)';

m5_dx = mctimeder(m5,1,[1 0.99999]);
m5_dx_norm = mcnorm(m5_dx);
m5_dx_norm_mean = mcmean(m5_dx_norm)';

m6_dx = mctimeder(m6,1,[1 0.99999]);
m6_dx_norm = mcnorm(m6_dx);
m6_dx_norm_mean = mcmean(m6_dx_norm)';

m7_dx = mctimeder(m7,1,[1 0.99999]);
m7_dx_norm = mcnorm(m7_dx);
m7_dx_norm_mean = mcmean(m7_dx_norm)';


