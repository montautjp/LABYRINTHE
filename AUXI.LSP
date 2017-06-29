(defun l1 ()
	(labyrinthe '((a1) (a1 b1) (a2 a3) (a3 a2 b3) (b1 a1 b2) (b2 b1 b3) (b3 a3 b2)) nil 'a3))
(defun l2 ()
	(labyrinthe '((a4 c4) (a1 b1) (a2 a3) (a3 a2 b3) (a5 a4 b5) (b1 a1 b2 c1) (b2 b1 b3) (b3 b2 c3 a3 b4) (b4 b3 b5) (b5 b4 a5 c5) (c1 b1 c2) (c2 c1 c3) (c3 c2 b3) (c5 c4 b5)) nil 'c3))
(defun l3()
	(labyrinthe '((a6 c6) (a1 b1) (a2 a3) (a3 a2 a4) (a4 a3 a5) (a5 a4 b5) (a7 a6 b7) (b1 a1 b2 c1) (b2 b3 b1) (b3 b4 b2) (b4 b5 b3) (b5 a5 b6 c5 b4) (b6 b7 b5) (b7 a7 b6 c7) (c1 b1 c2) (c2 c1 c3) (c3 c2 c4) (c4 c3 c5) (c5 c4 b5) (c7 c6 b7)) nil 'c5))

(defun voisins (liste case)
	(cond
		((nullp liste)  nil)
		((eql (car(car liste)) case)  (cdr(car liste)))
		(t  (voisins (cdr liste) case))))

(defun sortie? (liste case)
	(member case liste))

(defun impassefatale? (liste chemin_parcouru case)
	(nullp(diff (voisins liste case) chemin_parcouru)))

(defun impasse? (liste chemin_parcouru case)
	(nullp(diff (voisins liste case) (list (car chemin_parcouru)))))
