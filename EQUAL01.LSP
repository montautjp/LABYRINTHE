(defun equal (sexp1 sexp2)
   (cond
      ((atomp sexp1)  (eql sexp1 sexp2))
      ((atomp sexp2)  nil)
      ((equal (car sexp1) (car sexp2)) (equal (cdr sexp1) (cdr sexp2)))
   )
)
