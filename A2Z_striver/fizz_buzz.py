def fizz_buzz_basic(n):
    for i in range(1, n + 1):
        if i % 3 == 0 and i % 5 == 0:
            print("FizzBuzz")
        elif i % 3 == 0:
            print("Fizz")
        elif i % 5 == 0:
            print("Buzz")
        else:
            print(i)

n = 100
fizz_buzz_basic(n)


# def fizz_buzz_ternary(n):
#     for i in range(1, n + 1):
#         output = "Fizz" * (i % 3 == 0) + "Buzz" * (i % 5 == 0)
#         print(output or i)

# n = 100
# fizz_buzz_ternary(n)

# def fizz_buzz_dict(n):
#     rules = {3: "Fizz", 5: "Buzz"}
#     for i in range(1, n + 1):
#         output = "".join(rules[key] for key in rules if i % key == 0)
#         print(output or i)

# n = 100
# fizz_buzz_dict(n)

# def fizz_buzz_conditions(n):
#     conditions = [(3, "Fizz"), (5, "Buzz")]
#     for i in range(1, n + 1):
#         output = "".join(word for num, word in conditions if i % num == 0)
#         print(output or i)

# n = 100
# fizz_buzz_conditions(n)

