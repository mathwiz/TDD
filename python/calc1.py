def inc(x):
    return x + 1

def square(x):
    return x * x

def cube(x):
    return x ** 3

def differentials(f, a, b, intervals, factor=1):
    diffs = []
    dx = (b - a) / intervals
    x = a
    for it in range(intervals):
        diffs.append((x, differential(f, x, dx/factor)))
        x += dx
    bderivative = differential(f, x, dx/factor)
    return ((dx, (diffs[0][1], bderivative)), diffs)

def differential(f, x, h):
    dy = f(x + h) - f(x)
    return dy / h

def integral(differentials, mid=False):
    dx = differentials[0][0]
    s = 0
    for it in differentials[1]:
        s += dx * it[1]
    if mid:
        firstderivative = differentials[0][1][0]
        lastderivative = differentials[0][1][1]
        s = (s * 2 + dx * (lastderivative - firstderivative)) / 2
        
    return s

def integrate(f, a, b, intervals, mid=False):
    d = differentials(f, a, b, intervals, 1000)
    return integral(d, mid)

def triangulate(f, a, b, intervals):
    height = 0
    dx = (b - a) / intervals
    ds = differentials(f, a, b, intervals, 1)
    for it in ds[1]:
        height += dx * it[1]
    return height

print("calc1 loaded")

    
