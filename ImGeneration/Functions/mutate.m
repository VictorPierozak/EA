function mutationChildren = mutate(parents, options, nvars,... 
FitnessFcn, state, thisScore, thisPopulation, valueArray, scale, num, f)

toMutate = thisPopulation(parents,:);
[chNum, len] = size(toMutate);
m = initpop(chNum, len, valueArray);
mutNum = fix(rand(chNum,1)*(nvars/(f*num)) +1);
for i = 1:chNum
    mutated = toMutate(i, :);
    mutPos = rand(1, mutNum(i));
    mutPos = fix(mutPos*(nvars-1)+1);
    mutated(1, mutPos) = m(i, mutPos);
    if FitnessFcn(mutated) < FitnessFcn(toMutate(i,:))
        toMutate(i,:) = mutated;
    end
end
mutationChildren = toMutate;
end

