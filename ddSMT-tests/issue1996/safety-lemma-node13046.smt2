(set-info :smt-lib-version 2.6)
(set-logic NRA)
(set-info :source |
These benchmarks used in the paper:

  Dejan Jovanovic and Leonardo de Moura.  Solving Non-Linear Arithmetic.
  In IJCAR 2012, published as LNCS volume 7364, pp. 339--354.

The keymaera family contains VCs from Keymaera verification, see:

  A. Platzer, J.-D. Quesel, and P. Rummer.  Real world verification.
  In CADE 2009, pages 485-501. Springer, 2009.

Submitted by Dejan Jovanovic for SMT-LIB.

 KeYmaera example: safety-lemma, node 13046 For more info see: @see "Andre Platzer and Jan-David Quesel. European Train Control System: A case study in formal verification. In Karin Breitman and Ana Cavalcanti, editors, 11th International Conference on Formal Engineering Methods, ICFEM, Rio de Janeiro, Brasil, Proceedings, volume 5885 of LNCS, pages 246-265. Springer, 2009."
|)
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun vuscore2dollarskuscore5 () Real)
(declare-fun duscore2dollarskuscore5 () Real)
(declare-fun d () Real)
(declare-fun b () Real)
(declare-fun A () Real)
(declare-fun ts6uscore0 () Real)
(declare-fun vdesuscore2dollarskuscore4 () Real)
(declare-fun stateuscore2dollarskuscore3 () Real)
(declare-fun m () Real)
(declare-fun zuscore2dollarskuscore5 () Real)
(declare-fun v () Real)
(declare-fun t6uscore0dollarskuscore0 () Real)
(declare-fun auscore4dollarskuscore2 () Real)
(declare-fun ep () Real)
(declare-fun muscore2dollarskuscore5 () Real)
(declare-fun z () Real)
(assert (not (exists ((ts6uscore0 Real)) (let ((?v_0 (* 2 b)) (?v_1 (- muscore2dollarskuscore5 zuscore2dollarskuscore5)) (?v_4 (* duscore2dollarskuscore5 duscore2dollarskuscore5))) (let ((?v_2 (- (* vuscore2dollarskuscore5 vuscore2dollarskuscore5) ?v_4)) (?v_3 (+ (* auscore4dollarskuscore2 t6uscore0dollarskuscore0) vuscore2dollarskuscore5))) (=> (and (and (and (and (and (and (and (and (and (and (and (=> (and (<= 0 ts6uscore0) (<= ts6uscore0 t6uscore0dollarskuscore0)) (and (>= (+ (* auscore4dollarskuscore2 ts6uscore0) vuscore2dollarskuscore5) 0) (<= ts6uscore0 ep))) (>= t6uscore0dollarskuscore0 0)) (< auscore4dollarskuscore2 0)) (>= auscore4dollarskuscore2 (- b))) (>= vuscore2dollarskuscore5 vdesuscore2dollarskuscore4)) (<= ?v_2 (* ?v_0 ?v_1))) (>= duscore2dollarskuscore5 0)) (<= (- (* v v) (* d d)) (* ?v_0 (- m z)))) (>= d 0)) (> b 0)) (>= A 0)) (>= ep 0)) (or (or (<= ?v_1 (+ (/ ?v_2 ?v_0) (* (+ (/ A b) 1) (+ (* (/ A 2) (* ep ep)) (* ep vuscore2dollarskuscore5))))) (= stateuscore2dollarskuscore3 1)) (<= (- (* ?v_3 ?v_3) ?v_4) (* ?v_0 (- muscore2dollarskuscore5 (* (/ 1 2) (+ (+ (* auscore4dollarskuscore2 (* t6uscore0dollarskuscore0 t6uscore0dollarskuscore0)) (* (* 2 t6uscore0dollarskuscore0) vuscore2dollarskuscore5)) (* 2 zuscore2dollarskuscore5)))))))))))))
(check-sat)
(exit)
