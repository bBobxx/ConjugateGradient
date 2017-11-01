function CongjugateGradient(n,ks,A,B)
X=randperm(n);
lambda=1;
k=1;
grad=X*A+B;
d=-1.*grad;
while(1)
grad=X*A+B ;

if dot(grad,grad)<=ks^2
    fprintf('the optimal X is :')
    X
    fprintf('the number of iteration:')
    k
    break
else
    if k==1
        d=-1*grad;
    else
        d=-1*grad+((d*A*(grad.'))/(d*A*(d.')))*d;
    end
end
lambda=-1*((grad*( d.'))/(d*A*(d.')));
X=X+lambda.*d;
k=k+1;
end


end

