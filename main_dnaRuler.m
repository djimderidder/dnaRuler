clc; clear all; close all;
addpath(genpath(fileparts(which('main_dnaRuler'))));
%---config---
config.nameData = 'matlab_data_dnaRuler.mat';
config.roiSize = 20; %square length of ROI
config.pixelSize = 106.6666;
config.imageSize = 255;

%---loading data---
data = LoadDataThunderStorm(config.nameData);

%---find ROI---
roi = MakeRoi(data{1}.position,config);
dataRoi = DataInRoi(roi,data,config);

%---plot ROI 1---
figure()
scatter(dataRoi{1}(1,:),dataRoi{1}(2,:))
figure()
suplot(1,2,1)
histogram(dataRoi{1}(1,:),100)
title('x')
suplot(1,2,2)
histogram(dataRoi{1}(2,:),100)
title('y')