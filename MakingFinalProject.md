# Final Project
[superman_child](https://books.forbes.com/wp-content/uploads/2020/03/bigstock-Strong-superhero-girl-with-sup-240951781.jpg)

Finally it is the time to show your super pwoers and build the final project as we go !


### Clarity Tools
Clarity tools is a playground for clarity development where you can write your code and execute on the go to see your results.
It also has a lot of code snippers to learn from . Really Helpful. <br/>
We will use clarity tools for our project. <br/>

Check clarity tools [Here](https://clarity.tools/)


### Primary vaiables we will use
index - will be used as key in map to store and access different todo items - it's value will be increased by 1 each time a new item is added <br/>
items - the place where all todo items will be stored

#### Vaiables declaration
```clarity
(define-data-var index uint 0)
(define-map items (uint) (string-utf8 200))

```
we have defined two variables <br/>
`index`has initial value 0 having type `signed integer`<br/>
`items` is a mapping with key type as `uint` and value type is `string` <br/>


### AddTodo Function
#### Purpose
it is a function that receives a todo item and adds to the items list.

#### Technicality

    - It receives a string type item as paramter.
    - Stores on current value of index in items list using 'map-set' function
    - increments the value of index variable to store next item at new location
    - Sends back an ok message that item is added
    - Exits

#### code

```clarity
(define-public (addItem (item (string-utf8)))
  (map-set items (var-get index) item)
  (var-set index (+ (var-get index) u1))
  ok "item added in todo")
```

### Functoin invocation
```clarity
(addItem "Gym at 5 AM")
```

we call the function `addItem` with a todo item to add which is `Gym at 5 AM`
<br/>
and then we call the same function with different todo items to store !
```clarity

(addItem "Gym at 5 AM")

(addItem "Breakfast at 7 AM") 
(addItem "Office at 8 AM")
```
### Printing the Todo list
We print the todo list by printing number of todo items first and then using built-in `print` function.
In order to access element of a map at specific key , we use `map-get?` function.


```clarity

(print "total items in the todo-list are ")(print ( var-get index))

(print "Printing Todo List ")


(print (try! (map-get? items 0)))


(print (try! (map-get? items 1)))


(print (try! (map-get? items 2)))

```

#### But what is try ?
if we just write 
```clarity
(print (map-get? items 0))

```
clarity will still give the answer but it will be wrapped in a `some` keyword like ... `some "Gym at 5 AM" ` <br/>
but we want the value `Gym at 5 AM` not the `some` thing. That's where `try! built in function` comes handy.

It takes an input , unwraps the variable and gives the value we want in this case `Gym at 5 AM`.

So this was all regrading building our project !

Pay close attention to the left side outputs clarity tools is giving you .

It is the output of each line after execution.
![image](https://user-images.githubusercontent.com/71306738/205576563-0cfca10e-29cf-4987-b807-990f2c403f25.png)

### Complete code

The complete code can be found [Here](./todo.clar)

Head over to [Closing Note](./ClosingNote.md)

