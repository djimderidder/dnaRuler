clc; clear all; close all;
%---config---
config.nameData = 'matlab_data_dnaRuler.mat';

%---loading data---
addpath(genpath(fileparts(which('main_dnaRuler'))));
data = LoadDataThunderStorm(config.nameData);

%---find ROI---
