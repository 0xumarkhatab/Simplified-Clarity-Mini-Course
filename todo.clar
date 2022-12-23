

(define-map items (int) {label : (string-utf8) ,is-completed:(Boolean)})
(define-data-var index (int) 0)
(define-data-var temp-tuple {label : string-utf8 ,is-completed:Boolean}) {label:"",is-completed:false}
(define-public (add-item (item (string-utf8)))
  (map-insert items (var-get index) {label: item,is-completed: false})
  (var-set index (+ (var-get index) 1))
  (ok "Item has been added"))
      
(define-public (remove-item (item-index (int)))
 (map-delete items item-index)
 (ok "Your Item has been removed from your todo list"))
  

(define-public (complete-item(position(int)))
                 
  (var-set temp-tuple {label:(get label (try! (map-get? items position ) ) ),is-completed: true})
  (map-delete items position)
  (map-insert items position   (var-get temp-tuple))  
  (ok "your item is marked completed"))
(define-public (print-item (item-index (int)))
  (get label (try! (map-get? items item-index))))
   
  
(add-item "Gym at 5 AM") 
(add-item "Breakfast at 7 AM")
(add-item "Office at 8 AM")
(complete-item 1)
  
; see on the left side, the item is completed
(print (try! (map-get? items 1)))

(print "total items in the todo-list are ")
  
(print ( var-get index))
(print "Printing Todo List")
(print-item 0)
(print-item 1)
(print-item 2)
; removing the item
(remove-item 2)
; item has been removed
(print "Printing Todo List ")
(print ( var-get index))
(print-item 0)
(print-item 1)
(print-item 2); no item present means it is deleted .

