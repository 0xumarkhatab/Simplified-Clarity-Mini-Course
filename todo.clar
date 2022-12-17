(define-data-var index (int) 0)
(define-map items (int) {label : (string-utf8) ,is-completed:(Boolean)})
(define-data-var temp-tuple {label : string-utf8 ,is-completed:Boolean}) {label:"",is-completed:false}

(define-public (add-item (item (string-utf8)))
  
  (map-insert items (var-get index) {label:item,is-completed:false})
  (var-set index (+ (var-get index) 1))
  "item has been added in todo list ")
(define-public (remove-item (itemIndex (int)))
  (map-delete items itemIndex)
  (ok "You Item has been removed from todo list"))

(define-public (complete-item(ItemPosition (int)))
  (var-set temp-tuple {label:(get label (try! (map-get? items ItemPosition ) ) ),is-completed:true})
  (map-delete items ItemPosition)
  (map-insert items ItemPosition  (var-get temp-tuple))  

  ok "You Item is marked completed")

(define-public (print-item (item-index (int)))
 (get label (try! (map-get? items item-index))))
   
 
  


(add-item "Gym at 5 AM")
(add-item "Breakfast at 7 AM")
(add-item "Office at 8 AM")

(complete-item u1)

(print (map-get? items 1))


(print "total items in the todo-list are ")

(print ( var-get index))

(print "Printing Todo List ")

(print-item 0)

(print-item 1)

(print-item 2)



(remove-item 0)

(print "Printing Todo List ")

(print ( var-get index))



(print-item 0)
(print-item 1)
(print-item 2)

