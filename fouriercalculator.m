function[y]= fouriercalculator(x,k,condition,r)
syms t f 
ezplot(x,r);
xlabel('x(t)');
hold on
if condition == 'FFT'
    x=int(x*exp(-1*1i*2*pi*f*t),k,-inf,inf);
else if condition == 'IFT'
    x=int(x*exp(1i*2*pi*f*t),k,-inf,inf);
    else
    end
end
ezplot(x,r);
xlabel('x(t)');
end
