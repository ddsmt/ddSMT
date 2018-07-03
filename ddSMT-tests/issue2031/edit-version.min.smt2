(set-logic BV)
(assert (exists ((?y2 (_ BitVec 32))) (exists ((?y4 (_ BitVec 32))) (exists ((?y5 (_ BitVec 32))) (exists ((?y6 (_ BitVec 32))) (= (bvadd (bvadd (bvmul (bvneg (_ bv61 32)) ?y6) (bvmul (bvneg (_ bv37 32)) ?y5)) (_ bv0 32)) (_ bv0 32)))))))
(check-sat)
(exit)
