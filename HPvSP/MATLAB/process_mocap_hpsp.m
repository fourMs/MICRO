%Script for reading and processing motion capture files collected in the
%2018 HPvSP experiment. Requires the MocapToobox:
%https://www.jyu.fi/hytk/fi/laitokset/mutku/en/research/materials/mocaptoolbox

% Specify the folder where the files live.
hpFolder = '/Users/vesanche/Desktop/UiO/NM/NM Database/HPvSP/MoCap Data/headphones_c3d';
spFolder = '/Users/vesanche/Desktop/UiO/NM/NM Database/HPvSP/MoCap Data/speakers_c3d';

% Get a list of all files in the folder with the desired file name pattern.
hpPattern = fullfile(hpFolder, '*.c3d');
hpFiles = dir(hpPattern);

%Correct the order of the files to align with actual subject numbering
orderhp = [1 12 23 34 38 39 40 41 42 43 2 3 4 5 6 7 8 9 10 11 13 14 15 16 17 18 19 20 21 22 24 25 26 27 28 29 30 31 32 33 35 36 37 ];
ordersp = [1 12 33 38 39 40 41 42 2 3 4 5 6 7 8 9 10 11 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 34 35 36 37];

spPattern = fullfile(spFolder, '*.c3d');
spFiles = dir(spPattern);

hpFiles = hpFiles(orderhp);
spFiles = spFiles(ordersp);

hp_mocap = cell(5,length(hpFiles));
sp_mocap = cell(5,length(spFiles));


%processing headphones files
for k = 1 : length(hpFiles)
    baseFileNamehp = hpFiles(k).name;
    fullFileNamehp = fullfile(hpFiles(k).folder, baseFileNamehp);
    fprintf(1, 'Now reading %s\n', fullFileNamehp);
    
    hp_mocap{1,k} =  mcread(fullFileNamehp); %reeading c3d files into a struct with the MocapToolbox
    hp_mocap{2,k} = mctimeder(hp_mocap{1,k},1,[1 0.99999]); %calculating velocity as the derivative of position and storing it into the second row of the cell array
    hp_mocap{3,k} = mcnorm(hp_mocap{2,k}); %calculating the norm vector of the velocity and storing it into the third row of the cell array
    hp_mocap{4,k} = mcmean(hp_mocap{3,k})'; %calculating the mean of the norm velocity and storing it into the fourth row of the cell array
    hp_mocap{5,k} = mcstd( hp_mocap{3,k})'; %calculating the std deviation of the norm velocity and storing it into the fifth row of the cell array
    
end

%processing speakers files
for k = 1 : length(spFiles)
    baseFileNamesp = spFiles(k).name;
    fullFileNamesp = fullfile(spFiles(k).folder, baseFileNamesp);
    fprintf(1, 'Now reading %s\n', fullFileNamesp);
    
    sp_mocap{1,k} =  mcread(fullFileNamesp); 
    sp_mocap{1,k} =  mcread(fullFileNamehp); %reeading c3d files into a struct with the MocapToolbox
    sp_mocap{2,k} = mctimeder(sp_mocap{1,k},1,[1 0.99999]); %calculating velocity as the derivative of position and storing it into the second row of the cell array
    sp_mocap{3,k} = mcnorm(sp_mocap{2,k}); %calculating the norm vector of the velocity and storing it into the third row of the cell array
    sp_mocap{4,k} = mcmean(sp_mocap{3,k})'; %calculating the mean of the norm velocity and storing it into the fourth row of the cell array
    sp_mocap{5,k} = mcstd( sp_mocap{3,k})'; %calculating the std deviation of the norm velocity and storing it into the fifth row of the cell array
    
end
