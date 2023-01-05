import numpy as np

# Função a(t)
def a(t):
    return ((t + 1)**2 - 1)/((t + 1)**2 + 1)

# Valores iniciais
y0 = -1
t0 = 0

# Passos de tempo
Ts = [1, 0.5, 0.25, 0.1]

# Número de passos
N = 100

# Loop sobre os passos de tempo
for T in Ts:
    # Vetor de tempos
    t = np.linspace(t0, t0 + N*T, N+1)
    
    # Vetor de solução aproximada
    y = np.zeros(N+1)
    y[0] = y0
    
    # Loop sobre os passos
    for k in range(N):
        y[k+1] = y[k] + T*(1 - a(t[k])*y[k])
    
    # Imprime a solução aproximada para o intervalo [0, 10]
    print(y[0:int(10/T)+1])