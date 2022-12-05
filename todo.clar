(define-data-var index uint 0)(define-map items (uint) (string-utf8 200))
(define-public (addItem (item (string-utf8)))
  (map-set items (var-get index) item)
  (var-set index (+ (var-get index) u1))
  ok "item added in todo")

  
  
        
  
(addItem "Gym at 5 AM")

(addItem "Breakfast at 7 AM") 
(addItem "Office at 8 AM")

(print "total items in the todo-list are ")(print ( var-get index))

(print "Printing Todo List ")


(print (try! (map-get? items 0)))


(print (try! (map-get? items 1)))


(print (try! (map-get? items 2)))
