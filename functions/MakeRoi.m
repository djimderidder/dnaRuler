function [output] = MakeRoi(positions,config)
%for each spot create ROI
%   Remove ROI if outside frame size
%---parameters---
K = config.roiSize;
px = config.pixelSize;
Np = config.imageSize;

%---Check if ROI is inside FOV---
roiTL = positions(:,:)-(K/2)*px;
roiBL = positions(:,:)+(K/2)*px;
check = roiTL(:,1)>0 & roiTL(:,2)>0 & roiBL(:,1)<(px*Np) & roiBL(:,2)<(px*Np);
output = roiTL(check,:);
end

