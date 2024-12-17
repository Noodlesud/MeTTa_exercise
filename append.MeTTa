
(: Cons (-> Number List List))

(= (append (Cons $x $y) $memeber) 
    (if (== $y Nil)
        (Cons $x (Cons $memeber Nil))
        (Cons $x (append $y $memeber))
    )
)


(= (new-list) (append (Cons 1 (Cons 2 (Cons 3 Nil))) 5))
!(new-list) 
(= (new-new-list) (append (new-list) 2))
!(new-new-list) 
