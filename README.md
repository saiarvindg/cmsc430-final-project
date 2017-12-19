# CMSC430 Final Project

## General Overview

At a high level, my project takes valid [Racket](https://racket-lang.org/) input and outputs a valid binary using [LLVM](https://llvm.org/) IR. User input is read in through top level parsing (in `top-level.rkt`) and passed through an initial desugaring phase (in `desugar.rkt`). At point, all input is represented in 12 forms. Further passes convert the desugared form into A-normal Form (where expressions are partitioned into atomic expressions - known to terminate - and complex expression - not known to terminate) and Continuation Passing Style (in which function calls never return). During these last two phases, mutation (i.e. `set!`) is removed and all variables are alpha-renamed so every name is unique to single binding and shadowing is removed. The second to last stage is the closure conversion stage in which all lambdas and atomic expressions are lifted to their own let bindings and variadic functions are turned into an unary functions that take a single arguement. The last stage is LLVM IR emission in which LLVM IR for each procedure is emitted, compiled to a binary, and ran.

## Part 1: "piecing it together"

Prims (used in tests):
 - `+`
   - Inputs: Zero or more integers that satisfy `number?`
   
   - Result: 
     - If given zero integers, returns 0
     - If given one integer, returns the integer
     - If given two or more integers, returns the sum of the integers

 - `-`
     - Inputs: One or more integers that satify `number?`
     
     - Result:
       - If given one integers, returns negative of that integer
       - If given two or more integers, returns the difference of the integers
       
 - `*`
   - Inputs: Zero or more integers that satisfy `number?`
   
   - Result:
     - If given zero integers, returns 1
     - If given one integer, returns the integer
     - If given two or more integers, returns the product of the integers
     
 - `/`
   - Inputs: One or more integers that satisfy `number?`
   
   - Result:
     - If given one integer, returns the quotient of 1 divided by the given integer
     - If given two or more integers, returns the quotient of the integers
     
 - `=`
   - Inputs: Two or more primitives that once evaluated are integers and satisfy `number?`
     
   - Result:
     - If given two or more primitives, will evaluate each primitive, and return `#t` if all evaluated primitives are equal to each other (otherwise returns `#f`)
     
 - `>`
   - Inputs: Two or more primitives that once evaluated are integers and satisfy `number?`
   
   - Result:
     - If given two or primitives, will evaluate each primitive, and return `#t` if the evaluated primitives are in strictly descending order (otherwise returns `#f`)
     
 - `<=`
   - Inputs: Two or more primitives that once evaluated are integers and satisfy `number?`
   
   - Result:
     - If given two or primitives, will evaluate each primitive, and return `#t` if the evaluated primitives are in non-ascending order (otherwise returns `#f`)
     
 - `cons`
   - Inputs: Two datums.
   
   - Result:
     - In general, the result of `cons` is a `pair`
     - A cons of a datum and list (respectively) can return a list.
     
 - `car`
   - Inputs: A datum that satisfies `pair?` (which takes in a datum and determines if it is a `pair` i.e. a `cons` of two datums)
   
   - Result:
     - Returns the first element of the given datum.
     
 - `cdr`
   - Inputs: A datum that satisfies `pair?` (which takes in a datum and determines if it is a `pair` i.e. a `cons` of two datums)
   
   - Result:
     - Returns the second element of the given datum.
     
 - `null?`
   - Inputs: One argument
   
   - Result:
     - Returns `#t` if the given argument is the empty list, `#f` otherwise.
     
 - `number?`
   - Inputs: One integer
   
   - Result:
     - Returns `#t` if the given argument is a number, `#f` otherwise.
     
 - `promise?`
   - Inputs: One argument
   
   - Result:
     - Returns `#t` if the given argument is a `promise`, `#f` otherwise.
     
 - `append`
   - Inputs: Zero or more lists. The last arguement need not be a list.
   
   - Result:
     - If given no arguements, returns the empty list
     - If given a single datum, returns the datum
     - If given a single list, returns the list
     - If given a two or most lists, returns the lists appended. If the last arguement is not a list, returns an improper list
     
 - `not`
   - Inputs: One datum
   
   - Result:
     - Returns `#t` if the given argument is `#f`, `#f` otherwise.

## Part 2: "run-time errors"

> Running `racket tests.rkt <test-name>` will compile `header.ll` and `combined.ll` but will fail the test and not show the correct run-time output. The actual run-time output is gotten by running the compiled `bin` executable (i.e. `./bin`).

> All tests are found in the `tests/public` directory.

 - Division by zero (located in `part2/div-by-zero` directory)
 
 > Last part working correctly. Everything is implemented correctly until here. Running all the tests (included the provided final_tests) in this directory will work.
 
   In header.cpp under `u64 prim__47(u64 a, u64 b)` after the two `ASSERT_TAG` statements, I added this `if` block:
   ```
   if (DECODE_INT(b) == 0)
     fatal_err("Division by zero. Ensure that no denominator is zero.");
   ```
   The corresponding tests are `div-by-zero-fatal`, `div-by-zero-ok`, and `div-by-zero-zero`. `div-by-zero-fatal` tests an non-zero integer dividedd by zero. `div-by-zero-ok` tests zero divided by a non-zero integer. `div-by-zero-zero` tests zero divided by zero.
 
 - Non-function value is applied
   
   Not working. Initially, I went about fixing this run time error (and the run time errors involving a function or primitive taking too many or too few arguments) during the LLVM IR emission phase. But I realized at point, all atomic expressions and lambdas were let bound to symbols during closure conversion. So checking during the LLVM IR emission for `clo-app` using `procedure?` did not make that much sense. I then attempted to add a check during the match clause for untagged application of top level parsing - see `line 151` in `part2/non-func-value-app/top-level.rkt`. But this caused my program to run of out of memory. I think this is because Racket has to go through both the `true` and `false` branches for `(if (procedure? (car ,es))` which takes up a lot of memory. I then attempted to fix this in the `simplify-ae` (`line 82`) phase in `part2/non-func-value-app/closure-convert.rkt` using a `prim halt` but I still think the same problem persists.
   
## Part 3: "add a feature"

> Not implemented

## Part 4: "Boehm GC"

> Not implemented
 

_I, SaiArvind Ganganapalle, pledge on my honor that I have not given or received any unauthorized assistance on this assignment._
