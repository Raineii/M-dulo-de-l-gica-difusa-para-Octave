%pasoXY(x,fmx, y, fmy, reglas) transforma del dominio de X al de Y donde
%las funciones de membres?a de X son fmx y las de Y son fmy (deben de ser
%vectores donde la primera dimensi?n es cada una de las funciones).
%La variable reglas debe de ser de 1xsize(fmx, 1) y mapea de la siguiente
%manera
% reglas = [1, 4, 2, 3]    en este caso 1->1, 2->4, 3->2, 4 ->3
function resultado = pasoXY(x,fmx, y, fmy, reglas)
    resultado = zeros(size(x));
    for i = 1: length(x)
        resultado(i) = defuzzXY(x, fmx, y, fmy, reglas, x(i));
    end
end