%Función ode45 que resuelve numericamente el sistema MRA%
[t,x]=ode45(@ODE_MRAR2,[0 20], [0 0 0 0]);
%Se crea la gráfica x respecto de t; x y t son parametros que retorna la función ode45%
figure(1)
plot(t,x(:,1));
grid on
hold on
title("MASA 1");
xlabel("Tiempo");
ylabel("Desplazamiento");
figure(2)
plot(t,x(:,2));
grid on
hold on
title("MASA 2");
xlabel("Tiempo");
ylabel("Desplazamiento");