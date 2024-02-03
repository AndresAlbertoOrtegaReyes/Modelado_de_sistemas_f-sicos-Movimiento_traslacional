[t,x]=ode45(@MRAM,[0 20],[0 0 0 0]);

figure(1)
plot(t,x(:,1));
grid on
hold on
title("Masa 1");
xlabel("Tiempo");
ylabel("Radianes/Segundos");
figure(2)
plot(t,x(:,2));
grid on
hold on
title("Masa 2");
xlabel("Tiempo");
ylabel("Radianes/Segundos");