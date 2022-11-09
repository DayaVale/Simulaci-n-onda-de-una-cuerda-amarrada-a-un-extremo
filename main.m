clear all
%Datos Generales
x = linspace(0,10,100);
t = linspace(0,50,100);
sz = length(x);
L = 10;
a=1;

%---------------------------------funcion dada -----------------------------------------------------------
%% --------------------------------------------------------------------------------------------------------
% llamara a la f(x)
f = Funcion_atrozos(L,x);

%% --------------------------------------PuntoB-----------------------------------------------
%---------------------------------------------------------------------------------------------------------
% Va a variar unicamente tp y el valor de x queda igual como el de los
% datos generales, cambie solo el valor de tp.
tp = 5;
y = miu_Solucion(L,a,x,tp);
plot(x,f)
ylim([-2 2])
hold on
plot(x,y)
%% --------------------------------Punto C------------------------------------------------------------------
% Va a variar unicamente x1 y el valor de t queda igual como el de los
% datos generales, cambie solo el valor de x1.
x1 = 9;
y = miu_Solucion(L,a,x1,t);
plot(t,y)


%% -------------------------------PuntoD).------------------------------------------------------------------
% Para evitar errores o molestias borramos todo con el siguiente comando y
% realizamos el video que se guardara en la carpeta que tenga los archivos.
clear all
t = linspace(0,2*pi,100);
x = linspace(0,10,100);
L = 10;
a = 1;
%Animacion
vid = VideoWriter('Animacion3');
vid.FrameRate=10;
vid.Quality = 95;
open(vid)
for t1= 1:100
    y = miu_Solucion(L,a,x,t(t1));
    plot(x,y)
    axis([0,10,-2,2])
    txt = ['t =' num2str(t(t1))];
    text(8,1,txt)
    T(t1) = getframe();
end
writeVideo(vid,T)
close(vid)