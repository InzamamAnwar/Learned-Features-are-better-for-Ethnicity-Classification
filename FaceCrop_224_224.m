%clear all
input = 'Result_align\';
output = 'Faces\';
tic
sdir = dir(input);
detector = buildDetector();
parfor j=3:size(sdir,1)
    img = imread([input sdir(j).name]);
    
    [bbox bbimg faces bbfaces] = detectFaceParts(detector,img,2);
    
%         imshow(rgb2gray(bbimg));hold on;rectangle('position', [x y 175 200]);
%         waitforbuttonpress;
    if(~(isempty(bbox)))
        cropedImage = imcrop(img, bbox(1, 1: 4));
        cropedImage = imresize(cropedImage, [224 224], 'Method', 'bicubic');
        imwrite(cropedImage, [output 'image_' num2str(j-2) '.jpg']);
    end
end
toc