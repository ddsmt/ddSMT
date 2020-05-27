(set-logic QF_BV)
(define-sort FPN (X) X)
(declare-fun x () (FPN Bool))
(declare-fun y () Bool)
(assert (= x y))
(check-sat)
(exit)

