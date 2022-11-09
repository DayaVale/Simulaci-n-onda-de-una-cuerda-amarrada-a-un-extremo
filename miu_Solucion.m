
function [y1] = miu_Solucion(L,a,x,t)
   
   szn = 10;
   y1 = 0;
   szx = length(x);
   szt = length(t);

   for n = 1:szn
     u_n = sin((((2*n-1)*pi)/(2*L)).*x).*cos((((2*n-1)*pi*a)).*t);
     a_n = (8/((2*n-1)*pi))*sin(((2*n-1)*pi)/4)*sin(((2*n-1)*pi)/(2*L));
     y1 = y1+(u_n.*a_n); 
   end
end



