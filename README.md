# CMSC430 Final Project

## General Overview

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


 

_I, SaiArvind Ganganapalle, pledge on my honor that I have not given or received any unauthorized assistance on this assignment._
