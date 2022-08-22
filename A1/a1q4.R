library(RConics)
library(MASS)


K = matrix(c(29,1,5,0,26,28,17,38,25,8,37,40,1,26,14,40,33,31,34,14,31,23,29,12,23),5,5, byrow = T)
K
det.K = det(K)
adj.K = adjoint(K)

# matrix inverse (2 ways to get it)
inv.K = adj.K*(1/det.K)
solve(K)

# our inverse key matrix mod 41 
inv.K.mod41 = matrix(c(27,10,7,32,10,24,17,37,1,8,32,21,19,4,37,19,40,25,15,8,7,22,36,25,24),5,5,byrow = T)
inv.K.mod41
# checking to see if the matrix is identity 
K%*%inv.K.mod41

# decryption 
c.1 = matrix(c(26,0,13,9,0),5,1)
p.1 = inv.K.mod41%*%c.1

c.2 = matrix(c(18,2,3,14,15),5,1)
p.2 = inv.K.mod41%*%c.2

c.3 = matrix(c(33,0,30,17,34),5,1)
p.3 = inv.K.mod41%*%c.3

c.4 = matrix(c(28,24,16,17,40),5,1)
p.4 = inv.K.mod41%*%c.4

c.5 = matrix(c(13,27,27,25,37),5,1)
p.5 = inv.K.mod41%*%c.5
p.5

c.6 = matrix(c(0,23,2,9,13),5,1)
p.6 = inv.K.mod41%*%c.6
p.6

c.7 = matrix(c(21,35,38,17,26),5,1)
p.7 = inv.K.mod41%*%c.7
p.7

c.8 = matrix(c(0,25,23,20,14),5,1)
p.8 = inv.K.mod41%*%c.8
p.8

c.9 = matrix(c(40,26,32,37,37),5,1)
p.9 = inv.K.mod41%*%c.9
p.9

c.10 = matrix(c(28,20,30,37,25),5,1)
p.10 = inv.K.mod41%*%c.10
p.10

c.11 = matrix(c(23,22,10,22,36),5,1)
p.11 = inv.K.mod41%*%c.11
p.11

c.12 = matrix(c(21,28,1,12,21),5,1)
p.12 = inv.K.mod41%*%c.12
p.12

c.13 = matrix(c(36,35,28,32,30),5,1)
p.13 = inv.K.mod41%*%c.13
p.13

c.14 = matrix(c(36,3,6,14,15),5,1)
p.14 = inv.K.mod41%*%c.14
p.14

c.15 = matrix(c(9,18,1,39,35),5,1)
p.15 = inv.K.mod41%*%c.15
p.15

c.16 = matrix(c(11,35,36,4,5),5,1)
p.16 = inv.K.mod41%*%c.16
p.16

# part b 
a = (2^(25))*(1/2)*(3/4)*(7/8)*(15/16)*(31/32)
2^25

b = (19^(25))*(18/19)*(1-(1/361))*(1-(1/(19^3)))*(1-(1/(19^4)))*(1-(1/(19^5)))
a*b

# part c













