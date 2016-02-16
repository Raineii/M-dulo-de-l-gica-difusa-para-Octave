%cMasa encuentra el centro de masa de una funcion de membres?a fm.
function centro = cMasa(x, fm)
    valores = find(fm);
    acumX = 0;
    acum = 0;
    
    for i = 1: length(valores)
        n = valores(i);
        acumX = acumX + fm(n)*x(n);
        acum = acum + fm(n);
    end
    centro = acumX/acum;
end