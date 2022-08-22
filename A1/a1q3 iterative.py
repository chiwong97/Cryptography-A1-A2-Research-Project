def extendedGCD(a,n):
    x0 = 1
    x1 = 0
    y0 = 0
    y1 = 1
    while n:
        q = a/n
        r = a%n
        x1 = x0 - q*x1
        x0 = x1
        y1 = y0 - q*y1
        y0 = y1
        a = n
        n = r
    return a, x0, y0

print(extendedGCD(56,15))
