function [output] = DataInRoi(roi,data,config)
%Find all spots per frame in FOV
%   Detailed explanation goes here
%---parameters---
K = config.roiSize;
px = config.pixelSize;

%---organise---
n = length(roi);
N = length(data);
for k=1:n
    dataRoi = [];
    for i=1:N
        check = data{i}.position(:,1)>roi(k,1) & data{i}.position(:,2)>roi(k,2) & data{i}.position(:,1)<(roi(k,1)+K*px) & data{i}.position(:,2)<(roi(k,2)+K*px);
        dataRoi = [dataRoi; data{i}.position(check,:) i*ones(sum(check),1)];
    end
    output{k} = dataRoi;
end
end

