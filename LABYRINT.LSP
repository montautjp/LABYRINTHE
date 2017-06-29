(defun labyrinthe (def_lab chemin_parcouru case_depart)
    (cond
	((sortie? (car def_lab) case_depart) 
 	    (append (list case_depart) chemin_parcouru))
	((impasse? (cdr def_lab) chemin_parcouru case_depart)
	    (labyrinthe def_lab 
			(append (list case_depart) chemin_parcouru)
			(car chemin_parcouru)))
	((impassefatale? (cdr def_lab) chemin_parcouru case_depart)
	    (labyrinthe def_lab
			(append (list case_depart) chemin_parcouru)
			(car(diff (voisins def_lab case_depart) (list(car chemin_parcouru))))))	
	(t
	    (labyrinthe def_lab
			(append (list case_depart) chemin_parcouru)
			(car(diff (voisins def_lab case_depart) chemin_parcouru))))
    )
)
