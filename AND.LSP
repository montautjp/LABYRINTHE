(defun and (sexp1 sexp2)
	(cond
		((nullp sexp1)  nil) 
		((nullp sexp2)  nil)
		(t t)
	)
)
