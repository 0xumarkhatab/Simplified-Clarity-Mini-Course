# Final Project

![superman_child](https://books.forbes.com/wp-content/uploads/2020/03/bigstock-Strong-superhero-girl-with-sup-240951781.jpg)



Finally, it is time to show your superpowers and build the final project as we go!



# Project scope 

Smart contracts are resource-constraint. Developers that just enter the blockchain space usually bring with them certain assumptions that maybe are invalid when writing smart contracts. It is important to remember that a blockchain is distributed data storage. Every state change is paid for in terms of the miner fee.

So you should consider storing data off-chain and may use the reference of that data to use in the smart contract if the smart contract does not directly use it.



For building large applications, you should have a look at the [Best practices about data storage in clarity](https://book.clarity-lang.org/ch13-02-what-to-store-on-chain.html)



## Clarity Tools

Clarity tools is a playground for clarity development where you can write your code and execute on the go to see your results.

It also has a lot of code snippets to learn from. Really Helpful. 

We will use clarity tools for our project. 



Check clarity tools [Here](https://clarity.tools/)





## Primary variables we will use

index       - will be used as a key in the map to store and access different todo items - its value will be increased by 1 each time a new item is added 

items       - the place where all todo items will be stored

temp-tuple  - to hold  intermediate data when we complete an item ( more on this later )



### Vaiables declaration

```clarity

(define-data-var index (int) 0)

(define-map items (int) {label : (string-utf8) ,is-completed:(Boolean)})

(define-data-var temp-tuple {label : string-utf8 ,is-completed:Boolean}) {label:"",is-completed: false}



```

we have defined two variables 

`index` has an initial value of 0 having type `signed integer`

`temp-tuple` is an empty tuple having a ```clarity utf8 string ``` as `label` and a ```clarity Boolean ``` named `is-completed`

which will tell us if the particular item is completed or not.



`items` is a mapping with key type as `uint` and value type as `string` 





## add-item Function

### Purpose

it is a function that receives a to-do item and adds it to the items list.



### Technicality



    - It receives a string-type item as a parameter.

    - Stores on the current value of the index in the items list using the 'map-set' function

    - increments the value of the index variable to store the next item at the new location

    - Sends back an ok message that the item is added

    - Exits





## remove-item Function

### Purpose

it is a function that deletes the item from items at the specific index



### Technicality



    - It receives the index of the file to be deleted 

    - deletes the file using the "map-delete" method of the map.

    - Sends back an ok message that the item has been Removed

    - Exits



## complete-item Function

### Purpose

it is a function that marks the to-do item as completed.





Let's go for simplicity here too : )



### Technicality



    - It has a parameter of the position of the item ( index of the item that the item is stored at)

    - Fetches the item on the given index.

    - Updates the `is-completed` field of the item tuple to true.

    - Sends back an ok message that the item is Completed.

    - Exits





## print-item Function

### Purpose

A utility function to print an item in the map at a specific index



### code



```clarity





(define-public (add-item (item (string-utf8)))

  

  (map-insert items (var-get index) {label:item,is-completed:false})

  (var-set index (+ (var-get index) 1))

  "item has been added to the todo list ")

(define-public (remove-item (itemIndex (int)))

  (map-delete items itemIndex)

  (ok "You Item has been removed from todo list"))



(define-public (complete-item(item-position (int)))

  (var-set temp-tuple {label:(get label (try! (map-get? items item-position ) ) ),is-completed:true})

  (map-delete items item-position)

  (map-insert items item-position  (var-get temp-tuple))  



  ok "You Item is marked completed")



(define-public (print-item (item-index (int)))

 (get label (try! (map-get? items item-index))))

   

   

```



## Function invocation

```clarity

(add-item "Gym at 5 AM")

```



we call the function `add-item` with a todo item to add which is `Gym at 5 AM`



and then we call the same function with different to-do items to store!

```clarity



(add-item "Gym at 5 AM")



(add-item "Breakfast at 7 AM") 

(add-item "Office at 8 AM")

```



We call the function `remove-item` to remove the last element  in the list which in our  case is "Office at breakfast"





```clarity

(remove-item 0)



```



Similarly, the `complete-item` function is called here as 



```clarity



(complete-item 1)



```





## Printing the Todo list

We print the to-do list by printing the number of to-do items first and then using the `print-item` function.





```clarity



(print "total items in the todo-list are ")(print ( var-get index))



(print "Printing Todo List ")





(print-item 0)



(print-item 1)



(print-item 2)







```



### But what is try?

if we just write 

```clarity

(print (map-get? items 0))



```

clarity will still give the answer but it will be wrapped in a `some` keyword like ... `some " Gym at 5 AM" ` 

but we want the value `Gym at 5 AM` not the "some" thing. That's where `try! the built-in function` comes in handy.



It takes an input, unwraps the variable, and gives the value we want in this case `Gym at 5 AM`.



So this was all regarding building our project!



Pay close attention to the left side outputs clarity tools are giving you.



It is the output of each line after execution.

![part1](https://user-images.githubusercontent.com/71306738/208232713-8f078f59-21d5-424e-b027-4c6c4d78e774.png)





![part2](https://user-images.githubusercontent.com/71306738/208232758-4ba8ca47-3d44-424c-8d90-5da3c371b6b0.png)



# Complete code 🎉



The complete code can be found [Here](./todo.clar)



Head over to [Closing Note](./ClosingNote.md) 💖



