# CMSC430 Final Project
## SaiArvind Ganganapalle

### Part 1: "piecing it together"

Prims (used in tests):
 - `+`
   - Inputs: Zero or more integers that satisfy `number?`
   
   - Operation: 
     - If given zero integers, returns 0
     - If given one integer, returns the integer
     - If given two or more integers, returns the sum of the integers

 - `-`
     - Inputs: One or more integers that satify `number?`
     
     - Operation:
       - If given one integers, returns negative of that integer
       - If given two or more integers, returns the difference of the integers
       
 - `*`
   - Inputs: Zero or more integers that satisfy `number?`
   
   - Operation:
     - If given zero integers, returns 1
     - If given one integer, returns the integer
     - If given two or more integers, returns the product of the integers
     
 - `=`
   - Inputs: Two or more primitives that once evaluated are integers and satisfy `number?`
     
   - Operation:
     - If given two or more primitives, will evaluate each primitive, and return `#t` if all evaluated primitives are equal to each other (otherwise returns `#f`)
     
 - `>`
   - Inputs: Two or more primitives that once evaluated are integers and satisfy `number?`
   
   - Operation:
     - If given two or primitives, will evaluate each primitive, and return `#t` if the evaluated primitives are in strictly descending order (otherwise returns `#f`)
     
 - `<=`
   - Inputs: Two or more primitives that once evaluated are integers and satisfy `number?`
   
   - Operation:
     - If given two or primitives, will evaluate each primitive, and return `#t` if the evaluated primitives are in non-ascending order (otherwise returns `#f`)
     
 - `cons`
 - `car`
 - `cdr`
 - `null?`
 - `number?`
 - `promise?`
 - `append`
 - `not`

### Part 2: "run-time errors"


 

_I, SaiArvind Ganganapalle, pledge on my honor that I have not given or received any unauthorized assistance on this assignment._
