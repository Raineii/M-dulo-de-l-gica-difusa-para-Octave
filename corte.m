%corte(fm, a) hace que la funci?n de membrec?a fm no tenga valores mayores
%que a.
function corte = corte(fm, a)
    corte = fm;
    for i = 1:length(corte)
        if corte(i) > a
            corte(i) = a;
        end
    end
end