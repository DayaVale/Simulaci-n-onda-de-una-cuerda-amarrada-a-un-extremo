%------------------------  Funcion a trozos -------------------------
%--           |  1,  (L/2)-1< x < (L/2)+1, con (L>2)
%--    f(x) = |
%--           |  0,  si no
%--------------------------------------------------------------------


function [fx] = Funcion_atrozos(L,x)
    sz = length(x);
    fx = zeros(1,sz);
    if L>2
        ext1 = (L/2) + 1;
        ext2 = (L/2) - 1;

        fx=(x<=ext2).*0+(x<ext1)&(x>ext2).*1+(ext1>=x).*0;
    end


end