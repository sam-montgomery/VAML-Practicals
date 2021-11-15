file_name = 'viptraffic.avi';
videoObj = VideoReader(file_name);
vidFrames = read(videoObj);

%Bkg = vidFrames(:,:,:,120);
%BkgGray = rgb2gray(Bkg);
%BkgGray2 = Bkg(:,:,1)/3 + Bkg(:,:,2)/3 + Bkg(:,:,3)/3;

BkgGray = bckGenerator(vidFrames,5);

% figure
% subplot(1,3,1), imshow(Bkg), title('Colour Bkg')
% subplot(1,3,2), imshow(BkgGray), title('Gray Bkg'), colormap(gray)
% subplot(1,3,3), imshow(BkgGray2), title('Gray Bkg Approx'), colormap(gray)
Th = 20;


% vidObj2 = VideoWriter('resultTraffic.avi');
% open(vidObj2);
% MAP=colormap(gray(256));

figure
for t = 1:120
    currentFrame=vidFrames(:,:,:,t);
    currentFrameGray= rgb2gray(currentFrame);
    subplot(2,3,1), imshow(currentFrameGray), title(['Frame: ',num2str(t)])
    subplot(2,3,2), imshow(BkgGray), title('Background')

    Blobs=abs(currentFrameGray - uint8(BkgGray)) > Th;
    subplot(2,3,3), imshow(Blobs), title('Blobs'), colormap(gray)
    
    mask = ones(6,6);
    BlobsCorrect = imdilate(Blobs, mask);
    subplot(2,3,4), imshow(BlobsCorrect), title('Post-processed Blobs'), colormap(gray)

    BlobsLabel = bwlabel(BlobsCorrect);
    NumVehicles = max(max(BlobsLabel));
    subplot(2,3,5), imshow(BlobsLabel), title('Blobs Labelled');

    BBs = [];
    for b = 1: NumVehicles
         [ys, xs]=find(BlobsLabel == b);
         xmax=max(xs);
         ymax=max(ys);
         xmin=min(xs);
         ymin=min(ys);
    BB = [xmin ymin xmax ymax];
    BBs = [BBs; BB];
    end

    subplot(2,3,6), imshow(currentFrame), title('Detections'), hold on
    for b = 1: NumVehicles
        rectangle('Position', [BBs(b,1) BBs(b,2) BBs(b,3)-BBs(b,1)+1 BBs(b,4)-BBs(b,2)+1])
    end
    hold off


%     frame = im2frame(uint8(Blobs)*255, MAP);
%     writeVideo(vidObj2,frame);
    pause(0.05)
end



% close(vidObj2);