# Final Project
![superman_child](https://books.forbes.com/wp-content/uploads/2020/03/bigstock-Strong-superhero-girl-with-sup-240951781.jpg)

Finally it is the time to show your super pwoers and build the final project as we go !


### Clarity Tools
Clarity tools is a playground for clarity development where you can write your code and execute on the go to see your results.
It also has a lot of code snippers to learn from . Really Helpful. <br/>
We will use clarity tools for our project. <br/>

Check clarity tools [Here](https://clarity.tools/)


### Primary vaiables we will use
Index       - will be used as key in map to store and access different todo items - it's value will be increased by 1 each time a new item is added <br/>
NoItem      - will be used to indicate the end of todo list when an item is removed
Items       - the place where all todo items will be stored
tempString  - to hold  intermediate data when we change an item ( more on this later )

#### Vaiables declaration
```clarity
(define-data-var Index uint 0)
(define-data-var NoItem (string-utf8 200) "no item")
(define-map Items (uint) (string-utf8 200))
(define-data-var tempString (string-utf8 200) "")

```
we have defined two variables <br/>
`Index`has initial value 0 having type `signed integer`<br/>
`NoItem` is a `Utf8 String variable` having maimum length of 200 and initial value as "NoItem". Read More about  Utf8 strings [here](https://blog.hubspot.com/website/what-is-utf-8#:~:text=UTF%2D8%20encodes%20a%20character,one%20byte%2C%20or%20eight%20bits.)

`tempString` is an empty `utf8 string` of maximum length 200

`Items` is a mapping with key type as `uint` and value type is `string` <br/>


### AddItem Function
#### Purpose
it is a function that receives a todo item and adds to the items list.

#### Technicality

    - It receives a string type item as paramter.
    - Stores on current value of index in items list using 'map-set' function
    - increments the value of index variable to store next item at new location
    - Sends back an ok message that item is added
    - Exits


### RemoveItem Function
#### Purpose
it is a function that deletes the last element inserted in the  list of items in the todo .

(with small tweaks the items can be deleted from the  front like index 0 ,1,2 .. 

but  it might seem difficult at first so i stick to the easy part to keep your brain at ease )

#### Technicality

    - It has no paramter
    - Decrements the value of the  index variable
    - Stores Null Alternative "NoItem" string on the last place , replacig=ng the last item
    - Sends back an ok message that item is Removed
    - Exits

### CompleteItem Function
#### Purpose
it is a function that marks the todo item as complete by appending a string "-Completed " on it's last.
This is just an introductory course so we are not moving to the depth  of removing items or  storing in seprate data structures.

Let's go for simplicity here too : )

#### Technicality

    - It has a paramter of the position of  item ( index of item the item is stored at)
    - Fetches the item the given index
    - Concatenate the string "- Completed" with it.
    - Stores in temporary variable we made at the top "te,pString"
    - Stores in Items list at the same index as paramter specified but this is an updated value
    - Sends back an ok message that item is Completed
    - Exits


#### code

```clarity
(define-public (AddItem (item (string-utf8)))
  (map-set Items (var-get Index) item) 
  (var-set Index (+ (var-get Index) u1))
  "item has been added in todo list ")
  
   
(define-public (RemoveItem)
  (var-set Index (- (var-get Index) u1))
  (map-set Items (var-get Index) NoItem) 
  (ok "You Item has been removed from todo list"))

(define-public (CompleteItem(ItemPosition (uint)))
 (var-set tempString (concat (try! (map-get? Items ItemPosition)) "- Completed"))
 (map-set Items ItemPosition (var-get tempString)
  ok "You Item is marked completed"))

```

### Functoin invocation
```clarity
(AddItem "Gym at 5 AM")
```

we call the function `AddItem` with a todo item to add which is `Gym at 5 AM`
<br/>
and then we call the same function with different todo items to store !
```clarity

(AddItem "Gym at 5 AM")

(AddItem "Breakfast at 7 AM") 
(AddItem "Office at 8 AM")
```

We call the function `RemoveItem` to remove the last element  in the list which in our  case is "Office at breakfast"


```clarity
(RemoveItem)

```

Similarly the `CompleteItem` function is called here as 

```clarity

(CompleteItem u1)

```

where `u1` denotes the unsigned integer `1` or  `one` in English.

### Printing the Todo list
We print the todo list by printing number of todo items first and then using built-in `print` function.
In order to access element of a map at specific key , we use `map-get?` function.


```clarity

(print "total items in the todo-list are ")(print ( var-get Index))

(print "Printing Todo List ")


(print (try! (map-get? Items 0)))


(print (try! (map-get? Items 1)))


(print (try! (map-get? Items 2)))

```

#### But what is try ?
if we just write 
```clarity
(print (map-get? Items 0))

```
clarity will still give the answer but it will be wrapped in a `some` keyword like ... `some "Gym at 5 AM" ` <br/>
but we want the value `Gym at 5 AM` not the `some` thing. That's where `try! built in function` comes handy.

It takes an input , unwraps the variable and gives the value we want in this case `Gym at 5 AM`.

So this was all regrading building our project !

Pay close attention to the left side outputs clarity tools is giving you .

It is the output of each line after execution.
![part1](https://user-images.githubusercontent.com/71306738/207474239-1c1428c5-ac64-4e44-afa4-004ff321c2ac.png)


![part2](https://user-images.githubusercontent.com/71306738/207474507-ea1364da-e20f-47dc-8d94-809c1bbdd7ed.png)

### Complete code

The complete code can be found [Here](./todo.clar)

Head over to [Closing Note](./ClosingNote.md)

