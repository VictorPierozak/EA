function result = makeMatrix(vector, scale, num)
if scale == 1
result = reshape(vector, num, []);
else
vector = repmat(vector,scale,1);
vector = reshape(vector,1,[]);
vector = repmat(vector,scale,1);
result = zeros(num*scale, num*scale);
j = 1;
for i = 1:(num*scale):(num*num*scale)
result(j:(j+scale-1),:) = vector(:, i:(i + num*scale-1));
j = j+scale;
end

end
end

