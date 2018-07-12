(set-logic BV)
(assert (forall ((?y3 (_ BitVec 32))) (forall ((?y5 (_ BitVec 32))) (exists ((?y6 (_ BitVec 32))) (not (= (bvadd (bvmul (_ bv65 32) ?y5) (bvmul (bvneg (_ bv77 32)) ?y3)) (_ bv24 32)))))))
(check-sat)
(exit)
