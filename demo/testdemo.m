clear  
clc  
  
im = imread('../../examples/images/cat.jpg');%read picture  
figure;imshow(im);%show the picture  

%get the score and 
%the second parameter : if it equels 0 mens for CPU and if equels 1means for GPU 
[scores, maxlabel] = classification_demo(im, 1);
 
maxlabel   
figure;plot(scores);%plot the scores  
axis([0, 999, -0.1, 0.5]); 
grid on 
  
fid = fopen('synset_words.txt', 'r');  
i=0;  
while ~feof(fid)  
    i=i+1;  
    lin = fgetl(fid);  
    lin = strtrim(lin);  
    if(i==maxlabel)  
        fprintf('the label of %d is %s\n',i,lin)  
        break  
    end  
end 