%defuzzXY(x,fmx, y, fmy, reglas, valX) defusifica valX del dominio de X al de Y donde
%las funciones de membres?a de X son fmx y las de Y son fmy (deben de ser
%vectores donde la primera dimensi?n es cada una de las funciones).
%La variable reglas debe de ser de 1xsize(fmx, 1) y mapea de la siguiente
%manera:
%reglas = [1, 4, 2, 3]    en este caso 1->1, 2->4, 3->2, 4 ->3
function valY = defuzzXY(x,fmx, y, fmy, reglas, valX)
    if (min(size(reglas)) ~=1) || max(size(reglas)) ~= size(fmx, 1)
        error('size(reglas) ~= [1, size(fmx, 1)]');
    end
    if(max(reglas) > size(fmy, 1))
        error('Hay reglas que no mapean a ninguna funcion de membresia en Y');
    end
    
    %Vemos la pertenencia de valX en cada funcion de membresia del dominio X
    membX = zeros(size(fmx, 1), 1);
    for i = 1: size(fmx, 1)
        membX(i) = membresia(x, fmx(i, :), valX);
    end
    
    %Cortamos las funciones de membresia del dominio Y
    fmyp = zeros(size(fmy));
    for i = 1: length(reglas)
        fmyp(reglas(i), :) = fOr([fmyp(reglas(i), :);corte(fmy(reglas(i), :), membX(i))]);
    end
    
    fmyp = fOr(fmyp);
    valY = cMasa(y, fmyp);
    if isnan(valY)
        valY = 0;
    end
end