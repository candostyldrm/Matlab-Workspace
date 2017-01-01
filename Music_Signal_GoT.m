Fs=8000;
t_note= [1/4 1/4 1/4 1/4 1/4 1/4 1/4 1/4 1/4 1/4 1/4 1/4 1/4 1/4 1/4 1/4 1 1 1/8 1/4 1 1 1/4 1/4];
G5= 784;
C5= 523.28;
E5= 659.28;
F5= 698.48;
notes= [G5 C5 E5 F5 G5 C5 E5 F5 G5 C5 E5 F5 G5 C5 E5 F5 G5 C5 C5 F5 G5 C5 E5 F5];
a=[];
for i=1:1:24
        f = notes(1,i);
        t = 0: 1/Fs : t_note(1,i);
        a = [a sin(2*pi*f*t)];
    
end
a(1,1890:1:1900)
soundsc(a,Fs);