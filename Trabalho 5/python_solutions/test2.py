from functools import cache
y0 = -1

def mult_dem(k, T):
    return (((k + 1) * T)**2 - 1) / (((k + 1) * T)**2 + 1)

@cache
def y_k(k, T):
    if k == 0:
        return -1
    
    return (y_k(k - 1, T) + T) / (1 + T * mult_dem(k, T))

T1 = 1
T2 = 1/2
T3 = 1/4
T4 = 1/10

for k in range(11):
    print(f"y({k}) = {y_k(k, T4)}")
