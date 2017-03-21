%Initialize a,b,c,d of Izhikevich model

a = 0.02;
b = 0.2;
c = -65;
d = 8;

%Initialize v, u and I

v = c;
u = b * v;
I = 5;

%Initialize arrays

V=zeros(1 , 1000);
T=zeros(1, 1000);

%Initialize Time Constant

TC = 0.5;

for t = 1:1000
    
    v = v + TC * (0.04 * v^2 + 5*v + 140 - u + I);

    u = u + a*(b*v -u);

    if v >= 30
        v = c;
        u = u + d;
    end
    
    T(t) = t * TC;
    
    V(t) = v;

end;

%Plot V vs T;
plot(T,V);
