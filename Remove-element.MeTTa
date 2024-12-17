
(: Cons (-> Number List List))

(= (remove-element (Cons $x $y) $memeber) 
    (if (== $x $memeber)
        ($y)
        (Cons $x (remove-element $y $memeber))
    )
)


!(remove-element (Cons 1 (Cons 2 (Cons 3 (Cons 4 Nil)))) 3) 
!(remove-element (Cons 1 (Cons 2 (Cons 3 (Cons 4 Nil)))) 4) 
