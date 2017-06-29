# LABYRINTHE
Parcours d'un LABYRINTHE
Les paramètres du labyrinthe sont :
	- la liste qui définit le labyrinthe (composée de la liste des sorties et de la liste des cases)
	- la liste des cases déjà parcourues
	- la case de départ
  (defun labyrinthe (def_lab chemin_parcouru case_depart)
    (cond

Si nous nous trouvons à une sortie, nous retournons le chemin parcouru.
	((sortie? def_lab case_depart) 
 	    (append (list case_depart) chemin_parcouru))

Si nous sommes à une impasse, nous insérons (en tête de liste) la case_courante dans le chemin_parcouru et nous repartons du premier élément du chemin_parcouru, c'est à dire de la case précédente (d’où nous venons).
	((impasse? (cdr def_lab) chemin_parcouru case_depart)
	    (labyrinthe def_lab 
			(append (list case_depart) chemin_parcouru)
			(car chemin_parcouru)))

Si nous n’avons plus de case à explorer à partir de cette case (case que nous avons déjà parcourue), nous insérons (en tête de liste) la case_courante dans le chemin_parcouru et nous repartons de la première case de la liste des cases voisines, privée de la case précédente (d’où nous venons).
	((impassefatale? (cdr def_lab) chemin_parcouru case_depart)
	    (labyrinthe def_lab
			(append (list case_depart) chemin_parcouru)
			(car(diff (voisins def_lab case_depart) (list(car chemin_parcouru))))))

Dans tous les autres cas, il reste au moins une case à explorer. Nous insérons (en tête de liste) la case_courante dans le chemin_parcouru et nous repartons de la première case de la liste des cases voisines que nous n’avons pas encore parcourues (liste des cases voisines, privée des cases que nous avons déjà parcourues).
	(t
	    (labyrinthe def_lab
			(append (list case_depart) chemin_parcouru)
			(car(diff (voisins def_lab case_depart) chemin_parcouru))))))

