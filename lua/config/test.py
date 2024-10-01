
def f(n):
    nSt = ''
    while n > 0:
        nSt = str(n % 7) + nSt
        n //= 7
    return nSt

n = 49 ** 7 + 7 ** 20 - 28
print(f(n).count('6'))
