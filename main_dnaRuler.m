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
roi = MakeRoi(data{1}.position,conifg);