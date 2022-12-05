# Clarity Variables

Variables are simply the place where data can be stored.
Data can be of different form.
It can be a number , decimal number , a string or a boolean ( true or false).

Bases upon these , clarity have some variabl types

# Variable Types


    - Signed integer	int
    - Unsigned integer	uint
    - Boolean	bool
    - Principal	principal
    - Buffer	buff
    - ASCII string	string-ascii
    - UTF-8 string	string-utf8 
    - List	list 
    - Mappings map

and a lot more but these are rally basic we need for this course.

# Working with variables

### Declaration
Variable declaration means declaring that this thing is a variable having this type and value
so that entire other code can use the vaiable by referring to its name again and again.

Calrity uses following way to declare a variable
```clarity
(define-data-var var-name var-type initial-value)
```

where
`define-data-var` is a keyword telling clarity that this line is intended to define a variable for the smart contract.

`var-name` is the variable name - i.e `age` is a valid name of the variable.
`var-type` is the type of variable - i.e `uint`, `string-ascii` , `list` are valid varaible types ( as described above)
`initial-value` i think you are smart enough to know what it is : )

### Code in action
#### Question
Decalre a string 'MyCountry' and give it initial value of 'Pakistan'
#### Answer
```clarity (define-data-var MyCountry string-ascii "Pakistan")```
#### Question
Decalre a signed integer 'MyAge' and give it initial value of 68
#### Answer
```clarity
(define-data-var MyAge int 68)
```

If you know how these answers popped out , congratulations , you are becoming a sponge on Clarity .
Let's keep up the rhythm and keep going.





