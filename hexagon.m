sdvig = 0;
sdvig2 = 0;
sdvig3 = 0;
for l=0:7 % шесть внешних
    for h=0:7 % шесть внешних
        for k=0:7   %внутренний шестиугольник
            for j=1:7 % полоска
                Z(j)=exp(1i*2*pi*(j-1+k)/6);
            end
            plot(Z+sdvig+sdvig2+sdvig3,'r','LineWidth', 3)
            hold on
            sdvig = 3^(1/2)*exp(1i*2*pi*(2*k+1)/12);
        end
        sdvig2 = 3*3^(1/2)*exp(1i*2*pi*(2*h+1)/12);
    end
    %% внутренние во внешних    
   for k=0:7   %внутренний шестиугольник
            for j=1:7 % полоска
                Z(j)=exp(1i*2*pi*(j-1+k)/6);
            end
            plot(Z+sdvig+sdvig3,'r','LineWidth', 3)
            hold on
            sdvig = 3^(1/2)*exp(1i*2*pi*(2*k+1)/12);
   end
     %% внутренние во внешних
       
   sdvig3 = 2*3*3^(1/2)*exp(1i*2*pi*(2*l+1)/12);
end