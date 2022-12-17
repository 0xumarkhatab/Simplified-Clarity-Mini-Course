# Clarity Variables



Variables are simply the place where data can be stored.

Data can be of different forms.

It can be a number, a decimal number, a string, or a boolean ( true or false).



Based on these types of data, clarity has the following variable types



# Variable Types





    - Signed integer    -   int

    - Unsigned integer    -   uint

    - Boolean            -   bool

    - Principal            -   principal

    - Buffer            -   buff

    - ASCII string        -   string-ascii

    - UTF-8 string        -   string-utf8 

    - List                -   list 

    - Mappings          -   map



and a lot more but these are the really basic ones that we need for this course.



# Working with variables



### Declaration

The variable declaration means declaring that this thing is a variable having this type and value

so that the entire code can use the variable by referring to its name again and again.



Clarity uses the following way to declare a variable

```clarity

(define-data-var var-name var-type initial-value)

```



where

`define-data-var` is a keyword telling clarity that this line is intended to define a variable for the smart contract.



`var-name` is the variable name - i.e `age` is a valid name of the variable. 

`var-type` is the type of variable - i.e `uint`, `string-ascii , `list` are valid variable types ( as described above) 

`initial-value` i think you are smart enough to know what it is : )



### Code in action

#### Question

Declare a string 'MyCountry' and give it the initial value of 'Pakistan'

#### Answer

```clarity

(define-data-var MyCountry string-ascii "Pakistan")



```

#### Question

Declare a signed integer 'MyAge' and give it an initial value of 68

#### Answer

```clarity

(define-data-var MyAge int 68)

```



If you know how these answers popped out, 

Congratulations 🎉 

you are becoming a sponge of Clarity.

Let's keep up the rhythm and keep going.



Time to move to the next lesson about [Functions](./Functions.md)



