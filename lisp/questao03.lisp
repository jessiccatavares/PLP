
(defun quadrado(n)
	(* n n)
)

(defun somatorio(lista)
	(cond ((equal nil lista) 0)
		((integerp(car lista))
			(if(evenp(car lista))
				(+(quadrado(car lista)) (somatorio(cdr lista))
				)
			)
		)
	)
)

(print (somatorio '(1 ss 0 4 a 8 gfy 3)))