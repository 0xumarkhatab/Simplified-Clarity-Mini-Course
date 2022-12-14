(define-data-var Index uint 0)
(define-data-var NoItem (string-utf8 200) "no item")

(define-map Items (uint) (string-utf8 200))
(define-public (AddItem (item (string-utf8)))
  (map-set Items (var-get Index) item) 
  (var-set Index (+ (var-get Index) u1))
  ok "item added in todo")
              
  
(define-public (RemoveItem)
  (var-set Index (- (var-get Index) u1))
  (map-set Items (var-get Index) NoItem) 

  ok "item is removed successfully")

              
  

(AddItem "Gym at 5 AM")
(AddItem "Breakfast at 7 AM")
(AddItem "Office at 8 AM")

(print "total Items in the todo-list are ")
(print ( var-get Index))
(print "Printing Todo List ")

(print (try! (map-get? Items 0)))

(print (try! (map-get? Items 1)))

(print (try! (map-get? Items 2)))

(print (RemoveItem))



(print ( var-get Index))
(print "Printing Todo List ")
(print ( var-get Index))

(print (try! (map-get? Items 0)))

(print (try! (map-get? Items 1)))

(print (try! (map-get? Items 2)))


