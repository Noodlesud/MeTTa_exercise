
(: compare (-> Number List List))

(= (max (compare $x $y) $max) 
    (if (== $y Nil)
        (if (> $x $max)
            ($x)
            ($max)
        )
        (if (> $x $max)
            (max $y $x)
            (max $y $max)
        )
    )
)

(= (max (compare $x $y)) 
    (if (== $y Nil)
        ($x)
        (max $y $x)
    )
)

!(max (compare 4 (compare 1 (compare 8 Nil)))) 
