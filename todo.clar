(define-data-var Index uint 0)
(define-data-var NoItem (string-utf8 200) "no item")
(define-map Items  {id:uint} {label : string-utf8 } {is-completed:Boolean})
(define-data-var temp-tuple {label : string-utf8 ,is-completed:Boolean}) {label:"",is-completed:false}

(define-public (AddItem (item (string-utf8)))
  
  (map-insert Items (var-get Index) {label:item,is-completed:false,id:(var-get Index)})
  (var-set Index (+ (var-get Index) u1))
  "item has been added in todo list ")
(define-public (RemoveItem (itemIndex (uint)))
  (var-set Index (- (var-get Index) u1)) 
  (map-delete Items ( map-get? Items itemIndex))
  (ok "You Item has been removed from todo list"))

(define-public (CompleteItem(ItemPosition (uint)))
  (var-set temp-tuple (try! (map-get? Items ItemPosition)))
  (map-set Items ItemPosition {label: (get label (try! (map-get? Items ItemPosition ) ) ), is-completed: true,id:ItemPosition})

    
  ok "You Item is marked completed")

(AddItem "Gym at 5 AM")
(AddItem "Breakfast at 7 AM")
(AddItem "Office at 8 AM")
(map-insert Items 0 {label: (get label (try! (map-get? Items 0) ) )} {is-completed: true}{id:0})

{label: (get label (try! (map-get? Items 0) ) ), is-completed: true,id:0}

(print (map-get? Items 0))


(print "total Items in the todo-list are ")
(print ( var-get Index))
(print "Printing Todo List ")
(print (try! (map-get? Items 0)))
(print (try! (map-get? Items 1)))
(print (try! (map-get? Items 2)))

(CompleteItem u1)

(print (try! (map-get? Items 1)))

(map-delete Items (tuple (label  (get label (try! (map-get? Items 0))))))


(print "Printing Todo List ")

(print ( var-get Index))

(print (try! (map-get? Items 0)))
(print (try! (map-get? Items 1)))

(print (try! (map-get? Items 2)))
