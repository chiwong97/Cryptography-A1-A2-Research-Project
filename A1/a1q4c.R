library(RConics)

# first row of the key 
# finding the inverse of A 
A = matrix(c(23,24,40,11,4,
             17,31,7,8,37,
             36,11,12,14,15,
             16,17,29,32,34,
             33,28,18,1,9),5,5, byrow = T)

adj.A = adjoint(A)
det.A = det(A)
det.A.mod41 = det(A)%%41

adj.A.mod41 = matrix(c(39,25,10,37,15,
                       8,31,18,27,24,
                       39,37,19,39,16,
                       26,37,5,28,32,
                       20,39,10,9,24),5,5,byrow = T)

det.A.multi.inverse = 28
inverse.A = det.A.multi.inverse*adj.A.mod41

inverse.A.mod41 = matrix(c(26,3,34,11,10,
                           19,7,12,18,16,
                           26,11,40,26,38,
                           31,11,17,5,35,
                           27,26,34,6,16),5,5,byrow = T)

w = matrix(c(40,1,34,16,27),5,1)

K1 = inverse.A%*%w
K1.mod41 = matrix(c(21,9,40,25,2))


# finding the decryption key 
K = matrix(c(21,9,40,25,2,
             15,4,26,31,1,
             12,12,24,39,18,
             30,14,17,26,3,
             12,10,12,34,25),5,5,byrow = T)

adj.K = adjoint(K)
adj.K.mod41 = matrix(c(20,37,6,4,20,
                       38,19,29,29,3,
                       14,12,25,18,34,
                       9,26,30,25,13,
                       12,27,18,16,0),5,5,byrow=T)

det.K = det(K)
det.K.mod41 = det.K%%41
det.K.multi.inverse = 19
inverse.K = det.K.multi.inverse*adj.K.mod41
inverse.K.mod41 = matrix(c(11,6,32,35,11,
                           25,33,18,18,16,
                           20,23,24,14,31,
                           7,2,37,24,1,
                           23,21,14,17,0),5,5,byrow = T)
inverse.K.mod41


# decryption 
c.1 = matrix(c(0,34,21,18,29),5,1)
p.1 = inverse.K.mod41%*%c.1
p.1

c.2 = matrix(c(23,17,3,4,14),5,1)
p.2 = inverse.K.mod41%*%c.2
p.2

c.3 = matrix(c(13,32,9,4,21),5,1)
p.3 = inverse.K.mod41%*%c.3
p.3

c.4 = matrix(c(23,6,9,8,3),5,1)
p.4 = inverse.K.mod41%*%c.4
p.4

c.5 = matrix(c(27,29,2,26,33),5,1)
p.5 = inverse.K.mod41%*%c.5
p.5

c.6 = matrix(c(11,30,2,27,17),5,1)
p.6 = inverse.K.mod41%*%c.6
p.6

c.7 = matrix(c(30,16,35,32,31),5,1)
p.7 = inverse.K.mod41%*%c.7
p.7

c.8 = matrix(c(23,22,17,0,31),5,1)
p.8 = inverse.K.mod41%*%c.8
p.8

c.9 = matrix(c(3,16,6,24,22),5,1)
p.9 = inverse.K.mod41%*%c.9
p.9

c.10 = matrix(c(19,13,7,24,14),5,1)
p.10 = inverse.K.mod41%*%c.10
p.10

c.11 = matrix(c(30,13,3,34,25),5,1)
p.11 = inverse.K.mod41%*%c.11
p.11






