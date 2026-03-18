
# Coding Examples

Large Language Models can assist with programming tasks.

Coding models such as **DeepSeek Coder** are optimized for this purpose.

---

# Example 1 — Generate Python Code

Prompt:

```
Write a Python program to check if a number is prime.
```

Example output:

```
def is_prime(n):
    if n <= 1:
        return False
    for i in range(2, int(n**0.5)+1):
        if n % i == 0:
            return False
    return True
```

---

# Example 2 — Explain Code

Prompt:

```
Explain the following Python code:

for i in range(5):
    print(i)
```

Expected explanation:

```
This loop prints numbers from 0 to 4.
```

---

# Example 3 — Debug Code

Prompt:

```
Fix the bug in this code:

def add(a,b)
return a+b
```

Expected output:

```
def add(a,b):
    return a+b
```

---

# Example 4 — Generate Algorithm

Prompt:

```
Write a Python program to sort a list using bubble sort.
```

---

# Example 5 — Code Optimization

Prompt:

```
Improve the performance of this Python function.
```

Models can suggest:

* better algorithms
* improved logic
* cleaner syntax

---

# Recommended Model for Coding

Use:

* DeepSeek Coder

---

# Next Example

See reasoning examples:

```
examples/reasoning-examples.md
```
