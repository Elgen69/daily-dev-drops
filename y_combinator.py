# y_combinator.py

"""
Y Combinator: Enables recursion without naming the function.
Useful in languages (or situations) where direct recursion is impossible.
"""

def Y(f):
    return (lambda x: f(lambda *args: x(x)(*args)))(
           lambda x: f(lambda *args: x(x)(*args)))

# Factorial example using Y combinator
factorial = Y(lambda rec: lambda n: 1 if n == 0 else n * rec(n-1))

# Fibonacci example using Y combinator
fibonacci = Y(lambda rec: lambda n: n if n <= 1 else rec(n-1) + rec(n-2))


if __name__ == "__main__":
    print("Factorial of 5:", factorial(5))   # Output: 120
    print("Fibonacci of 10:", fibonacci(10)) # Output: 55
