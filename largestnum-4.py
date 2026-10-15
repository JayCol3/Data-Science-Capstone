def fibonacci_series(n):
    a, b = 0, 1
    series = []

    while a <= n:
        series.append(a)
        a, b = b, a + b

    return series

# Test the function
n = 100
fib_series = fibonacci_series(n)

print(f"Fibonacci series up to {n}: {fib_series}")