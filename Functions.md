# Functions
![Functions](./function-overview.webp)

# Waht are they ?
A block of code that is written for some specific purpose.
A function essentially receives some raw input ( paramaters ) , do some processing and returns an output.
They are used to subdivide your program code into logical components.

# Functions in Clarity
Majorly we have two types of function in clarity

    - Built-in Functions
    - User defined functions
    
## Built-in Functions 
The functions that come bundeled with the programming language itself.The user does not have to write the logic of these functions.
i.e `add` and `subtract` represented by `+` and `-` respectively are used to perform addition and subtraction on two numbers. 

### Built-in functions in clarity
Clarity has a blessed set of built-in functions for example
`print` ,`print-twice` , arithmetic functions like + , - , mod , /  and * and a lot more.

for more details on various built-in functions , refer to 


## User-defined Functions 
The functions that are written by the programmer and does not come predefinedly with the language are called user-defined functions.
User-defined functions leverage the built in functions means they are built on top of built-in functions.

i.e Following function

```clarity
(define-public (printHello)
    (print "Hello")
)
```

Uses built-in function `print` to print a custom message to the user.

## Another Example

```clarity
(define-public (GreetMe (username string-ascii-8 ))
    (print "Hello ,")
    (print username )
    
)
```
Above function receives a paramter `username` of type string ( we represent string data type with `string-ascii-8` in clarity)
and prints hello first and then the passed username.


# function declaration 

Telling the langauge about the definitation of what does the function do is an important part in programming.
In clarity , you can declare a function as follows

```clarity
( function-visibility  ( function-name (param1-name param1-type) (param2-name param2-type).. (paramN-name paramN-type) ) function-body)
```

# Functions Invocation
So you have written some functions for particular purpose by learning from this repository , but how to use them ?
<br/>
Using a function can be reffered to as `Calling a function` or `invoking a function`


In Clarity , function invocation is done by following method

(function-name paramter1 paramter2 ... paramterN)

( a function can have as many paramters as it needed but try to use less of them )

so let's function by an example

### Examples - Built-in

```clarity
(print "hello")  
  
  ```
will print hello on screen.
```clarity
(+ 6 7 )  
  
  ```

will return 13 because this function adds 6 and 7


```clarity
(define-public (GreetMe (username string-ascii-8 ))
    (print "Hello ,")
    (print username )
    
)

(GreetMe "Umar")

```

This function will output `Hello,Umar`


## Functions Visibility
So you saw `define-public` keyword in function defination what is that ?
Do not worry , we got you covered.
Function visibility means `who has access to this function`

Following are three function visibilities available in clarity
    
    - Public
    - Private
    - Read only
    
### Public functions 
Are the ones that can called by anyone in the smart contract or a user account on stacks blockchain. <br/>
They do not have restrictions on the caller of the function. <br/>
They are declared with `define-public` keyword.

### Private functions 
Private functions are defined in the same manner as public functions.<br/>
The difference is that they can only be called by the current contract. <br/>
They cannot be called from other smart contracts, nor can they be called directly by sending a transaction. <br/>
They are declared with `define-private` keyword.

### Read only functions
Read-only functions can be called by the contract itself, as well as from the outside. They can return any type, just like private functions.

As the name implies, read-only functions may only perform read operations.<br/>
You can read from data variables and maps but you cannot write to them.
They are declared with `define-read-only` keyword.

### For more details on functions
Check the official documentation of clarity on Functions [Here](https://book.clarity-lang.org/ch05-00-functions.html)

# Ending Note 
So this was all about basics of functions in clarity.<br/>
We are all set. <br/>
And Let's keep going ! <br/>

Meanwhile , give a tap on your back because you are really doing great work ✨ <br/>

Let's Go !
