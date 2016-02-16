%Saturaci?n Normal
%sat(x, a, b) regresa un vector de una funcion de membres?a de
%saturaci?n normal definido por los puntos a y b. La membrecia en a
%es 0 y en b es 1 lo que permite que esta funcion se haga de saturaci?n a
%la izquierda si a>b y a la derecha si a<b.
%La variable x debe de ser un vector unidimensional.
function pertenencia = sat( x, a, b )
    [n, m] = size(x);
    if (n>1 && m >1)
     error('Entrada erronea. X debe ser unidimensional y a<b<c')
    end
    pertenencia = zeros(n, m);
    menor = min(a, b);
    mayor = max(a, b);
    for i = 1:max(n, m)
     if x(i) > menor && x(i) < mayor
         pertenencia(i) = 1/(mayor-menor)*(x(i)-menor);
     elseif x(i) >= mayor
         pertenencia(i) = 1;
     end
    end
    if a > b
     pertenencia = 1 - pertenencia;
    end

end

