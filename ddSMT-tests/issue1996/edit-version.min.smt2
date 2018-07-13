(set-logic NRA)
<<<<<<< Updated upstream
(declare-fun _substvar_43_ () Real)
(declare-fun zuscore2dollarskuscore5 () Real)
(assert (not (exists ((ts6uscore0 Real)) (=> (=> true (>= (+ (* _substvar_43_ ts6uscore0) 0.0) 0)) false))))
=======
(declare-fun _substvar_51_ () Real)
(assert (not (exists ((ts6uscore0 Real)) (=> (=> true (>= (+ (* _substvar_51_ ts6uscore0) 0.0) 0)) false))))
>>>>>>> Stashed changes
(check-sat)
(exit)
