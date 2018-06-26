(set-logic BV)
(assert (forall ((?y3 (_ BitVec 32))) (forall ((?y5 (_ BitVec 32))) (forall ((?y6 (_ BitVec 32))) (not (= (bvadd (bvadd (bvadd (bvmul (bvneg (_ bv27 32)) ?y6) (_ bv0 32)) (bvmul (bvneg (_ bv61 32)) ?y3)) (_ bv0 32)) (_ bv0 32)))))))
(check-sat)
(exit)
