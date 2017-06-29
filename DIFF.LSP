(defun diff (liste1 liste2)
	(cond
		((nullp liste1)  nil)
		((nullp(member (car liste1) liste2))
			(cons (car liste1) (diff (cdr liste1) liste2)))
		(t  (diff (cdr liste1) liste2))
	)
)
