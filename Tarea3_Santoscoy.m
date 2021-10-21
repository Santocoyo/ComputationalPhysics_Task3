clear all;
clc;

%Operador generar poblacion inicial
function Xr = X0(m,bL,bU)
    n = size(bL,2);    
    Xr = zeros(m,n);
    for i = 1:m
        for j = 1:n
            Xr(i,j) = bL(j) + rand()*(bU(j) - bL(j));
        end
    end
end
