(set-logic BV)
(assert (exists ((?y2 (_ BitVec 32))) (exists ((?y5 (_ BitVec 32))) (exists ((?y6 (_ BitVec 32))) (= (bvadd (bvadd (bvadd (bvmul (bvneg (_ bv99 32)) ?y6) (bvmul (bvneg (_ bv27 32)) ?y5)) (_ bv0 32)) (_ bv0 32)) (_ bv42 32))))))
(check-sat)
(exit)
