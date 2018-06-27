clear all
clc

% Align faces according to reference
[a, b] = system('python face_align.py Input_Images\ jpg Reference\Reference.jpg', '-echo');

% Crop faces from aligned images
FaceCrop_224_224;

image_dir = 'Faces\';

%load trained SVM classifier
load('Classifier\trainedClassifier');

net1 = load('vgg-face.mat');
net1 = vl_simplenn_tidy(net1);

sdir = dir(image_dir);
result = struct('Image', {}, 'Class', {});
classes = {'Asian'; 'Black'; 'White'};

for i=3:size(sdir,1)
    
    img = single(imread([image_dir sdir(i).name]));
    output = vl_simplenn(net1, img);
    feat = reshape(output(36).x, [1 4096]);
    result(i-2).Class = classes(trainedClassifier.predictFcn(feat()) + 1, 1);
    result(i-2).Image = sdir(i).name;
    
end



