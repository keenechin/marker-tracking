close all
shape = size(centroids);
nPoints = shape(2);
nFrames = shape(1);
%%
range = 1:nFrames;
smooth = 10; % 1/3 second blur
for i=1:nPoints
    pAx = subplot(3,2,i);
    x = centroids(range,i,1);
    y = centroids(range,i,2);
    plot(movmean(x,smooth),movmean(y,smooth));
    set(pAx, 'Ydir', 'reverse')
    pbaspect(pAx,[1 1 1])
    daspect(pAx, [1 1 1])
end