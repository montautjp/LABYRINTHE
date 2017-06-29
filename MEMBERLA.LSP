(defun member (sexp liste)
	(cond
		((nullp liste)  nil)
		((equal sexp (car liste))  t)
		(t  (member sexp (cdr liste)))
	)
) 
