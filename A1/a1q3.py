

# def extendedGCD(a,b):
    #x0 = 0; x1 = 1
    #y0 = 1; y1 = 0
    #if b == 0:
    #    return a,x0,y0
    #else:
    #    while b>0:
    #        q = a//b
    #        r = a - q*b
    #        x = x1 - q*x0
    #        y = y1 - q*y0

def extendedGCD(a,n):
    #base case
    if a == 0:
        return n,0,1
    else:
        q = n//a
        r = n%a
        d,x,y = extendedGCD(r, a)
        return d,y-q*x,x

def modularInverse(a,n):
    d,x,y = extendedGCD(a,n)
    if d != 1:
        return print("modular inverse doesn't exist")
    return x%n

print(extendedGCD(56,15))
print(modularInverse(836872,16811891))


    
            
    
