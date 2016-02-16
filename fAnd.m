%fAnd es un and difuso. Recibe una matriz donde la segunda dimensi?n son
%puros vectores que deben de ser funciones de membres?a. As?, al usar
%fAnd([a; b; c]) se regresa el and de las funciones a, b y c.
%Todos los vectores deben de tener la misma longitud.
function and = fAnd(vector)
    [length, ~] = size(vector);
    if length < 2
        error('Debes usar al menos 2 vectores. Debes usar ; entre []');
    end
    and = min(vector, [], 1);
end