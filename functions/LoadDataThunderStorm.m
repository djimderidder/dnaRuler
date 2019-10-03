function [data] = LoadDataThunderStorm(nameData)
%Loading data processed with FIJI plugin ThunderStorm
%   data{i}.x x positions of found spots for frame i
%   data{i}.y y positions of found spots for frame i
load(nameData);
rawData = table2array(rawData);
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

