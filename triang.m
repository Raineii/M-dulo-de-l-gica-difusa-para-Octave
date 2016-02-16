%Triangulo Difuso Normal
%triang(x, a, b, c) regresa un vector de una funcion de membres?a
%triangular normal definido por los puntos a, b y c (b es el pico). La
%variable x debe de ser un vector unidimensional.
function fm = triang( x, a, b, c )
    [n, m] = size(x);
    if a>b || b>c || (n>1 && m >1)
     error('Entrada erronea. X debe ser unidimensional y a<b<c')
    end
    fm = zeros(n, m);

    for i = 1:max(n, m)
     if x(i) > a && x(i) < b
         fm(i) = 1/(b-a)*(x(i)-a);
     elseif x(i) == b
         fm(i) = 1;
     elseif x(i) >b && x(i) <c
         fm(i) = 1/(b-c)*(x(i)-c);
     end
    end
end

