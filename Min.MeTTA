
(: compare (-> Number List List))

(= (min (compare $x $y) $min) 
    (if (== $y Nil)
        (if (< $x $min)
            ($x)
            ($min)
        )
        (if (< $x $min)
            (min $y $x)
            (min $y $min)
        )
    )
)

(= (min (compare $x $y)) 
    (if (== $y Nil)
        ($x)
        (min $y $x)
    )
)

!(min (compare 20 (compare 1 (compare 18 Nil)))) 
