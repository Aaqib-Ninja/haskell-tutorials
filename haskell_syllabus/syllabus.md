
## **Haskell Learning Syllabus**

### **Week 1: Basics of Haskell**
1. **Introduction & Setup**
   - Install GHC, GHCi, and Cabal (or use Nix).
   - Write a "Hello, World!" program.

   **Program:** Print "Hello, World!" in Haskell.

2. **Basic Data Types & Operators**
   - Learn about `Int`, `Float`, `Bool`, `Char`, `String`.
   - Arithmetic, logical, and comparison operators.

   **Program:** Write a program that takes two numbers as input and performs basic arithmetic operations.

3. **Functions & Pattern Matching**
   - Define functions with `let` and `where`.
   - Use pattern matching for simple cases.

   **Program:** Write a function `signum` that returns `-1` for negative numbers, `1` for positive, and `0` otherwise.

### **Week 2: Functional Paradigms**
4. **Recursion**
   - Understand how recursion replaces loops in Haskell.

   **Program:** Write a recursive function to calculate the factorial of a number.

5. **Lists & List Comprehensions**
   - Learn basic list operations (`head`, `tail`, `length`).
   - Use list comprehensions.

   **Program:** Generate a list of even numbers from 1 to 100 using list comprehension.

6. **Higher-Order Functions (map, filter, fold)**
   - Learn how to use functions as arguments.

   **Program:** Implement a function that squares all elements of a list.

### **Week 3: Intermediate Haskell**
7. **Tuples & Custom Data Types**
   - Learn about tuples and `data` keyword.

   **Program:** Define a `Point` data type and write a function to calculate the distance between two points.

8. **Type Classes & Polymorphism**
   - Understand `Eq`, `Ord`, and custom type classes.

   **Program:** Implement a type class `Describable` for different shapes.

9. **Monoids & Functors**
   - Understand basic algebraic structures.

   **Program:** Implement a custom data type and make it an instance of `Monoid`.

### **Week 4: Advanced Haskell**
10. **IO & File Handling**
    - Learn `do` notation and file operations.

    **Program:** Read a file and print its contents.

11. **Monads (Maybe, Either)**
    - Learn how `Maybe` and `Either` handle errors.

    **Program:** Implement a safe division function using `Maybe`.

12. **Lazy Evaluation & Performance Considerations**
    - Learn about infinite lists and laziness.

    **Program:** Generate an infinite list of Fibonacci numbers.

### **Week 5+: Real-World Haskell**
13. **Concurrency & Parallelism**
    - Use `Control.Concurrent` for threading.

    **Program:** Create a simple multithreaded Haskell program.

14. **Networking & HTTP Requests**
    - Learn to make API requests.

    **Program:** Fetch and display data from an API.

15. **Building a Small Project**
    - Apply what you've learned to a small project (e.g., a CLI calculator, a simple web scraper).
