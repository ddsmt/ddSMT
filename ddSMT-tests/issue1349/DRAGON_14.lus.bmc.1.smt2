(set-option :print-success true)
;; Success 

(set-option :produce-assignments true)
;; Success 

(set-logic ALL)
;; Success 

(declare-sort FArray 2)
;; Success 

(declare-fun %fresh_actlit_1 () Bool)
;; Success 

(declare-fun f143 () Int)
;; Success 

(declare-fun f142 () Int)
;; Success 

(declare-fun f141 () Int)
;; Success 

(declare-fun f140 () Int)
;; Success 

(declare-fun f139 () Int)
;; Success 

(declare-fun f138 () Int)
;; Success 

(declare-fun f137 () Int)
;; Success 

(declare-fun f136 () Int)
;; Success 

(declare-fun f135 () Int)
;; Success 

(declare-fun f134 () Int)
;; Success 

(declare-fun f133 () Int)
;; Success 

(declare-fun f132 () Int)
;; Success 

(declare-fun f131 () Int)
;; Success 

(declare-fun f130 () Int)
;; Success 

(declare-fun f129 () Int)
;; Success 

(declare-fun f128 () Int)
;; Success 

(declare-fun f127 () Int)
;; Success 

(declare-fun f126 () Int)
;; Success 

(declare-fun f125 () Int)
;; Success 

(declare-fun f124 () Int)
;; Success 

(declare-fun f123 () Int)
;; Success 

(declare-fun f122 () Int)
;; Success 

(declare-fun f121 () Int)
;; Success 

(declare-fun f120 () Int)
;; Success 

(declare-fun f119 () Int)
;; Success 

(declare-fun f118 () Int)
;; Success 

(declare-fun f117 () Int)
;; Success 

(declare-fun f116 () Int)
;; Success 

(declare-fun f115 () Int)
;; Success 

(declare-fun f114 () Int)
;; Success 

(declare-fun f113 () Int)
;; Success 

(define-fun
 __node_init_DRAGON_0
 ((DRAGON.usr.e01@0 Bool)
  (DRAGON.usr.e02@0 Bool)
  (DRAGON.usr.e03@0 Bool)
  (DRAGON.usr.e04@0 Bool)
  (DRAGON.usr.e05@0 Bool)
  (DRAGON.usr.e06@0 Bool)
  (DRAGON.usr.e07@0 Bool)
  (DRAGON.usr.e08@0 Bool)
  (DRAGON.usr.e09@0 Bool)
  (DRAGON.usr.e10@0 Bool)
  (DRAGON.usr.e11@0 Bool)
  (DRAGON.usr.e12@0 Bool)
  (DRAGON.usr.init_invalid@0 Int)
  (DRAGON.res.nondet_30 Int)
  (DRAGON.res.nondet_29 Int)
  (DRAGON.res.nondet_28 Int)
  (DRAGON.res.nondet_27 Int)
  (DRAGON.res.nondet_26 Int)
  (DRAGON.res.nondet_25 Int)
  (DRAGON.res.nondet_24 Int)
  (DRAGON.res.nondet_23 Int)
  (DRAGON.res.nondet_22 Int)
  (DRAGON.res.nondet_21 Int)
  (DRAGON.res.nondet_20 Int)
  (DRAGON.res.nondet_19 Int)
  (DRAGON.res.nondet_18 Int)
  (DRAGON.res.nondet_17 Int)
  (DRAGON.res.nondet_16 Int)
  (DRAGON.res.nondet_15 Int)
  (DRAGON.res.nondet_14 Int)
  (DRAGON.res.nondet_13 Int)
  (DRAGON.res.nondet_12 Int)
  (DRAGON.res.nondet_11 Int)
  (DRAGON.res.nondet_10 Int)
  (DRAGON.res.nondet_9 Int)
  (DRAGON.res.nondet_8 Int)
  (DRAGON.res.nondet_7 Int)
  (DRAGON.res.nondet_6 Int)
  (DRAGON.res.nondet_5 Int)
  (DRAGON.res.nondet_4 Int)
  (DRAGON.res.nondet_3 Int)
  (DRAGON.res.nondet_2 Int)
  (DRAGON.res.nondet_1 Int)
  (DRAGON.res.nondet_0 Int)
  (DRAGON.usr.exclusive@0 Int)
  (DRAGON.usr.shared@0 Int)
  (DRAGON.usr.shared_dirty@0 Int)
  (DRAGON.usr.dirty@0 Int)
  (DRAGON.usr.invalid@0 Int)
  (DRAGON.usr.erreur@0 Bool)
  (DRAGON.res.init_flag@0 Bool)
  (DRAGON.impl.usr.mem_init@0 Int))
 Bool
 (let
  ((X1
    (and
     (and
      (and
       (and (>= DRAGON.res.nondet_4 1) (= DRAGON.res.nondet_3 0))
       (= DRAGON.res.nondet_2 0))
      (= DRAGON.res.nondet_1 0))
     (= DRAGON.res.nondet_0 0))))
  (let
   ((X2
     (and
      (>= DRAGON.res.nondet_9 1)
      (>=
       (+
        (+ (+ DRAGON.res.nondet_8 DRAGON.res.nondet_7) DRAGON.res.nondet_6)
        DRAGON.res.nondet_5)
       1))))
   (let
    ((X3
      (and
       (and
        (and
         (and (>= DRAGON.res.nondet_21 1) (= DRAGON.res.nondet_20 0))
         (= DRAGON.res.nondet_19 0))
        (= DRAGON.res.nondet_18 0))
       (= DRAGON.res.nondet_17 0))))
    (let
     ((X4
       (and
        (>= DRAGON.res.nondet_26 1)
        (>=
         (+
          (+
           (+ DRAGON.res.nondet_25 DRAGON.res.nondet_24)
           DRAGON.res.nondet_23)
          DRAGON.res.nondet_22)
         1))))
     (let
      ((X5 (>= DRAGON.res.nondet_27 1)))
      (let
       ((X6 (>= DRAGON.res.nondet_28 1)))
       (let
        ((X7 (>= DRAGON.res.nondet_29 1)))
        (let
         ((X8 (>= DRAGON.res.nondet_30 1)))
         (let
          ((X9 (>= DRAGON.res.nondet_10 1)))
          (let
           ((X10 (and (= DRAGON.res.nondet_12 1) (= DRAGON.res.nondet_11 0))))
           (let
            ((X11
              (and (= DRAGON.res.nondet_14 0) (= DRAGON.res.nondet_13 1))))
            (let
             ((X12 (>= (+ DRAGON.res.nondet_16 DRAGON.res.nondet_15) 2)))
             (and
              (= DRAGON.usr.exclusive@0 0)
              (= DRAGON.usr.shared@0 0)
              (= DRAGON.usr.shared_dirty@0 0)
              (= DRAGON.usr.dirty@0 0)
              (= DRAGON.impl.usr.mem_init@0 DRAGON.usr.init_invalid@0)
              (= DRAGON.usr.invalid@0 DRAGON.impl.usr.mem_init@0)
              (=
               DRAGON.usr.erreur@0
               (ite (>= DRAGON.usr.exclusive@0 2) true false))
              DRAGON.res.init_flag@0))))))))))))))
;; Success 

(define-fun
 __node_trans_DRAGON_0
 ((DRAGON.usr.e01@1 Bool)
  (DRAGON.usr.e02@1 Bool)
  (DRAGON.usr.e03@1 Bool)
  (DRAGON.usr.e04@1 Bool)
  (DRAGON.usr.e05@1 Bool)
  (DRAGON.usr.e06@1 Bool)
  (DRAGON.usr.e07@1 Bool)
  (DRAGON.usr.e08@1 Bool)
  (DRAGON.usr.e09@1 Bool)
  (DRAGON.usr.e10@1 Bool)
  (DRAGON.usr.e11@1 Bool)
  (DRAGON.usr.e12@1 Bool)
  (DRAGON.usr.init_invalid@1 Int)
  (DRAGON.res.nondet_30 Int)
  (DRAGON.res.nondet_29 Int)
  (DRAGON.res.nondet_28 Int)
  (DRAGON.res.nondet_27 Int)
  (DRAGON.res.nondet_26 Int)
  (DRAGON.res.nondet_25 Int)
  (DRAGON.res.nondet_24 Int)
  (DRAGON.res.nondet_23 Int)
  (DRAGON.res.nondet_22 Int)
  (DRAGON.res.nondet_21 Int)
  (DRAGON.res.nondet_20 Int)
  (DRAGON.res.nondet_19 Int)
  (DRAGON.res.nondet_18 Int)
  (DRAGON.res.nondet_17 Int)
  (DRAGON.res.nondet_16 Int)
  (DRAGON.res.nondet_15 Int)
  (DRAGON.res.nondet_14 Int)
  (DRAGON.res.nondet_13 Int)
  (DRAGON.res.nondet_12 Int)
  (DRAGON.res.nondet_11 Int)
  (DRAGON.res.nondet_10 Int)
  (DRAGON.res.nondet_9 Int)
  (DRAGON.res.nondet_8 Int)
  (DRAGON.res.nondet_7 Int)
  (DRAGON.res.nondet_6 Int)
  (DRAGON.res.nondet_5 Int)
  (DRAGON.res.nondet_4 Int)
  (DRAGON.res.nondet_3 Int)
  (DRAGON.res.nondet_2 Int)
  (DRAGON.res.nondet_1 Int)
  (DRAGON.res.nondet_0 Int)
  (DRAGON.usr.exclusive@1 Int)
  (DRAGON.usr.shared@1 Int)
  (DRAGON.usr.shared_dirty@1 Int)
  (DRAGON.usr.dirty@1 Int)
  (DRAGON.usr.invalid@1 Int)
  (DRAGON.usr.erreur@1 Bool)
  (DRAGON.res.init_flag@1 Bool)
  (DRAGON.impl.usr.mem_init@1 Int)
  (DRAGON.usr.e01@0 Bool)
  (DRAGON.usr.e02@0 Bool)
  (DRAGON.usr.e03@0 Bool)
  (DRAGON.usr.e04@0 Bool)
  (DRAGON.usr.e05@0 Bool)
  (DRAGON.usr.e06@0 Bool)
  (DRAGON.usr.e07@0 Bool)
  (DRAGON.usr.e08@0 Bool)
  (DRAGON.usr.e09@0 Bool)
  (DRAGON.usr.e10@0 Bool)
  (DRAGON.usr.e11@0 Bool)
  (DRAGON.usr.e12@0 Bool)
  (DRAGON.usr.init_invalid@0 Int)
  (DRAGON.usr.exclusive@0 Int)
  (DRAGON.usr.shared@0 Int)
  (DRAGON.usr.shared_dirty@0 Int)
  (DRAGON.usr.dirty@0 Int)
  (DRAGON.usr.invalid@0 Int)
  (DRAGON.usr.erreur@0 Bool)
  (DRAGON.res.init_flag@0 Bool)
  (DRAGON.impl.usr.mem_init@0 Int))
 Bool
 (let
  ((X1 (>= DRAGON.usr.exclusive@0 1)))
  (let
   ((X2
     (and
      (>= DRAGON.usr.invalid@0 1)
      (>=
       (+
        (+ (+ DRAGON.usr.dirty@0 DRAGON.usr.shared@0) DRAGON.usr.exclusive@0)
        DRAGON.usr.shared_dirty@0)
       1))))
   (let
    ((X3 (>= DRAGON.usr.exclusive@0 1)))
    (let
     ((X4
       (and
        (>= DRAGON.usr.invalid@0 1)
        (>=
         (+
          (+
           (+ DRAGON.usr.dirty@0 DRAGON.usr.shared@0)
           DRAGON.usr.exclusive@0)
          DRAGON.usr.shared_dirty@0)
         1))))
     (let
      ((X5
        (and
         (and
          (and
           (and (>= DRAGON.usr.invalid@0 1) (= DRAGON.usr.dirty@0 0))
           (= DRAGON.usr.shared@0 0))
          (= DRAGON.usr.exclusive@0 0))
         (= DRAGON.usr.shared_dirty@0 0))))
      (let
       ((X6 (>= DRAGON.usr.shared@0 1)))
       (let
        ((X7 (>= (+ DRAGON.usr.shared_dirty@0 DRAGON.usr.shared@0) 2)))
        (let
         ((X8
           (and (= DRAGON.usr.shared_dirty@0 0) (= DRAGON.usr.shared@0 1))))
         (let
          ((X9 (>= DRAGON.usr.shared_dirty@0 1)))
          (let
           ((X10
             (and (= DRAGON.usr.shared_dirty@0 1) (= DRAGON.usr.shared@0 0))))
           (let
            ((X11 (>= DRAGON.usr.dirty@0 1)))
            (let
             ((X12
               (and
                (and
                 (and
                  (and (>= DRAGON.usr.invalid@0 1) (= DRAGON.usr.dirty@0 0))
                  (= DRAGON.usr.shared@0 0))
                 (= DRAGON.usr.exclusive@0 0))
                (= DRAGON.usr.shared_dirty@0 0))))
             (and
              (=
               DRAGON.usr.exclusive@1
               (ite
                DRAGON.usr.e01@1
                (ite X5 (+ DRAGON.usr.exclusive@0 1) DRAGON.usr.exclusive@0)
                (ite
                 DRAGON.usr.e02@1
                 (ite X4 0 DRAGON.usr.exclusive@0)
                 (ite
                  DRAGON.usr.e03@1
                  (ite
                   X3
                   (- DRAGON.usr.exclusive@0 1)
                   DRAGON.usr.exclusive@0)
                  (ite
                   DRAGON.usr.e08@1
                   (ite X2 0 DRAGON.usr.exclusive@0)
                   (ite
                    DRAGON.usr.e12@1
                    (ite
                     X1
                     (- DRAGON.usr.exclusive@0 1)
                     DRAGON.usr.exclusive@0)
                    DRAGON.usr.exclusive@0))))))
              (=
               DRAGON.usr.shared@1
               (ite
                DRAGON.usr.e02@1
                (ite
                 X4
                 (+ (+ DRAGON.usr.shared@0 DRAGON.usr.exclusive@0) 1)
                 DRAGON.usr.shared@0)
                (ite
                 DRAGON.usr.e05@1
                 (ite X8 0 DRAGON.usr.shared@0)
                 (ite
                  DRAGON.usr.e06@1
                  (ite
                   X7
                   (- (+ DRAGON.usr.shared@0 DRAGON.usr.shared_dirty@0) 1)
                   DRAGON.usr.shared@0)
                  (ite
                   DRAGON.usr.e08@1
                   (ite
                    X2
                    (+
                     (+
                      (+ DRAGON.usr.shared@0 DRAGON.usr.exclusive@0)
                      DRAGON.usr.shared_dirty@0)
                     DRAGON.usr.dirty@0)
                    DRAGON.usr.shared@0)
                   (ite
                    DRAGON.usr.e10@1
                    (ite X6 (- DRAGON.usr.shared@0 1) DRAGON.usr.shared@0)
                    DRAGON.usr.shared@0))))))
              (=
               DRAGON.usr.shared_dirty@1
               (ite
                DRAGON.usr.e02@1
                (ite
                 X4
                 (+ DRAGON.usr.shared_dirty@0 DRAGON.usr.dirty@0)
                 DRAGON.usr.shared_dirty@0)
                (ite
                 DRAGON.usr.e04@1
                 (ite X10 0 DRAGON.usr.shared_dirty@0)
                 (ite
                  DRAGON.usr.e06@1
                  (ite X7 1 DRAGON.usr.shared_dirty@0)
                  (ite
                   DRAGON.usr.e08@1
                   (ite X2 1 DRAGON.usr.shared_dirty@0)
                   (ite
                    DRAGON.usr.e11@1
                    (ite
                     X9
                     (- DRAGON.usr.shared_dirty@0 1)
                     DRAGON.usr.shared_dirty@0)
                    DRAGON.usr.shared_dirty@0))))))
              (=
               DRAGON.usr.dirty@1
               (ite
                DRAGON.usr.e02@1
                (ite X4 0 DRAGON.usr.dirty@0)
                (ite
                 DRAGON.usr.e03@1
                 (ite X3 (+ DRAGON.usr.dirty@0 1) DRAGON.usr.dirty@0)
                 (ite
                  DRAGON.usr.e04@1
                  (ite X10 (+ DRAGON.usr.dirty@0 1) DRAGON.usr.dirty@0)
                  (ite
                   DRAGON.usr.e05@1
                   (ite X8 (+ DRAGON.usr.dirty@0 1) DRAGON.usr.dirty@0)
                   (ite
                    DRAGON.usr.e07@1
                    (ite X12 (+ DRAGON.usr.dirty@0 1) DRAGON.usr.dirty@0)
                    (ite
                     DRAGON.usr.e08@1
                     (ite X2 0 DRAGON.usr.dirty@0)
                     (ite
                      DRAGON.usr.e09@1
                      (ite X11 (- DRAGON.usr.dirty@0 1) DRAGON.usr.dirty@0)
                      DRAGON.usr.dirty@0))))))))
              (=
               DRAGON.usr.invalid@1
               (ite
                DRAGON.usr.e01@1
                (ite X5 (- DRAGON.usr.invalid@0 1) DRAGON.usr.invalid@0)
                (ite
                 DRAGON.usr.e02@1
                 (ite X4 (- DRAGON.usr.invalid@0 1) DRAGON.usr.invalid@0)
                 (ite
                  DRAGON.usr.e07@1
                  (ite X12 (- DRAGON.usr.invalid@0 1) DRAGON.usr.invalid@0)
                  (ite
                   DRAGON.usr.e08@1
                   (ite X2 (- DRAGON.usr.invalid@0 1) DRAGON.usr.invalid@0)
                   (ite
                    DRAGON.usr.e09@1
                    (ite X11 (+ DRAGON.usr.invalid@0 1) DRAGON.usr.invalid@0)
                    (ite
                     DRAGON.usr.e10@1
                     (ite X6 (+ DRAGON.usr.invalid@0 1) DRAGON.usr.invalid@0)
                     (ite
                      DRAGON.usr.e11@1
                      (ite
                       X9
                       (+ DRAGON.usr.invalid@0 1)
                       DRAGON.usr.invalid@0)
                      (ite
                       DRAGON.usr.e12@1
                       (ite
                        X1
                        (+ DRAGON.usr.invalid@0 1)
                        DRAGON.usr.invalid@0)
                       DRAGON.usr.invalid@0)))))))))
              (= DRAGON.impl.usr.mem_init@1 DRAGON.impl.usr.mem_init@0)
              (=
               DRAGON.usr.erreur@1
               (ite (>= DRAGON.usr.exclusive@1 2) true false))
              (not DRAGON.res.init_flag@1)))))))))))))))
;; Success 

(define-fun
 __node_init_excludes12_0
 ((excludes12.usr.X1@0 Bool)
  (excludes12.usr.X2@0 Bool)
  (excludes12.usr.X3@0 Bool)
  (excludes12.usr.X4@0 Bool)
  (excludes12.usr.X5@0 Bool)
  (excludes12.usr.X6@0 Bool)
  (excludes12.usr.X7@0 Bool)
  (excludes12.usr.X8@0 Bool)
  (excludes12.usr.X9@0 Bool)
  (excludes12.usr.X10@0 Bool)
  (excludes12.usr.X11@0 Bool)
  (excludes12.usr.X12@0 Bool)
  (excludes12.usr.excludes@0 Bool)
  (excludes12.res.init_flag@0 Bool))
 Bool
 (and
  (=
   excludes12.usr.excludes@0
   (or
    (or
     (or
      (or
       (or
        (or
         (or
          (or
           (or
            (or
             (or
              (or
               (and
                (and
                 (and
                  (and
                   (and
                    (and
                     (and
                      (and
                       (and
                        (and
                         (and
                          (not excludes12.usr.X1@0)
                          (not excludes12.usr.X2@0))
                         (not excludes12.usr.X3@0))
                        (not excludes12.usr.X4@0))
                       (not excludes12.usr.X5@0))
                      (not excludes12.usr.X6@0))
                     (not excludes12.usr.X7@0))
                    (not excludes12.usr.X8@0))
                   (not excludes12.usr.X9@0))
                  (not excludes12.usr.X10@0))
                 (not excludes12.usr.X11@0))
                (not excludes12.usr.X12@0))
               (and
                (and
                 (and
                  (and
                   (and
                    (and
                     (and
                      (and
                       (and
                        (and
                         (and excludes12.usr.X1@0 (not excludes12.usr.X2@0))
                         (not excludes12.usr.X3@0))
                        (not excludes12.usr.X4@0))
                       (not excludes12.usr.X5@0))
                      (not excludes12.usr.X6@0))
                     (not excludes12.usr.X7@0))
                    (not excludes12.usr.X8@0))
                   (not excludes12.usr.X9@0))
                  (not excludes12.usr.X10@0))
                 (not excludes12.usr.X11@0))
                (not excludes12.usr.X12@0)))
              (and
               (and
                (and
                 (and
                  (and
                   (and
                    (and
                     (and
                      (and
                       (and
                        (and (not excludes12.usr.X1@0) excludes12.usr.X2@0)
                        (not excludes12.usr.X3@0))
                       (not excludes12.usr.X4@0))
                      (not excludes12.usr.X5@0))
                     (not excludes12.usr.X6@0))
                    (not excludes12.usr.X7@0))
                   (not excludes12.usr.X8@0))
                  (not excludes12.usr.X9@0))
                 (not excludes12.usr.X10@0))
                (not excludes12.usr.X11@0))
               (not excludes12.usr.X12@0)))
             (and
              (and
               (and
                (and
                 (and
                  (and
                   (and
                    (and
                     (and
                      (and
                       (and
                        (not excludes12.usr.X1@0)
                        (not excludes12.usr.X2@0))
                       excludes12.usr.X3@0)
                      (not excludes12.usr.X4@0))
                     (not excludes12.usr.X5@0))
                    (not excludes12.usr.X6@0))
                   (not excludes12.usr.X7@0))
                  (not excludes12.usr.X8@0))
                 (not excludes12.usr.X9@0))
                (not excludes12.usr.X10@0))
               (not excludes12.usr.X11@0))
              (not excludes12.usr.X12@0)))
            (and
             (and
              (and
               (and
                (and
                 (and
                  (and
                   (and
                    (and
                     (and
                      (and
                       (not excludes12.usr.X1@0)
                       (not excludes12.usr.X2@0))
                      (not excludes12.usr.X3@0))
                     excludes12.usr.X4@0)
                    (not excludes12.usr.X5@0))
                   (not excludes12.usr.X6@0))
                  (not excludes12.usr.X7@0))
                 (not excludes12.usr.X8@0))
                (not excludes12.usr.X9@0))
               (not excludes12.usr.X10@0))
              (not excludes12.usr.X11@0))
             (not excludes12.usr.X12@0)))
           (and
            (and
             (and
              (and
               (and
                (and
                 (and
                  (and
                   (and
                    (and
                     (and
                      (not excludes12.usr.X1@0)
                      (not excludes12.usr.X2@0))
                     (not excludes12.usr.X3@0))
                    (not excludes12.usr.X4@0))
                   excludes12.usr.X5@0)
                  (not excludes12.usr.X6@0))
                 (not excludes12.usr.X7@0))
                (not excludes12.usr.X8@0))
               (not excludes12.usr.X9@0))
              (not excludes12.usr.X10@0))
             (not excludes12.usr.X11@0))
            (not excludes12.usr.X12@0)))
          (and
           (and
            (and
             (and
              (and
               (and
                (and
                 (and
                  (and
                   (and
                    (and (not excludes12.usr.X1@0) (not excludes12.usr.X2@0))
                    (not excludes12.usr.X3@0))
                   (not excludes12.usr.X4@0))
                  (not excludes12.usr.X5@0))
                 excludes12.usr.X6@0)
                (not excludes12.usr.X7@0))
               (not excludes12.usr.X8@0))
              (not excludes12.usr.X9@0))
             (not excludes12.usr.X10@0))
            (not excludes12.usr.X11@0))
           (not excludes12.usr.X12@0)))
         (and
          (and
           (and
            (and
             (and
              (and
               (and
                (and
                 (and
                  (and
                   (and (not excludes12.usr.X1@0) (not excludes12.usr.X2@0))
                   (not excludes12.usr.X3@0))
                  (not excludes12.usr.X4@0))
                 (not excludes12.usr.X5@0))
                (not excludes12.usr.X6@0))
               excludes12.usr.X7@0)
              (not excludes12.usr.X8@0))
             (not excludes12.usr.X9@0))
            (not excludes12.usr.X10@0))
           (not excludes12.usr.X11@0))
          (not excludes12.usr.X12@0)))
        (and
         (and
          (and
           (and
            (and
             (and
              (and
               (and
                (and
                 (and
                  (and (not excludes12.usr.X1@0) (not excludes12.usr.X2@0))
                  (not excludes12.usr.X3@0))
                 (not excludes12.usr.X4@0))
                (not excludes12.usr.X5@0))
               (not excludes12.usr.X6@0))
              (not excludes12.usr.X7@0))
             excludes12.usr.X8@0)
            (not excludes12.usr.X9@0))
           (not excludes12.usr.X10@0))
          (not excludes12.usr.X11@0))
         (not excludes12.usr.X12@0)))
       (and
        (and
         (and
          (and
           (and
            (and
             (and
              (and
               (and
                (and
                 (and (not excludes12.usr.X1@0) (not excludes12.usr.X2@0))
                 (not excludes12.usr.X3@0))
                (not excludes12.usr.X4@0))
               (not excludes12.usr.X5@0))
              (not excludes12.usr.X6@0))
             (not excludes12.usr.X7@0))
            (not excludes12.usr.X8@0))
           excludes12.usr.X9@0)
          (not excludes12.usr.X10@0))
         (not excludes12.usr.X11@0))
        (not excludes12.usr.X12@0)))
      (and
       (and
        (and
         (and
          (and
           (and
            (and
             (and
              (and
               (and
                (and (not excludes12.usr.X1@0) (not excludes12.usr.X2@0))
                (not excludes12.usr.X3@0))
               (not excludes12.usr.X4@0))
              (not excludes12.usr.X5@0))
             (not excludes12.usr.X6@0))
            (not excludes12.usr.X7@0))
           (not excludes12.usr.X8@0))
          (not excludes12.usr.X9@0))
         excludes12.usr.X10@0)
        (not excludes12.usr.X11@0))
       (not excludes12.usr.X12@0)))
     (and
      (and
       (and
        (and
         (and
          (and
           (and
            (and
             (and
              (and
               (and (not excludes12.usr.X1@0) (not excludes12.usr.X2@0))
               (not excludes12.usr.X3@0))
              (not excludes12.usr.X4@0))
             (not excludes12.usr.X5@0))
            (not excludes12.usr.X6@0))
           (not excludes12.usr.X7@0))
          (not excludes12.usr.X8@0))
         (not excludes12.usr.X9@0))
        (not excludes12.usr.X10@0))
       excludes12.usr.X11@0)
      (not excludes12.usr.X12@0)))
    (and
     (and
      (and
       (and
        (and
         (and
          (and
           (and
            (and
             (and
              (and (not excludes12.usr.X1@0) (not excludes12.usr.X2@0))
              (not excludes12.usr.X3@0))
             (not excludes12.usr.X4@0))
            (not excludes12.usr.X5@0))
           (not excludes12.usr.X6@0))
          (not excludes12.usr.X7@0))
         (not excludes12.usr.X8@0))
        (not excludes12.usr.X9@0))
       (not excludes12.usr.X10@0))
      (not excludes12.usr.X11@0))
     excludes12.usr.X12@0)))
  excludes12.res.init_flag@0))
;; Success 

(define-fun
 __node_trans_excludes12_0
 ((excludes12.usr.X1@1 Bool)
  (excludes12.usr.X2@1 Bool)
  (excludes12.usr.X3@1 Bool)
  (excludes12.usr.X4@1 Bool)
  (excludes12.usr.X5@1 Bool)
  (excludes12.usr.X6@1 Bool)
  (excludes12.usr.X7@1 Bool)
  (excludes12.usr.X8@1 Bool)
  (excludes12.usr.X9@1 Bool)
  (excludes12.usr.X10@1 Bool)
  (excludes12.usr.X11@1 Bool)
  (excludes12.usr.X12@1 Bool)
  (excludes12.usr.excludes@1 Bool)
  (excludes12.res.init_flag@1 Bool)
  (excludes12.usr.X1@0 Bool)
  (excludes12.usr.X2@0 Bool)
  (excludes12.usr.X3@0 Bool)
  (excludes12.usr.X4@0 Bool)
  (excludes12.usr.X5@0 Bool)
  (excludes12.usr.X6@0 Bool)
  (excludes12.usr.X7@0 Bool)
  (excludes12.usr.X8@0 Bool)
  (excludes12.usr.X9@0 Bool)
  (excludes12.usr.X10@0 Bool)
  (excludes12.usr.X11@0 Bool)
  (excludes12.usr.X12@0 Bool)
  (excludes12.usr.excludes@0 Bool)
  (excludes12.res.init_flag@0 Bool))
 Bool
 (and
  (=
   excludes12.usr.excludes@1
   (or
    (or
     (or
      (or
       (or
        (or
         (or
          (or
           (or
            (or
             (or
              (or
               (and
                (and
                 (and
                  (and
                   (and
                    (and
                     (and
                      (and
                       (and
                        (and
                         (and
                          (not excludes12.usr.X1@1)
                          (not excludes12.usr.X2@1))
                         (not excludes12.usr.X3@1))
                        (not excludes12.usr.X4@1))
                       (not excludes12.usr.X5@1))
                      (not excludes12.usr.X6@1))
                     (not excludes12.usr.X7@1))
                    (not excludes12.usr.X8@1))
                   (not excludes12.usr.X9@1))
                  (not excludes12.usr.X10@1))
                 (not excludes12.usr.X11@1))
                (not excludes12.usr.X12@1))
               (and
                (and
                 (and
                  (and
                   (and
                    (and
                     (and
                      (and
                       (and
                        (and
                         (and excludes12.usr.X1@1 (not excludes12.usr.X2@1))
                         (not excludes12.usr.X3@1))
                        (not excludes12.usr.X4@1))
                       (not excludes12.usr.X5@1))
                      (not excludes12.usr.X6@1))
                     (not excludes12.usr.X7@1))
                    (not excludes12.usr.X8@1))
                   (not excludes12.usr.X9@1))
                  (not excludes12.usr.X10@1))
                 (not excludes12.usr.X11@1))
                (not excludes12.usr.X12@1)))
              (and
               (and
                (and
                 (and
                  (and
                   (and
                    (and
                     (and
                      (and
                       (and
                        (and (not excludes12.usr.X1@1) excludes12.usr.X2@1)
                        (not excludes12.usr.X3@1))
                       (not excludes12.usr.X4@1))
                      (not excludes12.usr.X5@1))
                     (not excludes12.usr.X6@1))
                    (not excludes12.usr.X7@1))
                   (not excludes12.usr.X8@1))
                  (not excludes12.usr.X9@1))
                 (not excludes12.usr.X10@1))
                (not excludes12.usr.X11@1))
               (not excludes12.usr.X12@1)))
             (and
              (and
               (and
                (and
                 (and
                  (and
                   (and
                    (and
                     (and
                      (and
                       (and
                        (not excludes12.usr.X1@1)
                        (not excludes12.usr.X2@1))
                       excludes12.usr.X3@1)
                      (not excludes12.usr.X4@1))
                     (not excludes12.usr.X5@1))
                    (not excludes12.usr.X6@1))
                   (not excludes12.usr.X7@1))
                  (not excludes12.usr.X8@1))
                 (not excludes12.usr.X9@1))
                (not excludes12.usr.X10@1))
               (not excludes12.usr.X11@1))
              (not excludes12.usr.X12@1)))
            (and
             (and
              (and
               (and
                (and
                 (and
                  (and
                   (and
                    (and
                     (and
                      (and
                       (not excludes12.usr.X1@1)
                       (not excludes12.usr.X2@1))
                      (not excludes12.usr.X3@1))
                     excludes12.usr.X4@1)
                    (not excludes12.usr.X5@1))
                   (not excludes12.usr.X6@1))
                  (not excludes12.usr.X7@1))
                 (not excludes12.usr.X8@1))
                (not excludes12.usr.X9@1))
               (not excludes12.usr.X10@1))
              (not excludes12.usr.X11@1))
             (not excludes12.usr.X12@1)))
           (and
            (and
             (and
              (and
               (and
                (and
                 (and
                  (and
                   (and
                    (and
                     (and
                      (not excludes12.usr.X1@1)
                      (not excludes12.usr.X2@1))
                     (not excludes12.usr.X3@1))
                    (not excludes12.usr.X4@1))
                   excludes12.usr.X5@1)
                  (not excludes12.usr.X6@1))
                 (not excludes12.usr.X7@1))
                (not excludes12.usr.X8@1))
               (not excludes12.usr.X9@1))
              (not excludes12.usr.X10@1))
             (not excludes12.usr.X11@1))
            (not excludes12.usr.X12@1)))
          (and
           (and
            (and
             (and
              (and
               (and
                (and
                 (and
                  (and
                   (and
                    (and (not excludes12.usr.X1@1) (not excludes12.usr.X2@1))
                    (not excludes12.usr.X3@1))
                   (not excludes12.usr.X4@1))
                  (not excludes12.usr.X5@1))
                 excludes12.usr.X6@1)
                (not excludes12.usr.X7@1))
               (not excludes12.usr.X8@1))
              (not excludes12.usr.X9@1))
             (not excludes12.usr.X10@1))
            (not excludes12.usr.X11@1))
           (not excludes12.usr.X12@1)))
         (and
          (and
           (and
            (and
             (and
              (and
               (and
                (and
                 (and
                  (and
                   (and (not excludes12.usr.X1@1) (not excludes12.usr.X2@1))
                   (not excludes12.usr.X3@1))
                  (not excludes12.usr.X4@1))
                 (not excludes12.usr.X5@1))
                (not excludes12.usr.X6@1))
               excludes12.usr.X7@1)
              (not excludes12.usr.X8@1))
             (not excludes12.usr.X9@1))
            (not excludes12.usr.X10@1))
           (not excludes12.usr.X11@1))
          (not excludes12.usr.X12@1)))
        (and
         (and
          (and
           (and
            (and
             (and
              (and
               (and
                (and
                 (and
                  (and (not excludes12.usr.X1@1) (not excludes12.usr.X2@1))
                  (not excludes12.usr.X3@1))
                 (not excludes12.usr.X4@1))
                (not excludes12.usr.X5@1))
               (not excludes12.usr.X6@1))
              (not excludes12.usr.X7@1))
             excludes12.usr.X8@1)
            (not excludes12.usr.X9@1))
           (not excludes12.usr.X10@1))
          (not excludes12.usr.X11@1))
         (not excludes12.usr.X12@1)))
       (and
        (and
         (and
          (and
           (and
            (and
             (and
              (and
               (and
                (and
                 (and (not excludes12.usr.X1@1) (not excludes12.usr.X2@1))
                 (not excludes12.usr.X3@1))
                (not excludes12.usr.X4@1))
               (not excludes12.usr.X5@1))
              (not excludes12.usr.X6@1))
             (not excludes12.usr.X7@1))
            (not excludes12.usr.X8@1))
           excludes12.usr.X9@1)
          (not excludes12.usr.X10@1))
         (not excludes12.usr.X11@1))
        (not excludes12.usr.X12@1)))
      (and
       (and
        (and
         (and
          (and
           (and
            (and
             (and
              (and
               (and
                (and (not excludes12.usr.X1@1) (not excludes12.usr.X2@1))
                (not excludes12.usr.X3@1))
               (not excludes12.usr.X4@1))
              (not excludes12.usr.X5@1))
             (not excludes12.usr.X6@1))
            (not excludes12.usr.X7@1))
           (not excludes12.usr.X8@1))
          (not excludes12.usr.X9@1))
         excludes12.usr.X10@1)
        (not excludes12.usr.X11@1))
       (not excludes12.usr.X12@1)))
     (and
      (and
       (and
        (and
         (and
          (and
           (and
            (and
             (and
              (and
               (and (not excludes12.usr.X1@1) (not excludes12.usr.X2@1))
               (not excludes12.usr.X3@1))
              (not excludes12.usr.X4@1))
             (not excludes12.usr.X5@1))
            (not excludes12.usr.X6@1))
           (not excludes12.usr.X7@1))
          (not excludes12.usr.X8@1))
         (not excludes12.usr.X9@1))
        (not excludes12.usr.X10@1))
       excludes12.usr.X11@1)
      (not excludes12.usr.X12@1)))
    (and
     (and
      (and
       (and
        (and
         (and
          (and
           (and
            (and
             (and
              (and (not excludes12.usr.X1@1) (not excludes12.usr.X2@1))
              (not excludes12.usr.X3@1))
             (not excludes12.usr.X4@1))
            (not excludes12.usr.X5@1))
           (not excludes12.usr.X6@1))
          (not excludes12.usr.X7@1))
         (not excludes12.usr.X8@1))
        (not excludes12.usr.X9@1))
       (not excludes12.usr.X10@1))
      (not excludes12.usr.X11@1))
     excludes12.usr.X12@1)))
  (not excludes12.res.init_flag@1)))
;; Success 

(define-fun
 __node_init_First_0
 ((First.usr.X@0 Int) (First.usr.First@0 Int) (First.res.init_flag@0 Bool))
 Bool
 (and (= First.usr.First@0 First.usr.X@0) First.res.init_flag@0))
;; Success 

(define-fun
 __node_trans_First_0
 ((First.usr.X@1 Int)
  (First.usr.First@1 Int)
  (First.res.init_flag@1 Bool)
  (First.usr.X@0 Int)
  (First.usr.First@0 Int)
  (First.res.init_flag@0 Bool))
 Bool
 (and (= First.usr.First@1 First.usr.First@0) (not First.res.init_flag@1)))
;; Success 

(define-fun
 __node_init_Sofar_0
 ((Sofar.usr.X@0 Bool) (Sofar.usr.Sofar@0 Bool) (Sofar.res.init_flag@0 Bool))
 Bool
 (and (= Sofar.usr.Sofar@0 Sofar.usr.X@0) Sofar.res.init_flag@0))
;; Success 

(define-fun
 __node_trans_Sofar_0
 ((Sofar.usr.X@1 Bool)
  (Sofar.usr.Sofar@1 Bool)
  (Sofar.res.init_flag@1 Bool)
  (Sofar.usr.X@0 Bool)
  (Sofar.usr.Sofar@0 Bool)
  (Sofar.res.init_flag@0 Bool))
 Bool
 (and
  (= Sofar.usr.Sofar@1 (and Sofar.usr.X@1 Sofar.usr.Sofar@0))
  (not Sofar.res.init_flag@1)))
;; Success 

(declare-fun f92@0 () Bool)
;; Success 

(declare-fun f93@0 () Bool)
;; Success 

(declare-fun f94@0 () Bool)
;; Success 

(declare-fun f95@0 () Bool)
;; Success 

(declare-fun f96@0 () Bool)
;; Success 

(declare-fun f97@0 () Bool)
;; Success 

(declare-fun f98@0 () Bool)
;; Success 

(declare-fun f99@0 () Bool)
;; Success 

(declare-fun f100@0 () Bool)
;; Success 

(declare-fun f101@0 () Bool)
;; Success 

(declare-fun f102@0 () Bool)
;; Success 

(declare-fun f103@0 () Bool)
;; Success 

(declare-fun f104@0 () Int)
;; Success 

(declare-fun f105@0 () Bool)
;; Success 

(declare-fun f90@0 () Bool)
;; Success 

(declare-fun f144@0 () Int)
;; Success 

(declare-fun f145@0 () Int)
;; Success 

(declare-fun f146@0 () Int)
;; Success 

(declare-fun f147@0 () Int)
;; Success 

(declare-fun f148@0 () Int)
;; Success 

(declare-fun f149@0 () Bool)
;; Success 

(declare-fun f150@0 () Bool)
;; Success 

(declare-fun f151@0 () Bool)
;; Success 

(declare-fun f152@0 () Bool)
;; Success 

(declare-fun f153@0 () Int)
;; Success 

(declare-fun f158@0 () Bool)
;; Success 

(declare-fun f157@0 () Int)
;; Success 

(declare-fun f156@0 () Bool)
;; Success 

(declare-fun f155@0 () Bool)
;; Success 

(declare-fun f154@0 () Bool)
;; Success 

(assert
 (let
 ((X1 f152@0))
 (let
  ((X2 f148@0))
  (and
   (= f151@0 (and f150@0 (> f104@0 0)))
   (= f105@0 (=> X1 (<= X2 f153@0)))
   (__node_init_DRAGON_0
    f92@0
    f93@0
    f94@0
    f95@0
    f96@0
    f97@0
    f98@0
    f99@0
    f100@0
    f101@0
    f102@0
    f103@0
    f104@0
    f143
    f142
    f141
    f140
    f139
    f138
    f137
    f136
    f135
    f134
    f133
    f132
    f131
    f130
    f129
    f128
    f127
    f126
    f125
    f124
    f123
    f122
    f121
    f120
    f119
    f118
    f117
    f116
    f115
    f114
    f113
    f144@0
    f145@0
    f146@0
    f147@0
    f148@0
    f149@0
    f158@0
    f157@0)
   (__node_init_Sofar_0 f151@0 f152@0 f156@0)
   (__node_init_excludes12_0
    f92@0
    f93@0
    f94@0
    f95@0
    f96@0
    f97@0
    f98@0
    f99@0
    f100@0
    f101@0
    f102@0
    f103@0
    f150@0
    f155@0)
   (__node_init_First_0 f104@0 f153@0 f154@0)
   f90@0))))
;; Success 

;; Initial state satisfiability check. 

(check-sat)
;; Sat 

(assert true)
;; Success 

;; 0 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_2 () Bool)
;; Success 

(assert (=> %fresh_actlit_2 (not f105@0)))
;; Success 

;; Looking for falsification at 0. 

(push 1)
;; Success 

(assert (! %fresh_actlit_2 :named c0))
;; Success 

(assert (! %fresh_actlit_1 :named c1))
;; Success 

(check-sat)
