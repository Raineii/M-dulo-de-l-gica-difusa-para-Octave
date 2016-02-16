%fAdd hace una suma difusa usando min-max
function add = fAdd(x, f1, f2)
    add = zeros(length(f2), length(x));
    for i = 1: length(f1)
        for j = 2: length(f2)
            [~, id] = min(abs(x - (x(i) + x(j))));
            add(i, id) = min(f1(i), f2(j));
        end
    end
    add = max(add, [], 1);
end