%  Load data
a = mcread('A0001.tsv');
b = mcread('A0002.tsv');
c = mcread('A0003.tsv');
d = mcread('A0004.tsv');
e = mcread('A0005.tsv');
f = mcread('A0006.tsv');
g = mcread('A0007.tsv');
h = mcread('A0008.tsv');
i = mcread('A0009.tsv');
j = mcread('A0010.tsv');
k = mcread('A0011.tsv');
l = mcread('A0012.tsv');
m = mcread('A0013.tsv');

% Calculate QoM for each marker (this was used in NM!)
a_dx = mctimeder(a,1,[1 0.99999]);
a_dx_norm = mcnorm(a_dx);
a_dx_norm_mean = mcmean(a_dx_norm)';
a_dx_norm_std = mcstd(a_dx_norm)';

b_dx = mctimeder(b,1,[1 0.99999]);
b_dx_norm = mcnorm(b_dx);
b_dx_norm_mean = mcmean(b_dx_norm)';
b_dx_norm_std = mcstd(b_dx_norm)';

c_dx = mctimeder(c,1,[1 0.99999]);
c_dx_norm = mcnorm(c_dx);
c_dx_norm_mean = mcmean(c_dx_norm)';
c_dx_norm_std = mcstd(c_dx_norm)';

d_dx = mctimeder(d,1,[1 0.99999]);
d_dx_norm = mcnorm(d_dx);
d_dx_norm_mean = mcmean(d_dx_norm)';
d_dx_norm_std = mcstd(d_dx_norm)';

e_dx = mctimeder(e,1,[1 0.99999]);
e_dx_norm = mcnorm(e_dx);
e_dx_norm_mean = mcmean(e_dx_norm)';
e_dx_norm_std = mcstd(e_dx_norm)';

f_dx = mctimeder(f,1,[1 0.99999]);
f_dx_norm = mcnorm(f_dx);
f_dx_norm_mean = mcmean(f_dx_norm)';
f_dx_norm_std = mcstd(f_dx_norm)';

g_dx = mctimeder(g,1,[1 0.99999]);
g_dx_norm = mcnorm(g_dx);
g_dx_norm_mean = mcmean(g_dx_norm)';
g_dx_norm_std = mcstd(g_dx_norm)';

h_dx = mctimeder(h,1,[1 0.99999]);
h_dx_norm = mcnorm(h_dx);
h_dx_norm_mean = mcmean(h_dx_norm)';
h_dx_norm_std = mcstd(h_dx_norm)';

i_dx = mctimeder(i,1,[1 0.99999]);
i_dx_norm = mcnorm(i_dx);
i_dx_norm_mean = mcmean(i_dx_norm)';
i_dx_norm_std = mcstd(i_dx_norm)';

j_dx = mctimeder(j,1,[1 0.99999]);
j_dx_norm = mcnorm(j_dx);
j_dx_norm_mean = mcmean(j_dx_norm)';
j_dx_norm_std = mcstd(j_dx_norm)';

k_dx = mctimeder(k,1,[1 0.99999]);
k_dx_norm = mcnorm(k_dx);
k_dx_norm_mean = mcmean(k_dx_norm)';
k_dx_norm_std = mcstd(k_dx_norm)';

l_dx = mctimeder(l,1,[1 0.99999]);
l_dx_norm = mcnorm(l_dx);
l_dx_norm_mean = mcmean(l_dx_norm)';
l_dx_norm_std = mcstd(l_dx_norm)';

m_dx = mctimeder(m,1,[1 0.99999]);
m_dx_norm = mcnorm(m_dx);
m_dx_norm_mean = mcmean(m_dx_norm)';
m_dx_norm_std = mcstd(m_dx_norm)';

%QoM without stands

QoMA = a_dx_norm_mean(1:5);
QoMB = b_dx_norm_mean(1:6);
QoMC = c_dx_norm_mean(1:9);
QoMD = d_dx_norm_mean(1:8);
QoME = e_dx_norm_mean(1:4);
QoMF = f_dx_norm_mean(1:13);
QoMG = g_dx_norm_mean(1:4);
QoMH = h_dx_norm_mean(1:3);
QoMI = i_dx_norm_mean(1:6);
QoMJ = j_dx_norm_mean(1:3);
QoMK = k_dx_norm_mean(1:5);
QoML = l_dx_norm_mean(1:3);
QoMM = m_dx_norm_mean(1:2);


