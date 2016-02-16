%Prueba de x^2
clear all; close all;
x = [-1 : 0.01 : 1];
fx1 = triang(x, -1, -1, -0.5);
fx2 = triang(x, -0.75, -0.5, -0.2);
fx3 = triang(x, -0.4, 0, 0.4);
fx4 = triang(x, 0.2, 0.5, 0.75);
fx5 = triang(x, 0.5, 1, 1);

y = [0 : 0.01: 1];
fy1 = triang(y, 0, 0, 0.25);
fy2 = triang(y, 0, 0.25, 0.6);
fy3 = triang(y, 0.25, 1, 1);

subplot(1,3,1), plot(x, fx1, x, fx2, x, fx3, x, fx4, x, fx5, 'LineWidth', 2), grid on, title('Funciones de Pertenencia en X');
subplot(1,3, 2), plot(y, fy1, y, fy2, y, fy3, 'LineWidth', 2), grid on, title('Pertenencia en Y(X) = X^2');;

%Aqu? pasamos de 
resultado = pasoXY(x, [fx1;fx2;fx3;fx4;fx5], y, [fy1;fy2;fy3], [3, 2, 1, 2, 3]);

subplot(1, 3, 3), plot(x, resultado, x, x.^2, 'LineWidth', 2), grid on, title('Defusificacion');

pause;

%Prueba de sin(x)
clear all; close all;
x = [0 : 0.01 : 4*pi];
fx1 = triang(x, 0, 0, pi/4);
fx2 = triang(x, 0, pi/4, pi/2);
fx3 = triang(x, pi/4, pi/2, pi*3/4);
fx4 = triang(x, pi/2, pi*3/4, pi);
fx5 = triang(x, pi*3/4, pi, pi*5/4); 
fx6 = triang(x, pi, pi*5/4, pi*3/2);
fx7 = triang(x, pi*5/4, pi*3/2, pi*7/4);
fx8 = triang(x, pi*3/2, pi*7/4, pi*2);
fx9 = triang(x, pi*7/4, pi*2, pi*2 + pi/4);
fx10 = triang(x, pi*2, pi*2 + pi/4, pi*2 + pi/2);
fx11 = triang(x, pi*2 + pi/4, pi*2 + pi/2, pi*2 + pi*3/4);
fx12 = triang(x, pi*2 + pi/2, pi*2 + pi*3/4, pi*2 + pi);
fx13 = triang(x, pi*2 + pi*3/4, pi*2 + pi, pi*2 + pi*5/4);
fx14 = triang(x, pi*2 + pi, pi*2 + pi*5/4, pi*2 + pi*3/2);
fx15 = triang(x, pi*2 + pi*5/4, pi*2 + pi*3/2, pi*2 + pi*7/4);
fx16 = triang(x, pi*2 + pi*3/2, pi*2 + pi*7/4, pi*4);
fx17 = triang(x, pi*2 + pi*7/4, pi*4, pi*4);



y = [-1 : 0.01: 1];
fy1 = triang(y, -1, -1, -0.3);
fy2 = triang(y, -0.6, -0.25, 0);
fy3 = triang(y, -0.3, 0, 0.3);
fy4 = triang(y, 0, 0.25, 0.6);
fy5 = triang(y, 0.3, 1, 1);

subplot(1,3,1), plot(x, fx1, x, fx2, x, fx3, x, fx4, x, fx5, x, fx6, x, fx7, x, fx8, x, fx9, x, fx10, x, fx11, x, fx12, x, fx13, x, fx14, x, fx15, x, fx16, x, fx17, 'LineWidth', 2), grid on, title('Funciones de Pertenencia en X');
subplot(1,3, 2), plot(y, fy1, y, fy2, y, fy3, y, fy4, y, fy5, 'LineWidth', 2), grid on, title('Pertenencia en Y(X) = sin(x)');;
resultado = pasoXY(x, [fx1;fx2;fx3;fx4;fx5;fx6;fx7;fx8;fx9;fx10;fx11;fx12;fx13;fx14;fx15;fx16;fx17], y, [fy1;fy2;fy3;fy4;fy5], [3, 4, 5, 4, 3, 2, 1, 2, 3, 4, 5, 4, 3, 2, 1, 2, 3]);

subplot(1, 3, 3), plot(x, resultado, x, sin(x), 'LineWidth', 2), grid on, title('Defusificacion');

pause;






%Prueba de Esfuerzo vs Calificaci?n
clear all; close all;

%Esfuerzo:
x = [0 : 0.1 : 100];

%Porcentaje de esfuerzo             %Etiquetas lingu?sticas de esfuerzo
fx1 = triang(x, 0, 0, 20);          %Nada
fx2 = triang(x, 10, 15, 40);        %Muy Poco
fx3 = triang(x, 20, 35, 60);        %Poco
fx4 = triang(x, 30, 50, 70);        %Regular
fx5 = triang(x, 50, 65, 70);        %Bien
fx6 = triang(x, 60, 75, 85);        %Mucho
fx7 = sat(x, 80, 90);               %Much?simo

%Calificaciones
y = [0 : 0.1: 100];

%Valores Nitidos de Calificacion     %Etiquetas Linguisticas
fy1 = sat(y, 60, 20);                %Pesimo
fy2 = triang(y, 10, 50, 68);         %Mal
fy3 = triang(y, 60, 69, 70);         %Casi pasas
fy4 = triang(y, 70, 70, 80);         %Apenas pasaste
fy5 = triang(y, 70, 80, 90);         %Pasaste
fy6 = triang(y, 85, 90, 95);         %Buena Calificaci?n
fy7 = triang(y, 90, 100, 100);       %Excelente Calificaci?n

%Graficas de las funciones de membres?a de Esfuerzo y Calificaci?n
subplot(1,3,1), plot(x, fx1, x, fx2, x, fx3, x, fx4, x, fx5, x, fx6, x, fx7, 'LineWidth', 2), grid on, title('Funciones de Pertenencia de Esfuerzo');
subplot(1,3,2), plot(y, fy1, y, fy2, y, fy3, y, fy4, y, fy5, y, fy6, y, fy7, 'LineWidth', 2), grid on, title('Pertenencia en Calificacion');;

%C?lculo de funcion que describe calificacion obtenida dado el esfuerzo
resultado = pasoXY(x, [fx1;fx2;fx3;fx4;fx5;fx6;fx7], y, [fy1;fy2;fy3;fy4;fy5;fy6;fy7], [1, 2, 3, 4, 5, 6, 7]);
subplot(1, 3, 3), plot(x, resultado, 'LineWidth', 2), grid on, title('Defusificacion');
