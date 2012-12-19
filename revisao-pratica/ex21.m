clear all
close all

#carrega imagens
f = imread('imagens/5.1.12.jpg');

f2 = f /2; #alterar a intensidade para 128
f3 = f /4; #alterar a intensidade para 64
f4 = f /8; #alterar a intensidade para 32
f5 = f /16; #alterar a intensidade para 16
f6 = f /32; #alterar a intensidade para 8
f7 = f /64; #alterar a intensidade para 4
f8 = f /128; #alterar a intensidade para 2

[m, n] = size(f);


r1 = sum(sum(int32(f([1:m], [1:n]) - f2([1:m], [1:n])).**2))/ int32(m*n); 
r1
r2 = sum(sum(int32(f([1:m], [1:n]) - f3([1:m], [1:n])).**2))/ int32(m*n); 
r2
r3 = sum(sum(int32(f([1:m], [1:n]) - f4([1:m], [1:n])).**2))/ int32(m*n); 
r3
r5 = sum(sum(int32(f([1:m], [1:n]) - f5([1:m], [1:n])).**2))/ int32(m*n); 
r5
r6 = sum(sum(int32(f([1:m], [1:n]) - f6([1:m], [1:n])).**2))/ int32(m*n); 
r6
r7 = sum(sum(int32(f([1:m], [1:n]) - f7([1:m], [1:n])).**2))/ int32(m*n); 
r7
r8 = sum(sum(int32(f([1:m], [1:n]) - f8([1:m], [1:n])).**2))/ int32(m*n); 
r8