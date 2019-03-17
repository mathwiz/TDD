A = [1 -3; 3 1]

[V D] = eig(A)

disp('Eigenvectors for first eigenvalue')
lambda1 = diag(D)(1)
rref(A - lambda1*eye(2))

disp('Eigenvectors for first eigenvalue')
lambda2 = diag(D)(2)
rref(A - lambda2*eye(2))
