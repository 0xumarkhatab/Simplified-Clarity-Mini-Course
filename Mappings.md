# Mappings

![mapping_image](https://www.edureka.co/blog/wp-content/uploads/2019/09/img-recreate-01-1.jpg)

Mappings are always the lovely part of any programming language. <br/>

What are mappings ?

Mappings are a way to structure your data in the form of key value pairs.
For every corresponding key , we store some value in a variable.

For Example , let's say we are making a todo app , then what how we will use the mapping structure ?

You guessed it right.

We will use integers for keys and strings for values.
Let me tell you how 

# Example of mapping

Let's say we have a mapping named `Items` that maps every integer `uint` to a string `string-ascii-8`.

What we will do is whenever user wants to add an item let's say 'Gym at 5 AM',
we will store this string at location 1
then second item on location 2 
then third on location 3 and so on.

So eventually what we will have is something like this .

value at key `1` in `Items` is  `Gym at 5 AM` <br/>
value at key `2` in `Items` is  `Breakfast at 6 am` <br/>
value at key `3` in `Items` is  `office at 9 am` <br/>
and so on..


## Mappings in Clarity
mappings work the same way in clarity .
Let's see how to code mappings in clarity.

### Map decalration
You can decalre mapping as 

```clarity
(define-map mapping-name (key-data-type) (value-data-type))
```

####  For example
Following is a valid map declaration

```clarity
(define-map Items (uint) (string-utf8 200))
```

We are telling clarity to create a map by `define-map` keyword ,  giving it a name of `Items` , key data type to be `uint` (unsigned integer) and value data type is string (`string-utf-8`)

We additionally are telling clarity that each value is of type string but each string's maximum length is 200 ( we mention max-length everytime we decalare a string variable)

pheww...
that was so much about mappings !

Finally you are ready to be the master of clarity and start coding your Todo app
in [Next Lesson](./MakingFinalProject.md)
