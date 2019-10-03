function [data] = LoadDataThunderStorm(nameData)
%Loading data processed with FIJI plugin ThunderStorm
%   data{i}.position(:,1) x positions of found spots for frame i
%   data{i}.position(:,2) y positions of found spots for frame i
%---load data---
load(nameData);
rawData = table2array(rawData);
%---put data in structure---
N = max(rawData(:,1));
for i=1:N
    indexTemp = find(rawData(:,1)==i);
    temp = rawData(indexTemp,:);
    data{i}.position(:,1)= temp(:,2);
    data{i}.position(:,2)= temp(:,3);
    data{i}.sigma = temp(:,4);
    data{i}.I = temp(:,5);
    data{i}.offset = temp(:,6);
    data{i}.bkgstd = temp(:,7);
    data{i}.uncertainty = temp(:,8);
    data{i}.detection = temp(:,9);
end
end

