function fittn = fitnessFun(genImage, orgImage, scale,num)
genImage = uint8(makeMatrix(genImage,scale,num));
fittn = nnz(genImage ~= orgImage);
end

