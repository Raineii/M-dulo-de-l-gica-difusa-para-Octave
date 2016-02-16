%membresia(x, fmx, val) dice el valor de membresia del punto en x
%inmediatamente menor a val.
function mem = membresia(x, fmx, val)
    if min(x) <= val && val <= max(x)
        mem = fmx(max(find(x<= val)));
    else
        error('el valor a evaluar no esta en el dominio de X');
    end
end