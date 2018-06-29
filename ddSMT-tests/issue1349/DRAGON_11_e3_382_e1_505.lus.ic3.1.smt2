(set-option :print-success true)
;; Success 

(set-option :produce-assignments true)
;; Success 

(set-option :produce-unsat-cores true)
;; Success 

(set-logic ALL)
;; Success 

(declare-sort FArray 2)
;; Success 

;; main: Declare state variables and define predicates 

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
        (+
         (+ (- DRAGON.res.nondet_8 DRAGON.res.nondet_7) 1)
         DRAGON.res.nondet_6)
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
           (+ (- DRAGON.usr.dirty@0 DRAGON.usr.shared@0) 1)
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

(declare-fun f92@1 () Bool)
;; Success 

(declare-fun f93@1 () Bool)
;; Success 

(declare-fun f94@1 () Bool)
;; Success 

(declare-fun f95@1 () Bool)
;; Success 

(declare-fun f96@1 () Bool)
;; Success 

(declare-fun f97@1 () Bool)
;; Success 

(declare-fun f98@1 () Bool)
;; Success 

(declare-fun f99@1 () Bool)
;; Success 

(declare-fun f100@1 () Bool)
;; Success 

(declare-fun f101@1 () Bool)
;; Success 

(declare-fun f102@1 () Bool)
;; Success 

(declare-fun f103@1 () Bool)
;; Success 

(declare-fun f104@1 () Int)
;; Success 

(declare-fun f105@1 () Bool)
;; Success 

(declare-fun f90@1 () Bool)
;; Success 

(declare-fun f144@1 () Int)
;; Success 

(declare-fun f145@1 () Int)
;; Success 

(declare-fun f146@1 () Int)
;; Success 

(declare-fun f147@1 () Int)
;; Success 

(declare-fun f148@1 () Int)
;; Success 

(declare-fun f149@1 () Bool)
;; Success 

(declare-fun f150@1 () Bool)
;; Success 

(declare-fun f151@1 () Bool)
;; Success 

(declare-fun f152@1 () Bool)
;; Success 

(declare-fun f153@1 () Int)
;; Success 

(declare-fun f158@1 () Bool)
;; Success 

(declare-fun f157@1 () Int)
;; Success 

(declare-fun f156@1 () Bool)
;; Success 

(declare-fun f155@1 () Bool)
;; Success 

(declare-fun f154@1 () Bool)
;; Success 

(declare-fun __ic3_frame_0 () Bool)
;; Success 

;; main: Assert guarded initial state 

(assert
 (=>
 __ic3_frame_0
 (let
  ((X1 f152@0))
  (let
   ((X2 f145@0))
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
    f90@0)))))
;; Success 

;; main: Assert unguarded transition relation 

(assert
 (let
 ((X1 f152@1))
 (let
  ((X2 f145@1))
  (and
   (= f151@1 (and f150@1 (> f104@1 0)))
   (= f105@1 (=> X1 (<= X2 f153@1)))
   (__node_trans_DRAGON_0
    f92@1
    f93@1
    f94@1
    f95@1
    f96@1
    f97@1
    f98@1
    f99@1
    f100@1
    f101@1
    f102@1
    f103@1
    f104@1
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
    f144@1
    f145@1
    f146@1
    f147@1
    f148@1
    f149@1
    f158@1
    f157@1
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
    f144@0
    f145@0
    f146@0
    f147@0
    f148@0
    f149@0
    f158@0
    f157@0)
   (__node_trans_Sofar_0 f151@1 f152@1 f156@1 f151@0 f152@0 f156@0)
   (__node_trans_excludes12_0
    f92@1
    f93@1
    f94@1
    f95@1
    f96@1
    f97@1
    f98@1
    f99@1
    f100@1
    f101@1
    f102@1
    f103@1
    f150@1
    f155@1
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
   (__node_trans_First_0 f104@1 f153@1 f154@1 f104@0 f153@0 f154@0)
   (not f90@1)))))
;; Success 

;; bmc_checks: Check for zero-step counterexample 

(declare-fun __ic3_clause_1_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_1_n0_0 (not f105@0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c0))
;; Success 

(assert (! __ic3_clause_1_n0_0 :named c1))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; bmc_checks: Check for one-step counterexample 

(declare-fun __ic3_clause_2_n1_0 () Bool)
;; Success 

(assert (=> __ic3_clause_2_n1_0 (not f105@1)))
;; Success 

(declare-fun __ic3_clause_2_p0 () Bool)
;; Success 

(assert (=> __ic3_clause_2_p0 f105@0))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2))
;; Success 

(assert (! __ic3_clause_2_p0 :named c3))
;; Success 

(assert (! __ic3_clause_2_n1_0 :named c4))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: frames k to 1 
;;  
;; Frame: 
;;  

;; check_frames: Does R_1 |= P hold? 

(declare-fun __ic3_clause_3_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_3_n0_0 (not f105@0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c5))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does R_0 & T |= R_1 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 0 

(declare-fun __ic3_check_frames_0 () Bool)
;; Success 

(assert (=> __ic3_check_frames_0 (not f105@1)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_0 :named c6))
;; Success 

(assert (! __ic3_frame_0 :named c7))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_0))
;; Success 

;; block: Check if all successors of frontier R_1 are safe. 

(declare-fun __ic3_clause_3_n1_0 () Bool)
;; Success 

(assert (=> __ic3_clause_3_n1_0 (not f105@1)))
;; Success 

(declare-fun __ic3_clause_3_p0 () Bool)
;; Success 

(assert (=> __ic3_clause_3_p0 f105@0))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c8))
;; Success 

(assert (! __ic3_clause_3_n1_0 :named c9))
;; Success 

(check-sat)
;; Sat 

(get-value
 (f154@1
  f155@1
  f156@1
  f157@1
  f158@1
  f153@1
  f152@1
  f151@1
  f150@1
  f149@1
  f148@1
  f147@1
  f146@1
  f145@1
  f144@1
  f90@1
  f105@1
  f113
  f114
  f115
  f116
  f117
  f118
  f119
  f120
  f121
  f122
  f123
  f124
  f125
  f126
  f127
  f128
  f129
  f130
  f131
  f132
  f133
  f134
  f135
  f136
  f137
  f138
  f139
  f140
  f141
  f142
  f143
  f104@1
  f103@1
  f102@1
  f101@1
  f100@1
  f99@1
  f98@1
  f97@1
  f96@1
  f95@1
  f94@1
  f93@1
  f92@1
  f154@0
  f155@0
  f156@0
  f157@0
  f158@0
  f153@0
  f152@0
  f151@0
  f150@0
  f149@0
  f148@0
  f147@0
  f146@0
  f145@0
  f144@0
  f90@0
  f105@0
  f113
  f114
  f115
  f116
  f117
  f118
  f119
  f120
  f121
  f122
  f123
  f124
  f125
  f126
  f127
  f128
  f129
  f130
  f131
  f132
  f133
  f134
  f135
  f136
  f137
  f138
  f139
  f140
  f141
  f142
  f143
  f104@0
  f103@0
  f102@0
  f101@0
  f100@0
  f99@0
  f98@0
  f97@0
  f96@0
  f95@0
  f94@0
  f93@0
  f92@0))
;; ((f154@1 false) 
;;     (f155@1 false) 
;;     (f156@1 false) 
;;     (f157@1 1) 
;;     (f158@1 false) 
;;     (f153@1 (- 1)) 
;;     (f152@1 true) 
;;     (f151@1 true) 
;;     (f150@1 true) 
;;     (f149@1 false) 
;;     (f148@1 0) 
;;     (f147@1 0) 
;;     (f146@1 0) 
;;     (f145@1 0) 
;;     (f144@1 1) 
;;     (f90@1 false) 
;;     (f105@1 false) 
;;     (f113 0) 
;;     (f114 0) 
;;     (f115 0) 
;;     (f116 0) 
;;     (f117 0) 
;;     (f118 0) 
;;     (f119 0) 
;;     (f120 0) 
;;     (f121 0) 
;;     (f122 0) 
;;     (f123 0) 
;;     (f124 0) 
;;     (f125 0) 
;;     (f126 0) 
;;     (f127 0) 
;;     (f128 0) 
;;     (f129 0) 
;;     (f130 0) 
;;     (f131 0) 
;;     (f132 0) 
;;     (f133 0) 
;;     (f134 0) 
;;     (f135 0) 
;;     (f136 0) 
;;     (f137 0) 
;;     (f138 0) 
;;     (f139 0) 
;;     (f140 0) 
;;     (f141 0) 
;;     (f142 0) 
;;     (f143 0) 
;;     (f104@1 1) 
;;     (f103@1 false) 
;;     (f102@1 false) 
;;     (f101@1 false) 
;;     (f100@1 false) 
;;     (f99@1 false) 
;;     (f98@1 false) 
;;     (f97@1 false) 
;;     (f96@1 false) 
;;     (f95@1 false) 
;;     (f94@1 false) 
;;     (f93@1 false) 
;;     (f92@1 true) 
;;     (f154@0 false) 
;;     (f155@0 false) 
;;     (f156@0 false) 
;;     (f157@0 1) 
;;     (f158@0 false) 
;;     (f153@0 (- 1)) 
;;     (f152@0 true) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 1) 
;;     (f147@0 0) 
;;     (f146@0 0) 
;;     (f145@0 0) 
;;     (f144@0 0) 
;;     (f90@0 false) 
;;     (f105@0 true) 
;;     (f113 0) 
;;     (f114 0) 
;;     (f115 0) 
;;     (f116 0) 
;;     (f117 0) 
;;     (f118 0) 
;;     (f119 0) 
;;     (f120 0) 
;;     (f121 0) 
;;     (f122 0) 
;;     (f123 0) 
;;     (f124 0) 
;;     (f125 0) 
;;     (f126 0) 
;;     (f127 0) 
;;     (f128 0) 
;;     (f129 0) 
;;     (f130 0) 
;;     (f131 0) 
;;     (f132 0) 
;;     (f133 0) 
;;     (f134 0) 
;;     (f135 0) 
;;     (f136 0) 
;;     (f137 0) 
;;     (f138 0) 
;;     (f139 0) 
;;     (f140 0) 
;;     (f141 0) 
;;     (f142 0) 
;;     (f143 0) 
;;     (f104@0 0) 
;;     (f103@0 false) 
;;     (f102@0 false) 
;;     (f101@0 false) 
;;     (f100@0 false) 
;;     (f99@0 false) 
;;     (f98@0 false) 
;;     (f97@0 false) 
;;     (f96@0 false) 
;;     (f95@0 false) 
;;     (f94@0 false) 
;;     (f93@0 false) 
;;     (f92@0 false)) 

(pop 1)
;; Success 

;; New clause at frontier: 
;; #4 {(not top.usr.OK@0); 
;;     (not top.res.abs_8@0); 
;;     (not (> (+ (* 1 top.res.abs_1@0) (* (- 1) top.res.abs_9@0)) 0)); 
;;     (not (= (+ (* (- 1) top.res.abs_3@0) 0) 0)); 
;;     (not (= (+ (* (- 1) top.res.abs_1@0) 0) 0)); 
;;     (not (= (+ (* (- 1) top.res.abs_0@0) 0) 0)); 
;;     (not (= (+ (* (- 1) top.res.abs_2@0) 0) 0)); 
;;     (not (> (* 1 top.res.abs_4@0) 0)); 
;;     (not (> (+ (* (- 1) top.res.abs_0@0) 1) 0))} 

;; block: Is blocking clause relative inductive to R_0? 

(declare-fun __ic3_clause_4_n1_0 () Bool)
;; Success 

(assert (=> __ic3_clause_4_n1_0 f105@1))
;; Success 

(declare-fun __ic3_clause_4_n1_1 () Bool)
;; Success 

(assert (=> __ic3_clause_4_n1_1 f152@1))
;; Success 

(declare-fun __ic3_clause_4_n1_2 () Bool)
;; Success 

(assert (=> __ic3_clause_4_n1_2 (> (+ (* 1 f145@1) (* (- 1) f153@1)) 0)))
;; Success 

(declare-fun __ic3_clause_4_n1_3 () Bool)
;; Success 

(assert (=> __ic3_clause_4_n1_3 (= (+ (* (- 1) f147@1) 0) 0)))
;; Success 

(declare-fun __ic3_clause_4_n1_4 () Bool)
;; Success 

(assert (=> __ic3_clause_4_n1_4 (= (+ (* (- 1) f145@1) 0) 0)))
;; Success 

(declare-fun __ic3_clause_4_n1_5 () Bool)
;; Success 

(assert (=> __ic3_clause_4_n1_5 (= (+ (* (- 1) f144@1) 0) 0)))
;; Success 

(declare-fun __ic3_clause_4_n1_6 () Bool)
;; Success 

(assert (=> __ic3_clause_4_n1_6 (= (+ (* (- 1) f146@1) 0) 0)))
;; Success 

(declare-fun __ic3_clause_4_n1_7 () Bool)
;; Success 

(assert (=> __ic3_clause_4_n1_7 (> (* 1 f148@1) 0)))
;; Success 

(declare-fun __ic3_clause_4_n1_8 () Bool)
;; Success 

(assert (=> __ic3_clause_4_n1_8 (> (+ (* (- 1) f144@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_4_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_4_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (+ (* 1 f145@0) (* (- 1) f153@0)) 0))
  (not (= (+ (* (- 1) f147@0) 0) 0))
  (not (= (+ (* (- 1) f145@0) 0) 0))
  (not (= (+ (* (- 1) f144@0) 0) 0))
  (not (= (+ (* (- 1) f146@0) 0) 0))
  (not (> (* 1 f148@0) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0)))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_4_p0 :named c10))
;; Success 

(assert (! __ic3_clause_4_n1_0 :named c11))
;; Success 

(assert (! __ic3_clause_4_n1_1 :named c12))
;; Success 

(assert (! __ic3_clause_4_n1_2 :named c13))
;; Success 

(assert (! __ic3_clause_4_n1_3 :named c14))
;; Success 

(assert (! __ic3_clause_4_n1_4 :named c15))
;; Success 

(assert (! __ic3_clause_4_n1_5 :named c16))
;; Success 

(assert (! __ic3_clause_4_n1_6 :named c17))
;; Success 

(assert (! __ic3_clause_4_n1_7 :named c18))
;; Success 

(assert (! __ic3_clause_4_n1_8 :named c19))
;; Success 

(assert (! __ic3_frame_0 :named c20))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c11 c12 c13) 

(pop 1)
;; Success 

;; block: Check I |= C to get unsat core. 

(declare-fun __ic3_clause_4_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_4_n0_0 f105@0))
;; Success 

(declare-fun __ic3_clause_4_n0_1 () Bool)
;; Success 

(assert (=> __ic3_clause_4_n0_1 f152@0))
;; Success 

(declare-fun __ic3_clause_4_n0_2 () Bool)
;; Success 

(assert (=> __ic3_clause_4_n0_2 (> (+ (* 1 f145@0) (* (- 1) f153@0)) 0)))
;; Success 

(declare-fun __ic3_clause_4_n0_3 () Bool)
;; Success 

(assert (=> __ic3_clause_4_n0_3 (= (+ (* (- 1) f147@0) 0) 0)))
;; Success 

(declare-fun __ic3_clause_4_n0_4 () Bool)
;; Success 

(assert (=> __ic3_clause_4_n0_4 (= (+ (* (- 1) f145@0) 0) 0)))
;; Success 

(declare-fun __ic3_clause_4_n0_5 () Bool)
;; Success 

(assert (=> __ic3_clause_4_n0_5 (= (+ (* (- 1) f144@0) 0) 0)))
;; Success 

(declare-fun __ic3_clause_4_n0_6 () Bool)
;; Success 

(assert (=> __ic3_clause_4_n0_6 (= (+ (* (- 1) f146@0) 0) 0)))
;; Success 

(declare-fun __ic3_clause_4_n0_7 () Bool)
;; Success 

(assert (=> __ic3_clause_4_n0_7 (> (* 1 f148@0) 0)))
;; Success 

(declare-fun __ic3_clause_4_n0_8 () Bool)
;; Success 

(assert (=> __ic3_clause_4_n0_8 (> (+ (* (- 1) f144@0) 1) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c21))
;; Success 

(assert (! __ic3_clause_4_n0_0 :named c22))
;; Success 

(assert (! __ic3_clause_4_n0_1 :named c23))
;; Success 

(assert (! __ic3_clause_4_n0_2 :named c24))
;; Success 

(assert (! __ic3_clause_4_n0_3 :named c25))
;; Success 

(assert (! __ic3_clause_4_n0_4 :named c26))
;; Success 

(assert (! __ic3_clause_4_n0_5 :named c27))
;; Success 

(assert (! __ic3_clause_4_n0_6 :named c28))
;; Success 

(assert (! __ic3_clause_4_n0_7 :named c29))
;; Success 

(assert (! __ic3_clause_4_n0_8 :named c30))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c22 c23 c24 c21) 

(pop 1)
;; Success 

;; block: Reduced clause 
;; (or 
;;  (not top.usr.OK@0) 
;;  (not top.res.abs_8@0) 
;;  (not (> (+ (* 1 top.res.abs_1@0) (* (- 1) top.res.abs_9@0)) 0)) 
;;  (not (= (+ (* (- 1) top.res.abs_3@0) 0) 0)) 
;;  (not (= (+ (* (- 1) top.res.abs_1@0) 0) 0)) 
;;  (not (= (+ (* (- 1) top.res.abs_0@0) 0) 0)) 
;;  (not (= (+ (* (- 1) top.res.abs_2@0) 0) 0)) 
;;  (not (> (* 1 top.res.abs_4@0) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_0@0) 1) 0))) 
;; with unsat core to 
;; (or 
;;  (not (> (+ (* 1 top.res.abs_1@0) (* (- 1) top.res.abs_9@0)) 0)) 
;;  (not top.res.abs_8@0) 
;;  (not top.usr.OK@0)) 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 0 

(declare-fun __ic3_ind_gen_0 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_0 (not (or (not f152@1) (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 1 

(declare-fun __ic3_ind_gen_1 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_1 (not (or (not f152@0) (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 2 

(declare-fun __ic3_ind_gen_2 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_2 (or (not f152@0) (not f105@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_1 :named c31))
;; Success 

(assert (! __ic3_frame_0 :named c32))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_2))
;; Success 

(assert (not __ic3_ind_gen_1))
;; Success 

(assert (not __ic3_ind_gen_0))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 3 

(declare-fun __ic3_ind_gen_3 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_3
 (not (or (not (> (+ (* 1 f145@1) (* (- 1) f153@1)) 0)) (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 4 

(declare-fun __ic3_ind_gen_4 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_4
 (not (or (not (> (+ (* 1 f145@0) (* (- 1) f153@0)) 0)) (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 5 

(declare-fun __ic3_ind_gen_5 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_5
 (or (not (> (+ (* 1 f145@0) (* (- 1) f153@0)) 0)) (not f105@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_4 :named c33))
;; Success 

(assert (! __ic3_frame_0 :named c34))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_5))
;; Success 

(assert (not __ic3_ind_gen_4))
;; Success 

(assert (not __ic3_ind_gen_3))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 6 

(declare-fun __ic3_ind_gen_6 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_6
 (not (or (not f152@1) (not (> (+ (* 1 f145@1) (* (- 1) f153@1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 7 

(declare-fun __ic3_ind_gen_7 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_7
 (not (or (not f152@0) (not (> (+ (* 1 f145@0) (* (- 1) f153@0)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 8 

(declare-fun __ic3_ind_gen_8 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_8
 (or (not f152@0) (not (> (+ (* 1 f145@0) (* (- 1) f153@0)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_7 :named c35))
;; Success 

(assert (! __ic3_frame_0 :named c36))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c37))
;; Success 

(assert (! __ic3_ind_gen_8 :named c38))
;; Success 

(assert (! __ic3_ind_gen_6 :named c39))
;; Success 

(assert (! __ic3_frame_0 :named c40))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_8))
;; Success 

(assert (not __ic3_ind_gen_7))
;; Success 

(assert (not __ic3_ind_gen_6))
;; Success 

;; ind_generalize: Dropped 7 literals from clause. 

;; Deactivating activation literals for clause 

(assert (not __ic3_clause_4_p0))
;; Success 

(assert (not __ic3_clause_4_n0_0))
;; Success 

(assert (not __ic3_clause_4_n0_1))
;; Success 

(assert (not __ic3_clause_4_n0_2))
;; Success 

(assert (not __ic3_clause_4_n0_3))
;; Success 

(assert (not __ic3_clause_4_n0_4))
;; Success 

(assert (not __ic3_clause_4_n0_5))
;; Success 

(assert (not __ic3_clause_4_n0_6))
;; Success 

(assert (not __ic3_clause_4_n0_7))
;; Success 

(assert (not __ic3_clause_4_n0_8))
;; Success 

(assert (not __ic3_clause_4_n1_0))
;; Success 

(assert (not __ic3_clause_4_n1_1))
;; Success 

(assert (not __ic3_clause_4_n1_2))
;; Success 

(assert (not __ic3_clause_4_n1_3))
;; Success 

(assert (not __ic3_clause_4_n1_4))
;; Success 

(assert (not __ic3_clause_4_n1_5))
;; Success 

(assert (not __ic3_clause_4_n1_6))
;; Success 

(assert (not __ic3_clause_4_n1_7))
;; Success 

(assert (not __ic3_clause_4_n1_8))
;; Success 

;; New clause from inductive generalization of #4: 
;; #5 {(not top.res.abs_8@0); 
;;     (not (> (+ (* 1 top.res.abs_1@0) (* (- 1) top.res.abs_9@0)) 0))} 

;; block: Reduced clause 
;; (or 
;;  (not (> (+ (* 1 top.res.abs_1@0) (* (- 1) top.res.abs_9@0)) 0)) 
;;  (not top.res.abs_8@0) 
;;  (not top.usr.OK@0)) 
;; with ind. gen. to 
;; (or 
;;  (not top.res.abs_8@0) 
;;  (not (> (+ (* 1 top.res.abs_1@0) (* (- 1) top.res.abs_9@0)) 0))) 

(declare-fun __ic3_clause_5_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_5_p0
 (or (not f152@0) (not (> (+ (* 1 f145@0) (* (- 1) f153@0)) 0)))))
;; Success 

;; check_frames: frames k to 1 
;;  
;; Frame: 
;; 5 

;; check_frames: Does R_1 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c41))
;; Success 

(assert (! __ic3_clause_5_p0 :named c42))
;; Success 

(assert (! __ic3_clause_5_p0 :named c43))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(declare-fun __ic3_clause_5_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_5_n0_0 f152@0))
;; Success 

(declare-fun __ic3_clause_5_n0_1 () Bool)
;; Success 

(assert (=> __ic3_clause_5_n0_1 (> (+ (* 1 f145@0) (* (- 1) f153@0)) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c44))
;; Success 

(assert (! __ic3_clause_5_n0_0 :named c45))
;; Success 

(assert (! __ic3_clause_5_n0_1 :named c46))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_0 & T |= R_1 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 1 

(declare-fun __ic3_check_frames_1 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_1
 (not
  (and
   f105@1
   (or (not f152@1) (not (> (+ (* 1 f145@1) (* (- 1) f153@1)) 0)))
   (or (not f152@1) (not (> (+ (* 1 f145@1) (* (- 1) f153@1)) 0)))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_1 :named c47))
;; Success 

(assert (! __ic3_frame_0 :named c48))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_1))
;; Success 

;; block: All counterexamples blocked in R_1 

;; block: Check if all successors of frontier R_1 are safe. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c49))
;; Success 

(assert (! __ic3_clause_3_n1_0 :named c50))
;; Success 

(assert (! __ic3_clause_5_p0 :named c51))
;; Success 

(check-sat)
;; Sat 

(get-value
 (f154@1
  f155@1
  f156@1
  f157@1
  f158@1
  f153@1
  f152@1
  f151@1
  f150@1
  f149@1
  f148@1
  f147@1
  f146@1
  f145@1
  f144@1
  f90@1
  f105@1
  f113
  f114
  f115
  f116
  f117
  f118
  f119
  f120
  f121
  f122
  f123
  f124
  f125
  f126
  f127
  f128
  f129
  f130
  f131
  f132
  f133
  f134
  f135
  f136
  f137
  f138
  f139
  f140
  f141
  f142
  f143
  f104@1
  f103@1
  f102@1
  f101@1
  f100@1
  f99@1
  f98@1
  f97@1
  f96@1
  f95@1
  f94@1
  f93@1
  f92@1
  f154@0
  f155@0
  f156@0
  f157@0
  f158@0
  f153@0
  f152@0
  f151@0
  f150@0
  f149@0
  f148@0
  f147@0
  f146@0
  f145@0
  f144@0
  f90@0
  f105@0
  f113
  f114
  f115
  f116
  f117
  f118
  f119
  f120
  f121
  f122
  f123
  f124
  f125
  f126
  f127
  f128
  f129
  f130
  f131
  f132
  f133
  f134
  f135
  f136
  f137
  f138
  f139
  f140
  f141
  f142
  f143
  f104@0
  f103@0
  f102@0
  f101@0
  f100@0
  f99@0
  f98@0
  f97@0
  f96@0
  f95@0
  f94@0
  f93@0
  f92@0))
;; ((f154@1 false) 
;;     (f155@1 false) 
;;     (f156@1 false) 
;;     (f157@1 1) 
;;     (f158@1 false) 
;;     (f153@1 0) 
;;     (f152@1 true) 
;;     (f151@1 true) 
;;     (f150@1 true) 
;;     (f149@1 false) 
;;     (f148@1 0) 
;;     (f147@1 0) 
;;     (f146@1 0) 
;;     (f145@1 1) 
;;     (f144@1 0) 
;;     (f90@1 false) 
;;     (f105@1 false) 
;;     (f113 0) 
;;     (f114 0) 
;;     (f115 0) 
;;     (f116 0) 
;;     (f117 0) 
;;     (f118 0) 
;;     (f119 0) 
;;     (f120 0) 
;;     (f121 0) 
;;     (f122 0) 
;;     (f123 0) 
;;     (f124 0) 
;;     (f125 0) 
;;     (f126 0) 
;;     (f127 0) 
;;     (f128 0) 
;;     (f129 0) 
;;     (f130 0) 
;;     (f131 0) 
;;     (f132 0) 
;;     (f133 0) 
;;     (f134 0) 
;;     (f135 0) 
;;     (f136 0) 
;;     (f137 0) 
;;     (f138 0) 
;;     (f139 0) 
;;     (f140 0) 
;;     (f141 0) 
;;     (f142 0) 
;;     (f143 0) 
;;     (f104@1 1) 
;;     (f103@1 false) 
;;     (f102@1 false) 
;;     (f101@1 false) 
;;     (f100@1 false) 
;;     (f99@1 false) 
;;     (f98@1 false) 
;;     (f97@1 false) 
;;     (f96@1 false) 
;;     (f95@1 false) 
;;     (f94@1 false) 
;;     (f93@1 true) 
;;     (f92@1 false) 
;;     (f154@0 false) 
;;     (f155@0 false) 
;;     (f156@0 false) 
;;     (f157@0 1) 
;;     (f158@0 false) 
;;     (f153@0 0) 
;;     (f152@0 true) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 1) 
;;     (f147@0 0) 
;;     (f146@0 0) 
;;     (f145@0 0) 
;;     (f144@0 0) 
;;     (f90@0 false) 
;;     (f105@0 true) 
;;     (f113 0) 
;;     (f114 0) 
;;     (f115 0) 
;;     (f116 0) 
;;     (f117 0) 
;;     (f118 0) 
;;     (f119 0) 
;;     (f120 0) 
;;     (f121 0) 
;;     (f122 0) 
;;     (f123 0) 
;;     (f124 0) 
;;     (f125 0) 
;;     (f126 0) 
;;     (f127 0) 
;;     (f128 0) 
;;     (f129 0) 
;;     (f130 0) 
;;     (f131 0) 
;;     (f132 0) 
;;     (f133 0) 
;;     (f134 0) 
;;     (f135 0) 
;;     (f136 0) 
;;     (f137 0) 
;;     (f138 0) 
;;     (f139 0) 
;;     (f140 0) 
;;     (f141 0) 
;;     (f142 0) 
;;     (f143 0) 
;;     (f104@0 0) 
;;     (f103@0 false) 
;;     (f102@0 false) 
;;     (f101@0 false) 
;;     (f100@0 false) 
;;     (f99@0 false) 
;;     (f98@0 false) 
;;     (f97@0 false) 
;;     (f96@0 false) 
;;     (f95@0 false) 
;;     (f94@0 false) 
;;     (f93@0 false) 
;;     (f92@0 false)) 

(pop 1)
;; Success 

;; New clause at frontier: 
;; #6 {(not top.usr.OK@0); 
;;     (not top.res.abs_8@0); 
;;     (not (> (* 1 top.res.abs_4@0) 0)); 
;;     (not (> (+ (* (- 1) top.res.abs_1@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;     (not 
;;      (> 
;;       (+ 
;;        (* 1 top.res.abs_0@0) 
;;        (* 1 top.res.abs_1@0) 
;;        (* (- 1) top.res.abs_9@0) 
;;        1) 
;;       0)); 
;;     (not 
;;      (> 
;;       (+ 
;;        (* 1 top.res.abs_0@0) 
;;        (* (- 1) top.res.abs_1@0) 
;;        (* 1 top.res.abs_2@0) 
;;        (* 1 top.res.abs_3@0) 
;;        1) 
;;       0))} 

;; block: Is blocking clause relative inductive to R_0? 

(declare-fun __ic3_clause_6_n1_0 () Bool)
;; Success 

(assert (=> __ic3_clause_6_n1_0 f105@1))
;; Success 

(declare-fun __ic3_clause_6_n1_1 () Bool)
;; Success 

(assert (=> __ic3_clause_6_n1_1 f152@1))
;; Success 

(declare-fun __ic3_clause_6_n1_2 () Bool)
;; Success 

(assert (=> __ic3_clause_6_n1_2 (> (* 1 f148@1) 0)))
;; Success 

(declare-fun __ic3_clause_6_n1_3 () Bool)
;; Success 

(assert (=> __ic3_clause_6_n1_3 (> (+ (* (- 1) f145@1) (* 1 f153@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_6_n1_4 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_6_n1_4
 (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_6_n1_5 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_6_n1_5
 (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_6_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_6_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (* 1 f148@0) 0))
  (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0)))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_6_p0 :named c52))
;; Success 

(assert (! __ic3_clause_6_n1_0 :named c53))
;; Success 

(assert (! __ic3_clause_6_n1_1 :named c54))
;; Success 

(assert (! __ic3_clause_6_n1_2 :named c55))
;; Success 

(assert (! __ic3_clause_6_n1_3 :named c56))
;; Success 

(assert (! __ic3_clause_6_n1_4 :named c57))
;; Success 

(assert (! __ic3_clause_6_n1_5 :named c58))
;; Success 

(assert (! __ic3_frame_0 :named c59))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c54 c55 c57 c59) 

(pop 1)
;; Success 

;; block: Check I |= C to get unsat core. 

(declare-fun __ic3_clause_6_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_6_n0_0 f105@0))
;; Success 

(declare-fun __ic3_clause_6_n0_1 () Bool)
;; Success 

(assert (=> __ic3_clause_6_n0_1 f152@0))
;; Success 

(declare-fun __ic3_clause_6_n0_2 () Bool)
;; Success 

(assert (=> __ic3_clause_6_n0_2 (> (* 1 f148@0) 0)))
;; Success 

(declare-fun __ic3_clause_6_n0_3 () Bool)
;; Success 

(assert (=> __ic3_clause_6_n0_3 (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_6_n0_4 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_6_n0_4
 (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_6_n0_5 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_6_n0_5
 (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c60))
;; Success 

(assert (! __ic3_clause_6_n0_0 :named c61))
;; Success 

(assert (! __ic3_clause_6_n0_1 :named c62))
;; Success 

(assert (! __ic3_clause_6_n0_2 :named c63))
;; Success 

(assert (! __ic3_clause_6_n0_3 :named c64))
;; Success 

(assert (! __ic3_clause_6_n0_4 :named c65))
;; Success 

(assert (! __ic3_clause_6_n0_5 :named c66))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c62 c65 c60) 

(pop 1)
;; Success 

;; block: Reduced clause 
;; (or 
;;  (not top.usr.OK@0) 
;;  (not top.res.abs_8@0) 
;;  (not (> (* 1 top.res.abs_4@0) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_1@0) (* 1 top.res.abs_9@0) 1) 0)) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* 1 top.res.abs_0@0) 
;;     (* 1 top.res.abs_1@0) 
;;     (* (- 1) top.res.abs_9@0) 
;;     1) 
;;    0)) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* 1 top.res.abs_0@0) 
;;     (* (- 1) top.res.abs_1@0) 
;;     (* 1 top.res.abs_2@0) 
;;     (* 1 top.res.abs_3@0) 
;;     1) 
;;    0))) 
;; with unsat core to 
;; (or 
;;  (not 
;;   (> 
;;    (+ 
;;     (* 1 top.res.abs_0@0) 
;;     (* 1 top.res.abs_1@0) 
;;     (* (- 1) top.res.abs_9@0) 
;;     1) 
;;    0)) 
;;  (not (> (* 1 top.res.abs_4@0) 0)) 
;;  (not top.res.abs_8@0)) 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 9 

(declare-fun __ic3_ind_gen_9 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_9 (not (or (not (> (* 1 f148@1) 0)) (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 10 

(declare-fun __ic3_ind_gen_10 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_10 (not (or (not (> (* 1 f148@0) 0)) (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 11 

(declare-fun __ic3_ind_gen_11 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_11 (or (not (> (* 1 f148@0) 0)) (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_10 :named c67))
;; Success 

(assert (! __ic3_frame_0 :named c68))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_11))
;; Success 

(assert (not __ic3_ind_gen_10))
;; Success 

(assert (not __ic3_ind_gen_9))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 12 

(declare-fun __ic3_ind_gen_12 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_12
 (not
  (or
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 1) 0))
   (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 13 

(declare-fun __ic3_ind_gen_13 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_13
 (not
  (or
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 1) 0))
   (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 14 

(declare-fun __ic3_ind_gen_14 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_14
 (or
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 1) 0))
  (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_13 :named c69))
;; Success 

(assert (! __ic3_frame_0 :named c70))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c71))
;; Success 

(assert (! __ic3_ind_gen_14 :named c72))
;; Success 

(assert (! __ic3_ind_gen_12 :named c73))
;; Success 

(assert (! __ic3_frame_0 :named c74))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_14))
;; Success 

(assert (not __ic3_ind_gen_13))
;; Success 

(assert (not __ic3_ind_gen_12))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 15 

(declare-fun __ic3_ind_gen_15 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_15
 (not
  (or
   (not (> (* 1 f148@1) 0))
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 16 

(declare-fun __ic3_ind_gen_16 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_16
 (not
  (or
   (not (> (* 1 f148@0) 0))
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 17 

(declare-fun __ic3_ind_gen_17 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_17
 (or
  (not (> (* 1 f148@0) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 1) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_16 :named c75))
;; Success 

(assert (! __ic3_frame_0 :named c76))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c77))
;; Success 

(assert (! __ic3_ind_gen_17 :named c78))
;; Success 

(assert (! __ic3_ind_gen_15 :named c79))
;; Success 

(assert (! __ic3_frame_0 :named c80))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_17))
;; Success 

(assert (not __ic3_ind_gen_16))
;; Success 

(assert (not __ic3_ind_gen_15))
;; Success 

;; ind_generalize: Dropped 3 literals from clause. 

;; Deactivating activation literals for clause 

(assert (not __ic3_clause_6_p0))
;; Success 

(assert (not __ic3_clause_6_n0_0))
;; Success 

(assert (not __ic3_clause_6_n0_1))
;; Success 

(assert (not __ic3_clause_6_n0_2))
;; Success 

(assert (not __ic3_clause_6_n0_3))
;; Success 

(assert (not __ic3_clause_6_n0_4))
;; Success 

(assert (not __ic3_clause_6_n0_5))
;; Success 

(assert (not __ic3_clause_6_n1_0))
;; Success 

(assert (not __ic3_clause_6_n1_1))
;; Success 

(assert (not __ic3_clause_6_n1_2))
;; Success 

(assert (not __ic3_clause_6_n1_3))
;; Success 

(assert (not __ic3_clause_6_n1_4))
;; Success 

(assert (not __ic3_clause_6_n1_5))
;; Success 

;; New clause from inductive generalization of #6: 
;; #7 {(not top.res.abs_8@0); 
;;     (not (> (* 1 top.res.abs_4@0) 0)); 
;;     (not 
;;      (> 
;;       (+ 
;;        (* 1 top.res.abs_0@0) 
;;        (* 1 top.res.abs_1@0) 
;;        (* (- 1) top.res.abs_9@0) 
;;        1) 
;;       0))} 

;; block: Reduced clause 
;; (or 
;;  (not 
;;   (> 
;;    (+ 
;;     (* 1 top.res.abs_0@0) 
;;     (* 1 top.res.abs_1@0) 
;;     (* (- 1) top.res.abs_9@0) 
;;     1) 
;;    0)) 
;;  (not (> (* 1 top.res.abs_4@0) 0)) 
;;  (not top.res.abs_8@0)) 
;; with ind. gen. to 
;; (or 
;;  (not top.res.abs_8@0) 
;;  (not (> (* 1 top.res.abs_4@0) 0)) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* 1 top.res.abs_0@0) 
;;     (* 1 top.res.abs_1@0) 
;;     (* (- 1) top.res.abs_9@0) 
;;     1) 
;;    0))) 

(declare-fun __ic3_clause_7_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_7_p0
 (or
  (not f152@0)
  (not (> (* 1 f148@0) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 1) 0)))))
;; Success 

;; check_frames: frames k to 1 
;;  
;; Frame: 
;; 5 
;; 7 

;; check_frames: Does R_1 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c81))
;; Success 

(assert (! __ic3_clause_5_p0 :named c82))
;; Success 

(assert (! __ic3_clause_7_p0 :named c83))
;; Success 

(assert (! __ic3_clause_5_p0 :named c84))
;; Success 

(assert (! __ic3_clause_7_p0 :named c85))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c86))
;; Success 

(assert (! __ic3_clause_5_n0_0 :named c87))
;; Success 

(assert (! __ic3_clause_5_n0_1 :named c88))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(declare-fun __ic3_clause_7_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_7_n0_0 f152@0))
;; Success 

(declare-fun __ic3_clause_7_n0_1 () Bool)
;; Success 

(assert (=> __ic3_clause_7_n0_1 (> (* 1 f148@0) 0)))
;; Success 

(declare-fun __ic3_clause_7_n0_2 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_7_n0_2
 (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 1) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c89))
;; Success 

(assert (! __ic3_clause_7_n0_0 :named c90))
;; Success 

(assert (! __ic3_clause_7_n0_1 :named c91))
;; Success 

(assert (! __ic3_clause_7_n0_2 :named c92))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_0 & T |= R_1 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 2 

(declare-fun __ic3_check_frames_2 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_2
 (not
  (and
   f105@1
   (or (not f152@1) (not (> (+ (* 1 f145@1) (* (- 1) f153@1)) 0)))
   (or
    (not f152@1)
    (not (> (* 1 f148@1) 0))
    (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 1) 0)))
   (or (not f152@1) (not (> (+ (* 1 f145@1) (* (- 1) f153@1)) 0)))
   (or
    (not f152@1)
    (not (> (* 1 f148@1) 0))
    (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 1) 0)))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_2 :named c93))
;; Success 

(assert (! __ic3_frame_0 :named c94))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_2))
;; Success 

;; block: All counterexamples blocked in R_1 

;; block: Check if all successors of frontier R_1 are safe. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c95))
;; Success 

(assert (! __ic3_clause_3_n1_0 :named c96))
;; Success 

(assert (! __ic3_clause_5_p0 :named c97))
;; Success 

(assert (! __ic3_clause_7_p0 :named c98))
;; Success 

(check-sat)
;; Sat 

(get-value
 (f154@1
  f155@1
  f156@1
  f157@1
  f158@1
  f153@1
  f152@1
  f151@1
  f150@1
  f149@1
  f148@1
  f147@1
  f146@1
  f145@1
  f144@1
  f90@1
  f105@1
  f113
  f114
  f115
  f116
  f117
  f118
  f119
  f120
  f121
  f122
  f123
  f124
  f125
  f126
  f127
  f128
  f129
  f130
  f131
  f132
  f133
  f134
  f135
  f136
  f137
  f138
  f139
  f140
  f141
  f142
  f143
  f104@1
  f103@1
  f102@1
  f101@1
  f100@1
  f99@1
  f98@1
  f97@1
  f96@1
  f95@1
  f94@1
  f93@1
  f92@1
  f154@0
  f155@0
  f156@0
  f157@0
  f158@0
  f153@0
  f152@0
  f151@0
  f150@0
  f149@0
  f148@0
  f147@0
  f146@0
  f145@0
  f144@0
  f90@0
  f105@0
  f113
  f114
  f115
  f116
  f117
  f118
  f119
  f120
  f121
  f122
  f123
  f124
  f125
  f126
  f127
  f128
  f129
  f130
  f131
  f132
  f133
  f134
  f135
  f136
  f137
  f138
  f139
  f140
  f141
  f142
  f143
  f104@0
  f103@0
  f102@0
  f101@0
  f100@0
  f99@0
  f98@0
  f97@0
  f96@0
  f95@0
  f94@0
  f93@0
  f92@0))
;; ((f154@1 false) 
;;     (f155@1 false) 
;;     (f156@1 false) 
;;     (f157@1 1) 
;;     (f158@1 false) 
;;     (f153@1 0) 
;;     (f152@1 true) 
;;     (f151@1 true) 
;;     (f150@1 true) 
;;     (f149@1 false) 
;;     (f148@1 0) 
;;     (f147@1 0) 
;;     (f146@1 1) 
;;     (f145@1 1) 
;;     (f144@1 0) 
;;     (f90@1 false) 
;;     (f105@1 false) 
;;     (f113 0) 
;;     (f114 0) 
;;     (f115 0) 
;;     (f116 0) 
;;     (f117 0) 
;;     (f118 0) 
;;     (f119 0) 
;;     (f120 0) 
;;     (f121 0) 
;;     (f122 0) 
;;     (f123 0) 
;;     (f124 0) 
;;     (f125 0) 
;;     (f126 0) 
;;     (f127 0) 
;;     (f128 0) 
;;     (f129 0) 
;;     (f130 0) 
;;     (f131 0) 
;;     (f132 0) 
;;     (f133 0) 
;;     (f134 0) 
;;     (f135 0) 
;;     (f136 0) 
;;     (f137 0) 
;;     (f138 0) 
;;     (f139 0) 
;;     (f140 0) 
;;     (f141 0) 
;;     (f142 0) 
;;     (f143 0) 
;;     (f104@1 1) 
;;     (f103@1 false) 
;;     (f102@1 false) 
;;     (f101@1 false) 
;;     (f100@1 false) 
;;     (f99@1 true) 
;;     (f98@1 false) 
;;     (f97@1 false) 
;;     (f96@1 false) 
;;     (f95@1 false) 
;;     (f94@1 false) 
;;     (f93@1 false) 
;;     (f92@1 false) 
;;     (f154@0 false) 
;;     (f155@0 false) 
;;     (f156@0 false) 
;;     (f157@0 1) 
;;     (f158@0 false) 
;;     (f153@0 0) 
;;     (f152@0 true) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 1) 
;;     (f147@0 0) 
;;     (f146@0 2) 
;;     (f145@0 0) 
;;     (f144@0 (- 1)) 
;;     (f90@0 false) 
;;     (f105@0 true) 
;;     (f113 0) 
;;     (f114 0) 
;;     (f115 0) 
;;     (f116 0) 
;;     (f117 0) 
;;     (f118 0) 
;;     (f119 0) 
;;     (f120 0) 
;;     (f121 0) 
;;     (f122 0) 
;;     (f123 0) 
;;     (f124 0) 
;;     (f125 0) 
;;     (f126 0) 
;;     (f127 0) 
;;     (f128 0) 
;;     (f129 0) 
;;     (f130 0) 
;;     (f131 0) 
;;     (f132 0) 
;;     (f133 0) 
;;     (f134 0) 
;;     (f135 0) 
;;     (f136 0) 
;;     (f137 0) 
;;     (f138 0) 
;;     (f139 0) 
;;     (f140 0) 
;;     (f141 0) 
;;     (f142 0) 
;;     (f143 0) 
;;     (f104@0 0) 
;;     (f103@0 false) 
;;     (f102@0 false) 
;;     (f101@0 false) 
;;     (f100@0 false) 
;;     (f99@0 false) 
;;     (f98@0 false) 
;;     (f97@0 false) 
;;     (f96@0 false) 
;;     (f95@0 false) 
;;     (f94@0 false) 
;;     (f93@0 false) 
;;     (f92@0 false)) 

(pop 1)
;; Success 

;; New clause at frontier: 
;; #8 {(not top.usr.OK@0); 
;;     (not top.res.abs_8@0); 
;;     (not (> (* 1 top.res.abs_4@0) 0)); 
;;     (not (> (+ (* (- 1) top.res.abs_1@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;     (not 
;;      (> 
;;       (+ 
;;        (* (- 1) top.res.abs_0@0) 
;;        (* (- 1) top.res.abs_1@0) 
;;        (* 1 top.res.abs_9@0)) 
;;       0)); 
;;     (not 
;;      (> 
;;       (+ 
;;        (* 1 top.res.abs_0@0) 
;;        (* 1 top.res.abs_1@0) 
;;        (* 1 top.res.abs_2@0) 
;;        (* 1 top.res.abs_3@0) 
;;        (* (- 1) top.res.abs_9@0)) 
;;       0)); 
;;     (not 
;;      (> 
;;       (+ 
;;        (* 1 top.res.abs_0@0) 
;;        (* 1 top.res.abs_1@0) 
;;        (* 1 top.res.abs_2@0) 
;;        (* 1 top.res.abs_3@0)) 
;;       0))} 

;; block: Is blocking clause relative inductive to R_0? 

(declare-fun __ic3_clause_8_n1_0 () Bool)
;; Success 

(assert (=> __ic3_clause_8_n1_0 f105@1))
;; Success 

(declare-fun __ic3_clause_8_n1_1 () Bool)
;; Success 

(assert (=> __ic3_clause_8_n1_1 f152@1))
;; Success 

(declare-fun __ic3_clause_8_n1_2 () Bool)
;; Success 

(assert (=> __ic3_clause_8_n1_2 (> (* 1 f148@1) 0)))
;; Success 

(declare-fun __ic3_clause_8_n1_3 () Bool)
;; Success 

(assert (=> __ic3_clause_8_n1_3 (> (+ (* (- 1) f145@1) (* 1 f153@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_8_n1_4 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_8_n1_4
 (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1)) 0)))
;; Success 

(declare-fun __ic3_clause_8_n1_5 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_8_n1_5
 (>
  (+ (* 1 f144@1) (* 1 f145@1) (* 1 f146@1) (* 1 f147@1) (* (- 1) f153@1))
  0)))
;; Success 

(declare-fun __ic3_clause_8_n1_6 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_8_n1_6
 (> (+ (* 1 f144@1) (* 1 f145@1) (* 1 f146@1) (* 1 f147@1)) 0)))
;; Success 

(declare-fun __ic3_clause_8_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_8_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (* 1 f148@0) 0))
  (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
  (not
   (>
    (+ (* 1 f144@0) (* 1 f145@0) (* 1 f146@0) (* 1 f147@0) (* (- 1) f153@0))
    0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* 1 f146@0) (* 1 f147@0)) 0)))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_8_p0 :named c99))
;; Success 

(assert (! __ic3_clause_8_n1_0 :named c100))
;; Success 

(assert (! __ic3_clause_8_n1_1 :named c101))
;; Success 

(assert (! __ic3_clause_8_n1_2 :named c102))
;; Success 

(assert (! __ic3_clause_8_n1_3 :named c103))
;; Success 

(assert (! __ic3_clause_8_n1_4 :named c104))
;; Success 

(assert (! __ic3_clause_8_n1_5 :named c105))
;; Success 

(assert (! __ic3_clause_8_n1_6 :named c106))
;; Success 

(assert (! __ic3_frame_0 :named c107))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c101 c107 c104 c105) 

(pop 1)
;; Success 

;; block: Check I |= C to get unsat core. 

(declare-fun __ic3_clause_8_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_8_n0_0 f105@0))
;; Success 

(declare-fun __ic3_clause_8_n0_1 () Bool)
;; Success 

(assert (=> __ic3_clause_8_n0_1 f152@0))
;; Success 

(declare-fun __ic3_clause_8_n0_2 () Bool)
;; Success 

(assert (=> __ic3_clause_8_n0_2 (> (* 1 f148@0) 0)))
;; Success 

(declare-fun __ic3_clause_8_n0_3 () Bool)
;; Success 

(assert (=> __ic3_clause_8_n0_3 (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_8_n0_4 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_8_n0_4
 (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0)))
;; Success 

(declare-fun __ic3_clause_8_n0_5 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_8_n0_5
 (>
  (+ (* 1 f144@0) (* 1 f145@0) (* 1 f146@0) (* 1 f147@0) (* (- 1) f153@0))
  0)))
;; Success 

(declare-fun __ic3_clause_8_n0_6 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_8_n0_6
 (> (+ (* 1 f144@0) (* 1 f145@0) (* 1 f146@0) (* 1 f147@0)) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c108))
;; Success 

(assert (! __ic3_clause_8_n0_0 :named c109))
;; Success 

(assert (! __ic3_clause_8_n0_1 :named c110))
;; Success 

(assert (! __ic3_clause_8_n0_2 :named c111))
;; Success 

(assert (! __ic3_clause_8_n0_3 :named c112))
;; Success 

(assert (! __ic3_clause_8_n0_4 :named c113))
;; Success 

(assert (! __ic3_clause_8_n0_5 :named c114))
;; Success 

(assert (! __ic3_clause_8_n0_6 :named c115))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c115 c108) 

(pop 1)
;; Success 

;; block: Reduced clause 
;; (or 
;;  (not top.usr.OK@0) 
;;  (not top.res.abs_8@0) 
;;  (not (> (* 1 top.res.abs_4@0) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_1@0) (* 1 top.res.abs_9@0) 1) 0)) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* (- 1) top.res.abs_0@0) 
;;     (* (- 1) top.res.abs_1@0) 
;;     (* 1 top.res.abs_9@0)) 
;;    0)) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* 1 top.res.abs_0@0) 
;;     (* 1 top.res.abs_1@0) 
;;     (* 1 top.res.abs_2@0) 
;;     (* 1 top.res.abs_3@0) 
;;     (* (- 1) top.res.abs_9@0)) 
;;    0)) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* 1 top.res.abs_0@0) 
;;     (* 1 top.res.abs_1@0) 
;;     (* 1 top.res.abs_2@0) 
;;     (* 1 top.res.abs_3@0)) 
;;    0))) 
;; with unsat core to 
;; (or 
;;  (not 
;;   (> 
;;    (+ 
;;     (* 1 top.res.abs_0@0) 
;;     (* 1 top.res.abs_1@0) 
;;     (* 1 top.res.abs_2@0) 
;;     (* 1 top.res.abs_3@0)) 
;;    0)) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* 1 top.res.abs_0@0) 
;;     (* 1 top.res.abs_1@0) 
;;     (* 1 top.res.abs_2@0) 
;;     (* 1 top.res.abs_3@0) 
;;     (* (- 1) top.res.abs_9@0)) 
;;    0)) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* (- 1) top.res.abs_0@0) 
;;     (* (- 1) top.res.abs_1@0) 
;;     (* 1 top.res.abs_9@0)) 
;;    0)) 
;;  (not top.res.abs_8@0)) 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 18 

(declare-fun __ic3_ind_gen_18 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_18
 (not
  (or
   (not
    (>
     (+ (* 1 f144@1) (* 1 f145@1) (* 1 f146@1) (* 1 f147@1) (* (- 1) f153@1))
     0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1)) 0))
   (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 19 

(declare-fun __ic3_ind_gen_19 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_19
 (not
  (or
   (not
    (>
     (+ (* 1 f144@0) (* 1 f145@0) (* 1 f146@0) (* 1 f147@0) (* (- 1) f153@0))
     0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
   (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 20 

(declare-fun __ic3_ind_gen_20 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_20
 (or
  (not
   (>
    (+ (* 1 f144@0) (* 1 f145@0) (* 1 f146@0) (* 1 f147@0) (* (- 1) f153@0))
    0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
  (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_19 :named c116))
;; Success 

(assert (! __ic3_frame_0 :named c117))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c118))
;; Success 

(assert (! __ic3_ind_gen_20 :named c119))
;; Success 

(assert (! __ic3_ind_gen_18 :named c120))
;; Success 

(assert (! __ic3_frame_0 :named c121))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_20))
;; Success 

(assert (not __ic3_ind_gen_19))
;; Success 

(assert (not __ic3_ind_gen_18))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 21 

(declare-fun __ic3_ind_gen_21 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_21
 (not
  (or
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1)) 0))
   (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 22 

(declare-fun __ic3_ind_gen_22 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_22
 (not
  (or
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
   (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 23 

(declare-fun __ic3_ind_gen_23 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_23
 (or
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
  (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_22 :named c122))
;; Success 

(assert (! __ic3_frame_0 :named c123))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_23))
;; Success 

(assert (not __ic3_ind_gen_22))
;; Success 

(assert (not __ic3_ind_gen_21))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 24 

(declare-fun __ic3_ind_gen_24 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_24
 (not
  (or
   (not
    (>
     (+ (* 1 f144@1) (* 1 f145@1) (* 1 f146@1) (* 1 f147@1) (* (- 1) f153@1))
     0))
   (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 25 

(declare-fun __ic3_ind_gen_25 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_25
 (not
  (or
   (not
    (>
     (+ (* 1 f144@0) (* 1 f145@0) (* 1 f146@0) (* 1 f147@0) (* (- 1) f153@0))
     0))
   (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 26 

(declare-fun __ic3_ind_gen_26 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_26
 (or
  (not
   (>
    (+ (* 1 f144@0) (* 1 f145@0) (* 1 f146@0) (* 1 f147@0) (* (- 1) f153@0))
    0))
  (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_25 :named c124))
;; Success 

(assert (! __ic3_frame_0 :named c125))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c126))
;; Success 

(assert (! __ic3_ind_gen_26 :named c127))
;; Success 

(assert (! __ic3_ind_gen_24 :named c128))
;; Success 

(assert (! __ic3_frame_0 :named c129))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_26))
;; Success 

(assert (not __ic3_ind_gen_25))
;; Success 

(assert (not __ic3_ind_gen_24))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 27 

(declare-fun __ic3_ind_gen_27 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_27
 (>
  (+ (* 1 f144@1) (* 1 f145@1) (* 1 f146@1) (* 1 f147@1) (* (- 1) f153@1))
  0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 28 

(declare-fun __ic3_ind_gen_28 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_28
 (>
  (+ (* 1 f144@0) (* 1 f145@0) (* 1 f146@0) (* 1 f147@0) (* (- 1) f153@0))
  0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 29 

(declare-fun __ic3_ind_gen_29 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_29
 (not
  (>
   (+ (* 1 f144@0) (* 1 f145@0) (* 1 f146@0) (* 1 f147@0) (* (- 1) f153@0))
   0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_28 :named c130))
;; Success 

(assert (! __ic3_frame_0 :named c131))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_29))
;; Success 

(assert (not __ic3_ind_gen_28))
;; Success 

(assert (not __ic3_ind_gen_27))
;; Success 

;; ind_generalize: Dropped 5 literals from clause. 

;; Deactivating activation literals for clause 

(assert (not __ic3_clause_8_p0))
;; Success 

(assert (not __ic3_clause_8_n0_0))
;; Success 

(assert (not __ic3_clause_8_n0_1))
;; Success 

(assert (not __ic3_clause_8_n0_2))
;; Success 

(assert (not __ic3_clause_8_n0_3))
;; Success 

(assert (not __ic3_clause_8_n0_4))
;; Success 

(assert (not __ic3_clause_8_n0_5))
;; Success 

(assert (not __ic3_clause_8_n0_6))
;; Success 

(assert (not __ic3_clause_8_n1_0))
;; Success 

(assert (not __ic3_clause_8_n1_1))
;; Success 

(assert (not __ic3_clause_8_n1_2))
;; Success 

(assert (not __ic3_clause_8_n1_3))
;; Success 

(assert (not __ic3_clause_8_n1_4))
;; Success 

(assert (not __ic3_clause_8_n1_5))
;; Success 

(assert (not __ic3_clause_8_n1_6))
;; Success 

;; New clause from inductive generalization of #8: 
;; #9 {(not top.res.abs_8@0); 
;;     (not 
;;      (> 
;;       (+ 
;;        (* 1 top.res.abs_0@0) 
;;        (* 1 top.res.abs_1@0) 
;;        (* 1 top.res.abs_2@0) 
;;        (* 1 top.res.abs_3@0) 
;;        (* (- 1) top.res.abs_9@0)) 
;;       0))} 

;; block: Reduced clause 
;; (or 
;;  (not 
;;   (> 
;;    (+ 
;;     (* 1 top.res.abs_0@0) 
;;     (* 1 top.res.abs_1@0) 
;;     (* 1 top.res.abs_2@0) 
;;     (* 1 top.res.abs_3@0)) 
;;    0)) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* 1 top.res.abs_0@0) 
;;     (* 1 top.res.abs_1@0) 
;;     (* 1 top.res.abs_2@0) 
;;     (* 1 top.res.abs_3@0) 
;;     (* (- 1) top.res.abs_9@0)) 
;;    0)) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* (- 1) top.res.abs_0@0) 
;;     (* (- 1) top.res.abs_1@0) 
;;     (* 1 top.res.abs_9@0)) 
;;    0)) 
;;  (not top.res.abs_8@0)) 
;; with ind. gen. to 
;; (or 
;;  (not top.res.abs_8@0) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* 1 top.res.abs_0@0) 
;;     (* 1 top.res.abs_1@0) 
;;     (* 1 top.res.abs_2@0) 
;;     (* 1 top.res.abs_3@0) 
;;     (* (- 1) top.res.abs_9@0)) 
;;    0))) 

(declare-fun __ic3_clause_9_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_9_p0
 (or
  (not f152@0)
  (not
   (>
    (+ (* 1 f144@0) (* 1 f145@0) (* 1 f146@0) (* 1 f147@0) (* (- 1) f153@0))
    0)))))
;; Success 

;; check_frames: frames k to 1 
;;  
;; Frame: 
;; 5 
;; 7 
;; 9 

;; check_frames: Does R_1 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c132))
;; Success 

(assert (! __ic3_clause_5_p0 :named c133))
;; Success 

(assert (! __ic3_clause_7_p0 :named c134))
;; Success 

(assert (! __ic3_clause_9_p0 :named c135))
;; Success 

(assert (! __ic3_clause_5_p0 :named c136))
;; Success 

(assert (! __ic3_clause_7_p0 :named c137))
;; Success 

(assert (! __ic3_clause_9_p0 :named c138))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c139))
;; Success 

(assert (! __ic3_clause_5_n0_0 :named c140))
;; Success 

(assert (! __ic3_clause_5_n0_1 :named c141))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c142))
;; Success 

(assert (! __ic3_clause_7_n0_0 :named c143))
;; Success 

(assert (! __ic3_clause_7_n0_1 :named c144))
;; Success 

(assert (! __ic3_clause_7_n0_2 :named c145))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(declare-fun __ic3_clause_9_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_9_n0_0 f152@0))
;; Success 

(declare-fun __ic3_clause_9_n0_1 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_9_n0_1
 (>
  (+ (* 1 f144@0) (* 1 f145@0) (* 1 f146@0) (* 1 f147@0) (* (- 1) f153@0))
  0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c146))
;; Success 

(assert (! __ic3_clause_9_n0_0 :named c147))
;; Success 

(assert (! __ic3_clause_9_n0_1 :named c148))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_0 & T |= R_1 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 3 

(declare-fun __ic3_check_frames_3 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_3
 (not
  (and
   f105@1
   (or (not f152@1) (not (> (+ (* 1 f145@1) (* (- 1) f153@1)) 0)))
   (or
    (not f152@1)
    (not (> (* 1 f148@1) 0))
    (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 1) 0)))
   (or
    (not f152@1)
    (not
     (>
      (+
       (* 1 f144@1)
       (* 1 f145@1)
       (* 1 f146@1)
       (* 1 f147@1)
       (* (- 1) f153@1))
      0)))
   (or (not f152@1) (not (> (+ (* 1 f145@1) (* (- 1) f153@1)) 0)))
   (or
    (not f152@1)
    (not (> (* 1 f148@1) 0))
    (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 1) 0)))
   (or
    (not f152@1)
    (not
     (>
      (+
       (* 1 f144@1)
       (* 1 f145@1)
       (* 1 f146@1)
       (* 1 f147@1)
       (* (- 1) f153@1))
      0)))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_3 :named c149))
;; Success 

(assert (! __ic3_frame_0 :named c150))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_3))
;; Success 

;; block: All counterexamples blocked in R_1 

;; block: Check if all successors of frontier R_1 are safe. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c151))
;; Success 

(assert (! __ic3_clause_3_n1_0 :named c152))
;; Success 

(assert (! __ic3_clause_5_p0 :named c153))
;; Success 

(assert (! __ic3_clause_7_p0 :named c154))
;; Success 

(assert (! __ic3_clause_9_p0 :named c155))
;; Success 

(check-sat)
;; Sat 

(get-value
 (f154@1
  f155@1
  f156@1
  f157@1
  f158@1
  f153@1
  f152@1
  f151@1
  f150@1
  f149@1
  f148@1
  f147@1
  f146@1
  f145@1
  f144@1
  f90@1
  f105@1
  f113
  f114
  f115
  f116
  f117
  f118
  f119
  f120
  f121
  f122
  f123
  f124
  f125
  f126
  f127
  f128
  f129
  f130
  f131
  f132
  f133
  f134
  f135
  f136
  f137
  f138
  f139
  f140
  f141
  f142
  f143
  f104@1
  f103@1
  f102@1
  f101@1
  f100@1
  f99@1
  f98@1
  f97@1
  f96@1
  f95@1
  f94@1
  f93@1
  f92@1
  f154@0
  f155@0
  f156@0
  f157@0
  f158@0
  f153@0
  f152@0
  f151@0
  f150@0
  f149@0
  f148@0
  f147@0
  f146@0
  f145@0
  f144@0
  f90@0
  f105@0
  f113
  f114
  f115
  f116
  f117
  f118
  f119
  f120
  f121
  f122
  f123
  f124
  f125
  f126
  f127
  f128
  f129
  f130
  f131
  f132
  f133
  f134
  f135
  f136
  f137
  f138
  f139
  f140
  f141
  f142
  f143
  f104@0
  f103@0
  f102@0
  f101@0
  f100@0
  f99@0
  f98@0
  f97@0
  f96@0
  f95@0
  f94@0
  f93@0
  f92@0))
;; ((f154@1 false) 
;;     (f155@1 false) 
;;     (f156@1 false) 
;;     (f157@1 1) 
;;     (f158@1 false) 
;;     (f153@1 0) 
;;     (f152@1 true) 
;;     (f151@1 true) 
;;     (f150@1 true) 
;;     (f149@1 false) 
;;     (f148@1 0) 
;;     (f147@1 (- 1)) 
;;     (f146@1 1) 
;;     (f145@1 1) 
;;     (f144@1 (- 1)) 
;;     (f90@1 false) 
;;     (f105@1 false) 
;;     (f113 0) 
;;     (f114 0) 
;;     (f115 0) 
;;     (f116 0) 
;;     (f117 0) 
;;     (f118 0) 
;;     (f119 0) 
;;     (f120 0) 
;;     (f121 0) 
;;     (f122 0) 
;;     (f123 0) 
;;     (f124 0) 
;;     (f125 0) 
;;     (f126 0) 
;;     (f127 0) 
;;     (f128 0) 
;;     (f129 0) 
;;     (f130 0) 
;;     (f131 0) 
;;     (f132 0) 
;;     (f133 0) 
;;     (f134 0) 
;;     (f135 0) 
;;     (f136 0) 
;;     (f137 0) 
;;     (f138 0) 
;;     (f139 0) 
;;     (f140 0) 
;;     (f141 0) 
;;     (f142 0) 
;;     (f143 0) 
;;     (f104@1 1) 
;;     (f103@1 false) 
;;     (f102@1 false) 
;;     (f101@1 false) 
;;     (f100@1 false) 
;;     (f99@1 false) 
;;     (f98@1 false) 
;;     (f97@1 true) 
;;     (f96@1 false) 
;;     (f95@1 false) 
;;     (f94@1 false) 
;;     (f93@1 false) 
;;     (f92@1 false) 
;;     (f154@0 false) 
;;     (f155@0 false) 
;;     (f156@0 false) 
;;     (f157@0 1) 
;;     (f158@0 false) 
;;     (f153@0 0) 
;;     (f152@0 true) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 0) 
;;     (f147@0 (- 1)) 
;;     (f146@0 2) 
;;     (f145@0 0) 
;;     (f144@0 (- 1)) 
;;     (f90@0 false) 
;;     (f105@0 true) 
;;     (f113 0) 
;;     (f114 0) 
;;     (f115 0) 
;;     (f116 0) 
;;     (f117 0) 
;;     (f118 0) 
;;     (f119 0) 
;;     (f120 0) 
;;     (f121 0) 
;;     (f122 0) 
;;     (f123 0) 
;;     (f124 0) 
;;     (f125 0) 
;;     (f126 0) 
;;     (f127 0) 
;;     (f128 0) 
;;     (f129 0) 
;;     (f130 0) 
;;     (f131 0) 
;;     (f132 0) 
;;     (f133 0) 
;;     (f134 0) 
;;     (f135 0) 
;;     (f136 0) 
;;     (f137 0) 
;;     (f138 0) 
;;     (f139 0) 
;;     (f140 0) 
;;     (f141 0) 
;;     (f142 0) 
;;     (f143 0) 
;;     (f104@0 0) 
;;     (f103@0 false) 
;;     (f102@0 false) 
;;     (f101@0 false) 
;;     (f100@0 false) 
;;     (f99@0 false) 
;;     (f98@0 false) 
;;     (f97@0 false) 
;;     (f96@0 false) 
;;     (f95@0 false) 
;;     (f94@0 false) 
;;     (f93@0 false) 
;;     (f92@0 false)) 

(pop 1)
;; Success 

;; New clause at frontier: 
;; #10 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (+ (* (- 1) top.res.abs_1@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* (- 1) top.res.abs_0@0) 
;;         (* (- 1) top.res.abs_1@0) 
;;         (* (- 1) top.res.abs_2@0) 
;;         (* (- 1) top.res.abs_3@0) 
;;         (* 1 top.res.abs_9@0) 
;;         1) 
;;        0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) 1) 0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* 1 top.res.abs_1@0) 
;;         (* 1 top.res.abs_2@0) 
;;         (* (- 1) top.res.abs_9@0) 
;;         (- 1)) 
;;        0)); 
;;      (not (> (+ (* 1 top.res.abs_1@0) (* 1 top.res.abs_2@0) (- 1)) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 2) 0))} 

;; block: Is blocking clause relative inductive to R_0? 

(declare-fun __ic3_clause_10_n1_0 () Bool)
;; Success 

(assert (=> __ic3_clause_10_n1_0 f105@1))
;; Success 

(declare-fun __ic3_clause_10_n1_1 () Bool)
;; Success 

(assert (=> __ic3_clause_10_n1_1 f152@1))
;; Success 

(declare-fun __ic3_clause_10_n1_2 () Bool)
;; Success 

(assert (=> __ic3_clause_10_n1_2 (> (+ (* (- 1) f145@1) (* 1 f153@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_10_n1_3 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_10_n1_3
 (>
  (+
   (* (- 1) f144@1)
   (* (- 1) f145@1)
   (* (- 1) f146@1)
   (* (- 1) f147@1)
   (* 1 f153@1)
   1)
  0)))
;; Success 

(declare-fun __ic3_clause_10_n1_4 () Bool)
;; Success 

(assert (=> __ic3_clause_10_n1_4 (> (+ (* (- 1) f148@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_10_n1_5 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_10_n1_5
 (> (+ (* 1 f145@1) (* 1 f146@1) (* (- 1) f153@1) (- 1)) 0)))
;; Success 

(declare-fun __ic3_clause_10_n1_6 () Bool)
;; Success 

(assert (=> __ic3_clause_10_n1_6 (> (+ (* 1 f145@1) (* 1 f146@1) (- 1)) 0)))
;; Success 

(declare-fun __ic3_clause_10_n1_7 () Bool)
;; Success 

(assert (=> __ic3_clause_10_n1_7 (> (+ (* (- 1) f144@1) 2) 0)))
;; Success 

(declare-fun __ic3_clause_10_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_10_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     1)
    0))
  (not (> (+ (* (- 1) f148@0) 1) 0))
  (not (> (+ (* 1 f145@0) (* 1 f146@0) (* (- 1) f153@0) (- 1)) 0))
  (not (> (+ (* 1 f145@0) (* 1 f146@0) (- 1)) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0)))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_10_p0 :named c156))
;; Success 

(assert (! __ic3_clause_10_n1_0 :named c157))
;; Success 

(assert (! __ic3_clause_10_n1_1 :named c158))
;; Success 

(assert (! __ic3_clause_10_n1_2 :named c159))
;; Success 

(assert (! __ic3_clause_10_n1_3 :named c160))
;; Success 

(assert (! __ic3_clause_10_n1_4 :named c161))
;; Success 

(assert (! __ic3_clause_10_n1_5 :named c162))
;; Success 

(assert (! __ic3_clause_10_n1_6 :named c163))
;; Success 

(assert (! __ic3_clause_10_n1_7 :named c164))
;; Success 

(assert (! __ic3_frame_0 :named c165))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c157 c158 c162 c165) 

(pop 1)
;; Success 

;; block: Check I |= C to get unsat core. 

(declare-fun __ic3_clause_10_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_10_n0_0 f105@0))
;; Success 

(declare-fun __ic3_clause_10_n0_1 () Bool)
;; Success 

(assert (=> __ic3_clause_10_n0_1 f152@0))
;; Success 

(declare-fun __ic3_clause_10_n0_2 () Bool)
;; Success 

(assert (=> __ic3_clause_10_n0_2 (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_10_n0_3 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_10_n0_3
 (>
  (+
   (* (- 1) f144@0)
   (* (- 1) f145@0)
   (* (- 1) f146@0)
   (* (- 1) f147@0)
   (* 1 f153@0)
   1)
  0)))
;; Success 

(declare-fun __ic3_clause_10_n0_4 () Bool)
;; Success 

(assert (=> __ic3_clause_10_n0_4 (> (+ (* (- 1) f148@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_10_n0_5 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_10_n0_5
 (> (+ (* 1 f145@0) (* 1 f146@0) (* (- 1) f153@0) (- 1)) 0)))
;; Success 

(declare-fun __ic3_clause_10_n0_6 () Bool)
;; Success 

(assert (=> __ic3_clause_10_n0_6 (> (+ (* 1 f145@0) (* 1 f146@0) (- 1)) 0)))
;; Success 

(declare-fun __ic3_clause_10_n0_7 () Bool)
;; Success 

(assert (=> __ic3_clause_10_n0_7 (> (+ (* (- 1) f144@0) 2) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c166))
;; Success 

(assert (! __ic3_clause_10_n0_0 :named c167))
;; Success 

(assert (! __ic3_clause_10_n0_1 :named c168))
;; Success 

(assert (! __ic3_clause_10_n0_2 :named c169))
;; Success 

(assert (! __ic3_clause_10_n0_3 :named c170))
;; Success 

(assert (! __ic3_clause_10_n0_4 :named c171))
;; Success 

(assert (! __ic3_clause_10_n0_5 :named c172))
;; Success 

(assert (! __ic3_clause_10_n0_6 :named c173))
;; Success 

(assert (! __ic3_clause_10_n0_7 :named c174))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c168 c171 c166) 

(pop 1)
;; Success 

;; block: Reduced clause 
;; (or 
;;  (not top.usr.OK@0) 
;;  (not top.res.abs_8@0) 
;;  (not (> (+ (* (- 1) top.res.abs_1@0) (* 1 top.res.abs_9@0) 1) 0)) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* (- 1) top.res.abs_0@0) 
;;     (* (- 1) top.res.abs_1@0) 
;;     (* (- 1) top.res.abs_2@0) 
;;     (* (- 1) top.res.abs_3@0) 
;;     (* 1 top.res.abs_9@0) 
;;     1) 
;;    0)) 
;;  (not (> (+ (* (- 1) top.res.abs_4@0) 1) 0)) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* 1 top.res.abs_1@0) 
;;     (* 1 top.res.abs_2@0) 
;;     (* (- 1) top.res.abs_9@0) 
;;     (- 1)) 
;;    0)) 
;;  (not (> (+ (* 1 top.res.abs_1@0) (* 1 top.res.abs_2@0) (- 1)) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_0@0) 2) 0))) 
;; with unsat core to 
;; (or 
;;  (not (> (+ (* (- 1) top.res.abs_4@0) 1) 0)) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* 1 top.res.abs_1@0) 
;;     (* 1 top.res.abs_2@0) 
;;     (* (- 1) top.res.abs_9@0) 
;;     (- 1)) 
;;    0)) 
;;  (not top.res.abs_8@0) 
;;  (not top.usr.OK@0)) 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 30 

(declare-fun __ic3_ind_gen_30 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_30
 (not
  (or
   (not (> (+ (* 1 f145@1) (* 1 f146@1) (* (- 1) f153@1) (- 1)) 0))
   (not f152@1)
   (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 31 

(declare-fun __ic3_ind_gen_31 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_31
 (not
  (or
   (not (> (+ (* 1 f145@0) (* 1 f146@0) (* (- 1) f153@0) (- 1)) 0))
   (not f152@0)
   (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 32 

(declare-fun __ic3_ind_gen_32 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_32
 (or
  (not (> (+ (* 1 f145@0) (* 1 f146@0) (* (- 1) f153@0) (- 1)) 0))
  (not f152@0)
  (not f105@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_31 :named c175))
;; Success 

(assert (! __ic3_frame_0 :named c176))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c177))
;; Success 

(assert (! __ic3_ind_gen_32 :named c178))
;; Success 

(assert (! __ic3_ind_gen_30 :named c179))
;; Success 

(assert (! __ic3_frame_0 :named c180))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_32))
;; Success 

(assert (not __ic3_ind_gen_31))
;; Success 

(assert (not __ic3_ind_gen_30))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 33 

(declare-fun __ic3_ind_gen_33 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_33 (not (or (not f152@1) (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 34 

(declare-fun __ic3_ind_gen_34 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_34 (not (or (not f152@0) (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 35 

(declare-fun __ic3_ind_gen_35 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_35 (or (not f152@0) (not f105@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_34 :named c181))
;; Success 

(assert (! __ic3_frame_0 :named c182))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_35))
;; Success 

(assert (not __ic3_ind_gen_34))
;; Success 

(assert (not __ic3_ind_gen_33))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 36 

(declare-fun __ic3_ind_gen_36 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_36
 (not
  (or
   (not (> (+ (* 1 f145@1) (* 1 f146@1) (* (- 1) f153@1) (- 1)) 0))
   (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 37 

(declare-fun __ic3_ind_gen_37 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_37
 (not
  (or
   (not (> (+ (* 1 f145@0) (* 1 f146@0) (* (- 1) f153@0) (- 1)) 0))
   (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 38 

(declare-fun __ic3_ind_gen_38 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_38
 (or
  (not (> (+ (* 1 f145@0) (* 1 f146@0) (* (- 1) f153@0) (- 1)) 0))
  (not f105@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_37 :named c183))
;; Success 

(assert (! __ic3_frame_0 :named c184))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_38))
;; Success 

(assert (not __ic3_ind_gen_37))
;; Success 

(assert (not __ic3_ind_gen_36))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 39 

(declare-fun __ic3_ind_gen_39 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_39
 (not
  (or
   (not f152@1)
   (not (> (+ (* 1 f145@1) (* 1 f146@1) (* (- 1) f153@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 40 

(declare-fun __ic3_ind_gen_40 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_40
 (not
  (or
   (not f152@0)
   (not (> (+ (* 1 f145@0) (* 1 f146@0) (* (- 1) f153@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 41 

(declare-fun __ic3_ind_gen_41 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_41
 (or
  (not f152@0)
  (not (> (+ (* 1 f145@0) (* 1 f146@0) (* (- 1) f153@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_40 :named c185))
;; Success 

(assert (! __ic3_frame_0 :named c186))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c187))
;; Success 

(assert (! __ic3_ind_gen_41 :named c188))
;; Success 

(assert (! __ic3_ind_gen_39 :named c189))
;; Success 

(assert (! __ic3_frame_0 :named c190))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_41))
;; Success 

(assert (not __ic3_ind_gen_40))
;; Success 

(assert (not __ic3_ind_gen_39))
;; Success 

;; ind_generalize: Dropped 6 literals from clause. 

;; Deactivating activation literals for clause 

(assert (not __ic3_clause_10_p0))
;; Success 

(assert (not __ic3_clause_10_n0_0))
;; Success 

(assert (not __ic3_clause_10_n0_1))
;; Success 

(assert (not __ic3_clause_10_n0_2))
;; Success 

(assert (not __ic3_clause_10_n0_3))
;; Success 

(assert (not __ic3_clause_10_n0_4))
;; Success 

(assert (not __ic3_clause_10_n0_5))
;; Success 

(assert (not __ic3_clause_10_n0_6))
;; Success 

(assert (not __ic3_clause_10_n0_7))
;; Success 

(assert (not __ic3_clause_10_n1_0))
;; Success 

(assert (not __ic3_clause_10_n1_1))
;; Success 

(assert (not __ic3_clause_10_n1_2))
;; Success 

(assert (not __ic3_clause_10_n1_3))
;; Success 

(assert (not __ic3_clause_10_n1_4))
;; Success 

(assert (not __ic3_clause_10_n1_5))
;; Success 

(assert (not __ic3_clause_10_n1_6))
;; Success 

(assert (not __ic3_clause_10_n1_7))
;; Success 

;; New clause from inductive generalization of #10: 
;; #11 {(not top.res.abs_8@0); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* 1 top.res.abs_1@0) 
;;         (* 1 top.res.abs_2@0) 
;;         (* (- 1) top.res.abs_9@0) 
;;         (- 1)) 
;;        0))} 

;; block: Reduced clause 
;; (or 
;;  (not (> (+ (* (- 1) top.res.abs_4@0) 1) 0)) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* 1 top.res.abs_1@0) 
;;     (* 1 top.res.abs_2@0) 
;;     (* (- 1) top.res.abs_9@0) 
;;     (- 1)) 
;;    0)) 
;;  (not top.res.abs_8@0) 
;;  (not top.usr.OK@0)) 
;; with ind. gen. to 
;; (or 
;;  (not top.res.abs_8@0) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* 1 top.res.abs_1@0) 
;;     (* 1 top.res.abs_2@0) 
;;     (* (- 1) top.res.abs_9@0) 
;;     (- 1)) 
;;    0))) 

(declare-fun __ic3_clause_11_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_11_p0
 (or
  (not f152@0)
  (not (> (+ (* 1 f145@0) (* 1 f146@0) (* (- 1) f153@0) (- 1)) 0)))))
;; Success 

;; check_frames: frames k to 1 
;;  
;; Frame: 
;; 5 
;; 7 
;; 9 
;; 11 

;; check_frames: Does R_1 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c191))
;; Success 

(assert (! __ic3_clause_5_p0 :named c192))
;; Success 

(assert (! __ic3_clause_7_p0 :named c193))
;; Success 

(assert (! __ic3_clause_9_p0 :named c194))
;; Success 

(assert (! __ic3_clause_11_p0 :named c195))
;; Success 

(assert (! __ic3_clause_5_p0 :named c196))
;; Success 

(assert (! __ic3_clause_7_p0 :named c197))
;; Success 

(assert (! __ic3_clause_9_p0 :named c198))
;; Success 

(assert (! __ic3_clause_11_p0 :named c199))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c200))
;; Success 

(assert (! __ic3_clause_5_n0_0 :named c201))
;; Success 

(assert (! __ic3_clause_5_n0_1 :named c202))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c203))
;; Success 

(assert (! __ic3_clause_7_n0_0 :named c204))
;; Success 

(assert (! __ic3_clause_7_n0_1 :named c205))
;; Success 

(assert (! __ic3_clause_7_n0_2 :named c206))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c207))
;; Success 

(assert (! __ic3_clause_9_n0_0 :named c208))
;; Success 

(assert (! __ic3_clause_9_n0_1 :named c209))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(declare-fun __ic3_clause_11_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_11_n0_0 f152@0))
;; Success 

(declare-fun __ic3_clause_11_n0_1 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_11_n0_1
 (> (+ (* 1 f145@0) (* 1 f146@0) (* (- 1) f153@0) (- 1)) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c210))
;; Success 

(assert (! __ic3_clause_11_n0_0 :named c211))
;; Success 

(assert (! __ic3_clause_11_n0_1 :named c212))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_0 & T |= R_1 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 4 

(declare-fun __ic3_check_frames_4 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_4
 (not
  (and
   f105@1
   (or (not f152@1) (not (> (+ (* 1 f145@1) (* (- 1) f153@1)) 0)))
   (or
    (not f152@1)
    (not (> (* 1 f148@1) 0))
    (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 1) 0)))
   (or
    (not f152@1)
    (not
     (>
      (+
       (* 1 f144@1)
       (* 1 f145@1)
       (* 1 f146@1)
       (* 1 f147@1)
       (* (- 1) f153@1))
      0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f145@1) (* 1 f146@1) (* (- 1) f153@1) (- 1)) 0)))
   (or (not f152@1) (not (> (+ (* 1 f145@1) (* (- 1) f153@1)) 0)))
   (or
    (not f152@1)
    (not (> (* 1 f148@1) 0))
    (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 1) 0)))
   (or
    (not f152@1)
    (not
     (>
      (+
       (* 1 f144@1)
       (* 1 f145@1)
       (* 1 f146@1)
       (* 1 f147@1)
       (* (- 1) f153@1))
      0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f145@1) (* 1 f146@1) (* (- 1) f153@1) (- 1)) 0)))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_4 :named c213))
;; Success 

(assert (! __ic3_frame_0 :named c214))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_4))
;; Success 

;; block: All counterexamples blocked in R_1 

;; block: Check if all successors of frontier R_1 are safe. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c215))
;; Success 

(assert (! __ic3_clause_3_n1_0 :named c216))
;; Success 

(assert (! __ic3_clause_5_p0 :named c217))
;; Success 

(assert (! __ic3_clause_7_p0 :named c218))
;; Success 

(assert (! __ic3_clause_9_p0 :named c219))
;; Success 

(assert (! __ic3_clause_11_p0 :named c220))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; block: All successors of R_1 are safe. 

;; fwd_propagate: Checking forward propagation of clauses in frame 1. 

;; check_frames: Does R_1 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c221))
;; Success 

(assert (! __ic3_clause_5_p0 :named c222))
;; Success 

(assert (! __ic3_clause_7_p0 :named c223))
;; Success 

(assert (! __ic3_clause_9_p0 :named c224))
;; Success 

(assert (! __ic3_clause_11_p0 :named c225))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c226))
;; Success 

(assert (! __ic3_clause_5_n0_0 :named c227))
;; Success 

(assert (! __ic3_clause_5_n0_1 :named c228))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c229))
;; Success 

(assert (! __ic3_clause_7_n0_0 :named c230))
;; Success 

(assert (! __ic3_clause_7_n0_1 :named c231))
;; Success 

(assert (! __ic3_clause_7_n0_2 :named c232))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c233))
;; Success 

(assert (! __ic3_clause_9_n0_0 :named c234))
;; Success 

(assert (! __ic3_clause_9_n0_1 :named c235))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c236))
;; Success 

(assert (! __ic3_clause_11_n0_0 :named c237))
;; Success 

(assert (! __ic3_clause_11_n0_1 :named c238))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_0 & T |= R_1 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 5 

(declare-fun __ic3_check_frames_5 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_5
 (not
  (and
   f105@1
   (or (not f152@1) (not (> (+ (* 1 f145@1) (* (- 1) f153@1)) 0)))
   (or
    (not f152@1)
    (not (> (* 1 f148@1) 0))
    (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 1) 0)))
   (or
    (not f152@1)
    (not
     (>
      (+
       (* 1 f144@1)
       (* 1 f145@1)
       (* 1 f146@1)
       (* 1 f147@1)
       (* (- 1) f153@1))
      0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f145@1) (* 1 f146@1) (* (- 1) f153@1) (- 1)) 0)))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_5 :named c239))
;; Success 

(assert (! __ic3_frame_0 :named c240))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_5))
;; Success 

;; partition_fwd_prop: Checking for forward propagation of clause set 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for fwd_prop 0 

(declare-fun __ic3_fwd_prop_0 () Bool)
;; Success 

(assert
 (=>
 __ic3_fwd_prop_0
 (not
  (and
   (or (not f152@1) (not (> (+ (* 1 f145@1) (* (- 1) f153@1)) 0)))
   (or
    (not f152@1)
    (not (> (* 1 f148@1) 0))
    (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 1) 0)))
   (or
    (not f152@1)
    (not
     (>
      (+
       (* 1 f144@1)
       (* 1 f145@1)
       (* 1 f146@1)
       (* 1 f147@1)
       (* (- 1) f153@1))
      0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f145@1) (* 1 f146@1) (* (- 1) f153@1) (- 1)) 0)))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c241))
;; Success 

(assert (! __ic3_fwd_prop_0 :named c242))
;; Success 

(assert (! __ic3_clause_5_p0 :named c243))
;; Success 

(assert (! __ic3_clause_7_p0 :named c244))
;; Success 

(assert (! __ic3_clause_9_p0 :named c245))
;; Success 

(assert (! __ic3_clause_11_p0 :named c246))
;; Success 

(check-sat)
;; Sat 

(get-value
 (f154@1
  f155@1
  f156@1
  f157@1
  f158@1
  f153@1
  f152@1
  f151@1
  f150@1
  f149@1
  f148@1
  f147@1
  f146@1
  f145@1
  f144@1
  f90@1
  f105@1
  f113
  f114
  f115
  f116
  f117
  f118
  f119
  f120
  f121
  f122
  f123
  f124
  f125
  f126
  f127
  f128
  f129
  f130
  f131
  f132
  f133
  f134
  f135
  f136
  f137
  f138
  f139
  f140
  f141
  f142
  f143
  f104@1
  f103@1
  f102@1
  f101@1
  f100@1
  f99@1
  f98@1
  f97@1
  f96@1
  f95@1
  f94@1
  f93@1
  f92@1
  f154@0
  f155@0
  f156@0
  f157@0
  f158@0
  f153@0
  f152@0
  f151@0
  f150@0
  f149@0
  f148@0
  f147@0
  f146@0
  f145@0
  f144@0
  f90@0
  f105@0
  f113
  f114
  f115
  f116
  f117
  f118
  f119
  f120
  f121
  f122
  f123
  f124
  f125
  f126
  f127
  f128
  f129
  f130
  f131
  f132
  f133
  f134
  f135
  f136
  f137
  f138
  f139
  f140
  f141
  f142
  f143
  f104@0
  f103@0
  f102@0
  f101@0
  f100@0
  f99@0
  f98@0
  f97@0
  f96@0
  f95@0
  f94@0
  f93@0
  f92@0))
;; ((f154@1 false) 
;;     (f155@1 false) 
;;     (f156@1 false) 
;;     (f157@1 1) 
;;     (f158@1 false) 
;;     (f153@1 1) 
;;     (f152@1 true) 
;;     (f151@1 true) 
;;     (f150@1 true) 
;;     (f149@1 false) 
;;     (f148@1 1) 
;;     (f147@1 0) 
;;     (f146@1 0) 
;;     (f145@1 0) 
;;     (f144@1 1) 
;;     (f90@1 false) 
;;     (f105@1 true) 
;;     (f113 0) 
;;     (f114 0) 
;;     (f115 0) 
;;     (f116 0) 
;;     (f117 0) 
;;     (f118 0) 
;;     (f119 0) 
;;     (f120 0) 
;;     (f121 0) 
;;     (f122 0) 
;;     (f123 0) 
;;     (f124 0) 
;;     (f125 0) 
;;     (f126 0) 
;;     (f127 0) 
;;     (f128 0) 
;;     (f129 0) 
;;     (f130 0) 
;;     (f131 0) 
;;     (f132 0) 
;;     (f133 0) 
;;     (f134 0) 
;;     (f135 0) 
;;     (f136 0) 
;;     (f137 0) 
;;     (f138 0) 
;;     (f139 0) 
;;     (f140 0) 
;;     (f141 0) 
;;     (f142 0) 
;;     (f143 0) 
;;     (f104@1 1) 
;;     (f103@1 false) 
;;     (f102@1 false) 
;;     (f101@1 false) 
;;     (f100@1 false) 
;;     (f99@1 false) 
;;     (f98@1 false) 
;;     (f97@1 false) 
;;     (f96@1 false) 
;;     (f95@1 false) 
;;     (f94@1 false) 
;;     (f93@1 false) 
;;     (f92@1 true) 
;;     (f154@0 false) 
;;     (f155@0 false) 
;;     (f156@0 false) 
;;     (f157@0 1) 
;;     (f158@0 false) 
;;     (f153@0 1) 
;;     (f152@0 true) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 2) 
;;     (f147@0 0) 
;;     (f146@0 0) 
;;     (f145@0 0) 
;;     (f144@0 0) 
;;     (f90@0 false) 
;;     (f105@0 true) 
;;     (f113 0) 
;;     (f114 0) 
;;     (f115 0) 
;;     (f116 0) 
;;     (f117 0) 
;;     (f118 0) 
;;     (f119 0) 
;;     (f120 0) 
;;     (f121 0) 
;;     (f122 0) 
;;     (f123 0) 
;;     (f124 0) 
;;     (f125 0) 
;;     (f126 0) 
;;     (f127 0) 
;;     (f128 0) 
;;     (f129 0) 
;;     (f130 0) 
;;     (f131 0) 
;;     (f132 0) 
;;     (f133 0) 
;;     (f134 0) 
;;     (f135 0) 
;;     (f136 0) 
;;     (f137 0) 
;;     (f138 0) 
;;     (f139 0) 
;;     (f140 0) 
;;     (f141 0) 
;;     (f142 0) 
;;     (f143 0) 
;;     (f104@0 0) 
;;     (f103@0 false) 
;;     (f102@0 false) 
;;     (f101@0 false) 
;;     (f100@0 false) 
;;     (f99@0 false) 
;;     (f98@0 false) 
;;     (f97@0 false) 
;;     (f96@0 false) 
;;     (f95@0 false) 
;;     (f94@0 false) 
;;     (f93@0 false) 
;;     (f92@0 false)) 

(pop 1)
;; Success 

(assert (not __ic3_fwd_prop_0))
;; Success 

;; partition_fwd_prop: Checking for forward propagation of clause set 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for fwd_prop 1 

(declare-fun __ic3_fwd_prop_1 () Bool)
;; Success 

(assert
 (=>
 __ic3_fwd_prop_1
 (not
  (and
   (or (not f152@1) (not (> (+ (* 1 f145@1) (* (- 1) f153@1)) 0)))
   (or
    (not f152@1)
    (not
     (>
      (+
       (* 1 f144@1)
       (* 1 f145@1)
       (* 1 f146@1)
       (* 1 f147@1)
       (* (- 1) f153@1))
      0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f145@1) (* 1 f146@1) (* (- 1) f153@1) (- 1)) 0)))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c247))
;; Success 

(assert (! __ic3_fwd_prop_1 :named c248))
;; Success 

(assert (! __ic3_clause_5_p0 :named c249))
;; Success 

(assert (! __ic3_clause_7_p0 :named c250))
;; Success 

(assert (! __ic3_clause_9_p0 :named c251))
;; Success 

(assert (! __ic3_clause_11_p0 :named c252))
;; Success 

(check-sat)
;; Sat 

(get-value
 (f154@1
  f155@1
  f156@1
  f157@1
  f158@1
  f153@1
  f152@1
  f151@1
  f150@1
  f149@1
  f148@1
  f147@1
  f146@1
  f145@1
  f144@1
  f90@1
  f105@1
  f113
  f114
  f115
  f116
  f117
  f118
  f119
  f120
  f121
  f122
  f123
  f124
  f125
  f126
  f127
  f128
  f129
  f130
  f131
  f132
  f133
  f134
  f135
  f136
  f137
  f138
  f139
  f140
  f141
  f142
  f143
  f104@1
  f103@1
  f102@1
  f101@1
  f100@1
  f99@1
  f98@1
  f97@1
  f96@1
  f95@1
  f94@1
  f93@1
  f92@1
  f154@0
  f155@0
  f156@0
  f157@0
  f158@0
  f153@0
  f152@0
  f151@0
  f150@0
  f149@0
  f148@0
  f147@0
  f146@0
  f145@0
  f144@0
  f90@0
  f105@0
  f113
  f114
  f115
  f116
  f117
  f118
  f119
  f120
  f121
  f122
  f123
  f124
  f125
  f126
  f127
  f128
  f129
  f130
  f131
  f132
  f133
  f134
  f135
  f136
  f137
  f138
  f139
  f140
  f141
  f142
  f143
  f104@0
  f103@0
  f102@0
  f101@0
  f100@0
  f99@0
  f98@0
  f97@0
  f96@0
  f95@0
  f94@0
  f93@0
  f92@0))
;; ((f154@1 false) 
;;     (f155@1 false) 
;;     (f156@1 false) 
;;     (f157@1 1) 
;;     (f158@1 false) 
;;     (f153@1 2) 
;;     (f152@1 true) 
;;     (f151@1 true) 
;;     (f150@1 true) 
;;     (f149@1 false) 
;;     (f148@1 1) 
;;     (f147@1 0) 
;;     (f146@1 1) 
;;     (f145@1 2) 
;;     (f144@1 0) 
;;     (f90@1 false) 
;;     (f105@1 true) 
;;     (f113 0) 
;;     (f114 0) 
;;     (f115 0) 
;;     (f116 0) 
;;     (f117 0) 
;;     (f118 0) 
;;     (f119 0) 
;;     (f120 0) 
;;     (f121 0) 
;;     (f122 0) 
;;     (f123 0) 
;;     (f124 0) 
;;     (f125 0) 
;;     (f126 0) 
;;     (f127 0) 
;;     (f128 0) 
;;     (f129 0) 
;;     (f130 0) 
;;     (f131 0) 
;;     (f132 0) 
;;     (f133 0) 
;;     (f134 0) 
;;     (f135 0) 
;;     (f136 0) 
;;     (f137 0) 
;;     (f138 0) 
;;     (f139 0) 
;;     (f140 0) 
;;     (f141 0) 
;;     (f142 0) 
;;     (f143 0) 
;;     (f104@1 1) 
;;     (f103@1 false) 
;;     (f102@1 false) 
;;     (f101@1 false) 
;;     (f100@1 false) 
;;     (f99@1 false) 
;;     (f98@1 false) 
;;     (f97@1 false) 
;;     (f96@1 false) 
;;     (f95@1 false) 
;;     (f94@1 false) 
;;     (f93@1 true) 
;;     (f92@1 false) 
;;     (f154@0 false) 
;;     (f155@0 false) 
;;     (f156@0 false) 
;;     (f157@0 1) 
;;     (f158@0 false) 
;;     (f153@0 2) 
;;     (f152@0 true) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 2) 
;;     (f147@0 0) 
;;     (f146@0 1) 
;;     (f145@0 1) 
;;     (f144@0 0) 
;;     (f90@0 false) 
;;     (f105@0 true) 
;;     (f113 0) 
;;     (f114 0) 
;;     (f115 0) 
;;     (f116 0) 
;;     (f117 0) 
;;     (f118 0) 
;;     (f119 0) 
;;     (f120 0) 
;;     (f121 0) 
;;     (f122 0) 
;;     (f123 0) 
;;     (f124 0) 
;;     (f125 0) 
;;     (f126 0) 
;;     (f127 0) 
;;     (f128 0) 
;;     (f129 0) 
;;     (f130 0) 
;;     (f131 0) 
;;     (f132 0) 
;;     (f133 0) 
;;     (f134 0) 
;;     (f135 0) 
;;     (f136 0) 
;;     (f137 0) 
;;     (f138 0) 
;;     (f139 0) 
;;     (f140 0) 
;;     (f141 0) 
;;     (f142 0) 
;;     (f143 0) 
;;     (f104@0 0) 
;;     (f103@0 false) 
;;     (f102@0 false) 
;;     (f101@0 false) 
;;     (f100@0 false) 
;;     (f99@0 false) 
;;     (f98@0 false) 
;;     (f97@0 false) 
;;     (f96@0 false) 
;;     (f95@0 false) 
;;     (f94@0 false) 
;;     (f93@0 false) 
;;     (f92@0 false)) 

(pop 1)
;; Success 

(assert (not __ic3_fwd_prop_1))
;; Success 

;; partition_fwd_prop: Checking for forward propagation of clause set 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for fwd_prop 2 

(declare-fun __ic3_fwd_prop_2 () Bool)
;; Success 

(assert
 (=>
 __ic3_fwd_prop_2
 (not
  (and
   (or (not f152@1) (not (> (+ (* 1 f145@1) (* (- 1) f153@1)) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f145@1) (* 1 f146@1) (* (- 1) f153@1) (- 1)) 0)))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c253))
;; Success 

(assert (! __ic3_fwd_prop_2 :named c254))
;; Success 

(assert (! __ic3_clause_5_p0 :named c255))
;; Success 

(assert (! __ic3_clause_7_p0 :named c256))
;; Success 

(assert (! __ic3_clause_9_p0 :named c257))
;; Success 

(assert (! __ic3_clause_11_p0 :named c258))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_fwd_prop_2))
;; Success 

;; check_frames: Does R_1 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c259))
;; Success 

(assert (! __ic3_clause_5_p0 :named c260))
;; Success 

(assert (! __ic3_clause_7_p0 :named c261))
;; Success 

(assert (! __ic3_clause_9_p0 :named c262))
;; Success 

(assert (! __ic3_clause_11_p0 :named c263))
;; Success 

(assert (! __ic3_clause_5_p0 :named c264))
;; Success 

(assert (! __ic3_clause_11_p0 :named c265))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c266))
;; Success 

(assert (! __ic3_clause_5_n0_0 :named c267))
;; Success 

(assert (! __ic3_clause_5_n0_1 :named c268))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c269))
;; Success 

(assert (! __ic3_clause_7_n0_0 :named c270))
;; Success 

(assert (! __ic3_clause_7_n0_1 :named c271))
;; Success 

(assert (! __ic3_clause_7_n0_2 :named c272))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c273))
;; Success 

(assert (! __ic3_clause_9_n0_0 :named c274))
;; Success 

(assert (! __ic3_clause_9_n0_1 :named c275))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c276))
;; Success 

(assert (! __ic3_clause_11_n0_0 :named c277))
;; Success 

(assert (! __ic3_clause_11_n0_1 :named c278))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_0 & T |= R_1 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 6 

(declare-fun __ic3_check_frames_6 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_6
 (not
  (and
   f105@1
   (or (not f152@1) (not (> (+ (* 1 f145@1) (* (- 1) f153@1)) 0)))
   (or
    (not f152@1)
    (not (> (* 1 f148@1) 0))
    (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 1) 0)))
   (or
    (not f152@1)
    (not
     (>
      (+
       (* 1 f144@1)
       (* 1 f145@1)
       (* 1 f146@1)
       (* 1 f147@1)
       (* (- 1) f153@1))
      0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f145@1) (* 1 f146@1) (* (- 1) f153@1) (- 1)) 0)))
   (or (not f152@1) (not (> (+ (* 1 f145@1) (* (- 1) f153@1)) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f145@1) (* 1 f146@1) (* (- 1) f153@1) (- 1)) 0)))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_6 :named c279))
;; Success 

(assert (! __ic3_frame_0 :named c280))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_6))
;; Success 

;; fwd_propagate: Checking forward propagation of clauses before generalization in frame 1. 

;; Copied clause #6 in forward propagation: 
;; #12 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (* 1 top.res.abs_4@0) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_1@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* 1 top.res.abs_0@0) 
;;         (* 1 top.res.abs_1@0) 
;;         (* (- 1) top.res.abs_9@0) 
;;         1) 
;;        0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* 1 top.res.abs_0@0) 
;;         (* (- 1) top.res.abs_1@0) 
;;         (* 1 top.res.abs_2@0) 
;;         (* 1 top.res.abs_3@0) 
;;         1) 
;;        0))} 

;; Copied clause #8 in forward propagation: 
;; #13 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (* 1 top.res.abs_4@0) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_1@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* (- 1) top.res.abs_0@0) 
;;         (* (- 1) top.res.abs_1@0) 
;;         (* 1 top.res.abs_9@0)) 
;;        0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* 1 top.res.abs_0@0) 
;;         (* 1 top.res.abs_1@0) 
;;         (* 1 top.res.abs_2@0) 
;;         (* 1 top.res.abs_3@0) 
;;         (* (- 1) top.res.abs_9@0)) 
;;        0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* 1 top.res.abs_0@0) 
;;         (* 1 top.res.abs_1@0) 
;;         (* 1 top.res.abs_2@0) 
;;         (* 1 top.res.abs_3@0)) 
;;        0))} 

(declare-fun __ic3_clause_13_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_13_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (* 1 f148@0) 0))
  (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
  (not
   (>
    (+ (* 1 f144@0) (* 1 f145@0) (* 1 f146@0) (* 1 f147@0) (* (- 1) f153@0))
    0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* 1 f146@0) (* 1 f147@0)) 0)))))
;; Success 

(declare-fun __ic3_clause_12_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_12_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (* 1 f148@0) 0))
  (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0)))))
;; Success 

;; partition_fwd_prop: Checking for forward propagation of clause set 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for fwd_prop 3 

(declare-fun __ic3_fwd_prop_3 () Bool)
;; Success 

(assert
 (=>
 __ic3_fwd_prop_3
 (not
  (and
   (or
    (not f105@1)
    (not f152@1)
    (not (> (* 1 f148@1) 0))
    (not (> (+ (* (- 1) f145@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1)) 0))
    (not
     (>
      (+
       (* 1 f144@1)
       (* 1 f145@1)
       (* 1 f146@1)
       (* 1 f147@1)
       (* (- 1) f153@1))
      0))
    (not (> (+ (* 1 f144@1) (* 1 f145@1) (* 1 f146@1) (* 1 f147@1)) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (* 1 f148@1) 0))
    (not (> (+ (* (- 1) f145@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0)))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c281))
;; Success 

(assert (! __ic3_fwd_prop_3 :named c282))
;; Success 

(assert (! __ic3_clause_7_p0 :named c283))
;; Success 

(assert (! __ic3_clause_9_p0 :named c284))
;; Success 

(assert (! __ic3_clause_5_p0 :named c285))
;; Success 

(assert (! __ic3_clause_11_p0 :named c286))
;; Success 

(assert (! __ic3_clause_13_p0 :named c287))
;; Success 

(assert (! __ic3_clause_12_p0 :named c288))
;; Success 

(check-sat)
;; Sat 

(get-value
 (f154@1
  f155@1
  f156@1
  f157@1
  f158@1
  f153@1
  f152@1
  f151@1
  f150@1
  f149@1
  f148@1
  f147@1
  f146@1
  f145@1
  f144@1
  f90@1
  f105@1
  f113
  f114
  f115
  f116
  f117
  f118
  f119
  f120
  f121
  f122
  f123
  f124
  f125
  f126
  f127
  f128
  f129
  f130
  f131
  f132
  f133
  f134
  f135
  f136
  f137
  f138
  f139
  f140
  f141
  f142
  f143
  f104@1
  f103@1
  f102@1
  f101@1
  f100@1
  f99@1
  f98@1
  f97@1
  f96@1
  f95@1
  f94@1
  f93@1
  f92@1
  f154@0
  f155@0
  f156@0
  f157@0
  f158@0
  f153@0
  f152@0
  f151@0
  f150@0
  f149@0
  f148@0
  f147@0
  f146@0
  f145@0
  f144@0
  f90@0
  f105@0
  f113
  f114
  f115
  f116
  f117
  f118
  f119
  f120
  f121
  f122
  f123
  f124
  f125
  f126
  f127
  f128
  f129
  f130
  f131
  f132
  f133
  f134
  f135
  f136
  f137
  f138
  f139
  f140
  f141
  f142
  f143
  f104@0
  f103@0
  f102@0
  f101@0
  f100@0
  f99@0
  f98@0
  f97@0
  f96@0
  f95@0
  f94@0
  f93@0
  f92@0))
;; ((f154@1 false) 
;;     (f155@1 false) 
;;     (f156@1 false) 
;;     (f157@1 2) 
;;     (f158@1 false) 
;;     (f153@1 1) 
;;     (f152@1 true) 
;;     (f151@1 true) 
;;     (f150@1 true) 
;;     (f149@1 false) 
;;     (f148@1 1) 
;;     (f147@1 0) 
;;     (f146@1 0) 
;;     (f145@1 0) 
;;     (f144@1 1) 
;;     (f90@1 false) 
;;     (f105@1 true) 
;;     (f113 0) 
;;     (f114 0) 
;;     (f115 0) 
;;     (f116 0) 
;;     (f117 0) 
;;     (f118 0) 
;;     (f119 0) 
;;     (f120 0) 
;;     (f121 0) 
;;     (f122 0) 
;;     (f123 0) 
;;     (f124 0) 
;;     (f125 0) 
;;     (f126 0) 
;;     (f127 0) 
;;     (f128 0) 
;;     (f129 0) 
;;     (f130 0) 
;;     (f131 0) 
;;     (f132 0) 
;;     (f133 0) 
;;     (f134 0) 
;;     (f135 0) 
;;     (f136 0) 
;;     (f137 0) 
;;     (f138 0) 
;;     (f139 0) 
;;     (f140 0) 
;;     (f141 0) 
;;     (f142 0) 
;;     (f143 0) 
;;     (f104@1 1) 
;;     (f103@1 false) 
;;     (f102@1 false) 
;;     (f101@1 false) 
;;     (f100@1 false) 
;;     (f99@1 false) 
;;     (f98@1 false) 
;;     (f97@1 false) 
;;     (f96@1 false) 
;;     (f95@1 false) 
;;     (f94@1 false) 
;;     (f93@1 false) 
;;     (f92@1 true) 
;;     (f154@0 false) 
;;     (f155@0 false) 
;;     (f156@0 false) 
;;     (f157@0 2) 
;;     (f158@0 false) 
;;     (f153@0 1) 
;;     (f152@0 true) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 2) 
;;     (f147@0 0) 
;;     (f146@0 0) 
;;     (f145@0 0) 
;;     (f144@0 0) 
;;     (f90@0 false) 
;;     (f105@0 true) 
;;     (f113 0) 
;;     (f114 0) 
;;     (f115 0) 
;;     (f116 0) 
;;     (f117 0) 
;;     (f118 0) 
;;     (f119 0) 
;;     (f120 0) 
;;     (f121 0) 
;;     (f122 0) 
;;     (f123 0) 
;;     (f124 0) 
;;     (f125 0) 
;;     (f126 0) 
;;     (f127 0) 
;;     (f128 0) 
;;     (f129 0) 
;;     (f130 0) 
;;     (f131 0) 
;;     (f132 0) 
;;     (f133 0) 
;;     (f134 0) 
;;     (f135 0) 
;;     (f136 0) 
;;     (f137 0) 
;;     (f138 0) 
;;     (f139 0) 
;;     (f140 0) 
;;     (f141 0) 
;;     (f142 0) 
;;     (f143 0) 
;;     (f104@0 0) 
;;     (f103@0 false) 
;;     (f102@0 false) 
;;     (f101@0 false) 
;;     (f100@0 false) 
;;     (f99@0 false) 
;;     (f98@0 false) 
;;     (f97@0 false) 
;;     (f96@0 false) 
;;     (f95@0 false) 
;;     (f94@0 false) 
;;     (f93@0 false) 
;;     (f92@0 false)) 

(pop 1)
;; Success 

(assert (not __ic3_fwd_prop_3))
;; Success 

;; partition_fwd_prop: Checking for forward propagation of clause set 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for fwd_prop 4 

(declare-fun __ic3_fwd_prop_4 () Bool)
;; Success 

(assert
 (=>
 __ic3_fwd_prop_4
 (not
  (or
   (not f105@1)
   (not f152@1)
   (not (> (* 1 f148@1) 0))
   (not (> (+ (* (- 1) f145@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1)) 0))
   (not
    (>
     (+ (* 1 f144@1) (* 1 f145@1) (* 1 f146@1) (* 1 f147@1) (* (- 1) f153@1))
     0))
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* 1 f146@1) (* 1 f147@1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c289))
;; Success 

(assert (! __ic3_fwd_prop_4 :named c290))
;; Success 

(assert (! __ic3_clause_7_p0 :named c291))
;; Success 

(assert (! __ic3_clause_9_p0 :named c292))
;; Success 

(assert (! __ic3_clause_5_p0 :named c293))
;; Success 

(assert (! __ic3_clause_11_p0 :named c294))
;; Success 

(assert (! __ic3_clause_13_p0 :named c295))
;; Success 

(assert (! __ic3_clause_12_p0 :named c296))
;; Success 

(check-sat)
;; Sat 

(get-value
 (f154@1
  f155@1
  f156@1
  f157@1
  f158@1
  f153@1
  f152@1
  f151@1
  f150@1
  f149@1
  f148@1
  f147@1
  f146@1
  f145@1
  f144@1
  f90@1
  f105@1
  f113
  f114
  f115
  f116
  f117
  f118
  f119
  f120
  f121
  f122
  f123
  f124
  f125
  f126
  f127
  f128
  f129
  f130
  f131
  f132
  f133
  f134
  f135
  f136
  f137
  f138
  f139
  f140
  f141
  f142
  f143
  f104@1
  f103@1
  f102@1
  f101@1
  f100@1
  f99@1
  f98@1
  f97@1
  f96@1
  f95@1
  f94@1
  f93@1
  f92@1
  f154@0
  f155@0
  f156@0
  f157@0
  f158@0
  f153@0
  f152@0
  f151@0
  f150@0
  f149@0
  f148@0
  f147@0
  f146@0
  f145@0
  f144@0
  f90@0
  f105@0
  f113
  f114
  f115
  f116
  f117
  f118
  f119
  f120
  f121
  f122
  f123
  f124
  f125
  f126
  f127
  f128
  f129
  f130
  f131
  f132
  f133
  f134
  f135
  f136
  f137
  f138
  f139
  f140
  f141
  f142
  f143
  f104@0
  f103@0
  f102@0
  f101@0
  f100@0
  f99@0
  f98@0
  f97@0
  f96@0
  f95@0
  f94@0
  f93@0
  f92@0))
;; ((f154@1 false) 
;;     (f155@1 false) 
;;     (f156@1 false) 
;;     (f157@1 2) 
;;     (f158@1 false) 
;;     (f153@1 0) 
;;     (f152@1 true) 
;;     (f151@1 true) 
;;     (f150@1 true) 
;;     (f149@1 false) 
;;     (f148@1 1) 
;;     (f147@1 0) 
;;     (f146@1 2) 
;;     (f145@1 (- 1)) 
;;     (f144@1 0) 
;;     (f90@1 false) 
;;     (f105@1 true) 
;;     (f113 0) 
;;     (f114 0) 
;;     (f115 0) 
;;     (f116 0) 
;;     (f117 0) 
;;     (f118 0) 
;;     (f119 0) 
;;     (f120 0) 
;;     (f121 0) 
;;     (f122 0) 
;;     (f123 0) 
;;     (f124 0) 
;;     (f125 0) 
;;     (f126 0) 
;;     (f127 0) 
;;     (f128 0) 
;;     (f129 0) 
;;     (f130 0) 
;;     (f131 0) 
;;     (f132 0) 
;;     (f133 0) 
;;     (f134 0) 
;;     (f135 0) 
;;     (f136 0) 
;;     (f137 0) 
;;     (f138 0) 
;;     (f139 0) 
;;     (f140 0) 
;;     (f141 0) 
;;     (f142 0) 
;;     (f143 0) 
;;     (f104@1 1) 
;;     (f103@1 false) 
;;     (f102@1 false) 
;;     (f101@1 false) 
;;     (f100@1 false) 
;;     (f99@1 false) 
;;     (f98@1 false) 
;;     (f97@1 false) 
;;     (f96@1 false) 
;;     (f95@1 false) 
;;     (f94@1 false) 
;;     (f93@1 true) 
;;     (f92@1 false) 
;;     (f154@0 false) 
;;     (f155@0 false) 
;;     (f156@0 false) 
;;     (f157@0 2) 
;;     (f158@0 false) 
;;     (f153@0 0) 
;;     (f152@0 true) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 2) 
;;     (f147@0 1) 
;;     (f146@0 1) 
;;     (f145@0 0) 
;;     (f144@0 (- 2)) 
;;     (f90@0 false) 
;;     (f105@0 true) 
;;     (f113 0) 
;;     (f114 0) 
;;     (f115 0) 
;;     (f116 0) 
;;     (f117 0) 
;;     (f118 0) 
;;     (f119 0) 
;;     (f120 0) 
;;     (f121 0) 
;;     (f122 0) 
;;     (f123 0) 
;;     (f124 0) 
;;     (f125 0) 
;;     (f126 0) 
;;     (f127 0) 
;;     (f128 0) 
;;     (f129 0) 
;;     (f130 0) 
;;     (f131 0) 
;;     (f132 0) 
;;     (f133 0) 
;;     (f134 0) 
;;     (f135 0) 
;;     (f136 0) 
;;     (f137 0) 
;;     (f138 0) 
;;     (f139 0) 
;;     (f140 0) 
;;     (f141 0) 
;;     (f142 0) 
;;     (f143 0) 
;;     (f104@0 0) 
;;     (f103@0 false) 
;;     (f102@0 false) 
;;     (f101@0 false) 
;;     (f100@0 false) 
;;     (f99@0 false) 
;;     (f98@0 false) 
;;     (f97@0 false) 
;;     (f96@0 false) 
;;     (f95@0 false) 
;;     (f94@0 false) 
;;     (f93@0 false) 
;;     (f92@0 false)) 

(pop 1)
;; Success 

(assert (not __ic3_fwd_prop_4))
;; Success 

;; Deactivating activation literals for clause 

(assert (not __ic3_clause_12_p0))
;; Success 

;; Deactivating activation literals for clause 

(assert (not __ic3_clause_13_p0))
;; Success 

;; subsume_and_add: clause 7 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 42 

(declare-fun __ic3_ind_gen_42 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_42
 (not
  (or
   (not (> (* 1 f148@1) 0))
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 43 

(declare-fun __ic3_ind_gen_43 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_43
 (not
  (or
   (not (> (* 1 f148@0) 0))
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 44 

(declare-fun __ic3_ind_gen_44 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_44
 (or
  (not (> (* 1 f148@0) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 1) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_43 :named c297))
;; Success 

(assert (! __ic3_frame_0 :named c298))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c299))
;; Success 

(assert (! __ic3_ind_gen_44 :named c300))
;; Success 

(assert (! __ic3_ind_gen_42 :named c301))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_44))
;; Success 

(assert (not __ic3_ind_gen_43))
;; Success 

(assert (not __ic3_ind_gen_42))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 45 

(declare-fun __ic3_ind_gen_45 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_45
 (not
  (or
   (not f152@1)
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 46 

(declare-fun __ic3_ind_gen_46 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_46
 (not
  (or
   (not f152@0)
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 47 

(declare-fun __ic3_ind_gen_47 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_47
 (or
  (not f152@0)
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 1) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_46 :named c302))
;; Success 

(assert (! __ic3_frame_0 :named c303))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c304))
;; Success 

(assert (! __ic3_ind_gen_47 :named c305))
;; Success 

(assert (! __ic3_ind_gen_45 :named c306))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_47))
;; Success 

(assert (not __ic3_ind_gen_46))
;; Success 

(assert (not __ic3_ind_gen_45))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 48 

(declare-fun __ic3_ind_gen_48 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_48 (not (or (not (> (* 1 f148@1) 0)) (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 49 

(declare-fun __ic3_ind_gen_49 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_49 (not (or (not (> (* 1 f148@0) 0)) (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 50 

(declare-fun __ic3_ind_gen_50 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_50 (or (not (> (* 1 f148@0) 0)) (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_49 :named c307))
;; Success 

(assert (! __ic3_frame_0 :named c308))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_50))
;; Success 

(assert (not __ic3_ind_gen_49))
;; Success 

(assert (not __ic3_ind_gen_48))
;; Success 

;; subsume_and_add: clause 9 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 51 

(declare-fun __ic3_ind_gen_51 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_51
 (>
  (+ (* 1 f144@1) (* 1 f145@1) (* 1 f146@1) (* 1 f147@1) (* (- 1) f153@1))
  0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 52 

(declare-fun __ic3_ind_gen_52 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_52
 (>
  (+ (* 1 f144@0) (* 1 f145@0) (* 1 f146@0) (* 1 f147@0) (* (- 1) f153@0))
  0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 53 

(declare-fun __ic3_ind_gen_53 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_53
 (not
  (>
   (+ (* 1 f144@0) (* 1 f145@0) (* 1 f146@0) (* 1 f147@0) (* (- 1) f153@0))
   0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_52 :named c309))
;; Success 

(assert (! __ic3_frame_0 :named c310))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_53))
;; Success 

(assert (not __ic3_ind_gen_52))
;; Success 

(assert (not __ic3_ind_gen_51))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 54 

(declare-fun __ic3_ind_gen_54 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_54 f152@1))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 55 

(declare-fun __ic3_ind_gen_55 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_55 f152@0))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 56 

(declare-fun __ic3_ind_gen_56 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_56 (not f152@0)))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_55 :named c311))
;; Success 

(assert (! __ic3_frame_0 :named c312))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_56))
;; Success 

(assert (not __ic3_ind_gen_55))
;; Success 

(assert (not __ic3_ind_gen_54))
;; Success 

;; fwd_propagate: Checking for inductiveness of clauses in last frame. 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for is_ind 0 

(declare-fun __ic3_is_ind_0 () Bool)
;; Success 

(assert
 (=>
 __ic3_is_ind_0
 (not
  (and
   (or (not f152@1) (not (> (+ (* 1 f145@1) (* (- 1) f153@1)) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f145@1) (* 1 f146@1) (* (- 1) f153@1) (- 1)) 0)))))))
;; Success 

;; Checking for inductiveness of clauses 

(push 1)
;; Success 

(assert (! __ic3_is_ind_0 :named c313))
;; Success 

(assert (! __ic3_clause_5_p0 :named c314))
;; Success 

(assert (! __ic3_clause_11_p0 :named c315))
;; Success 

(check-sat)
;; Sat 

(get-value
 (f154@1
  f155@1
  f156@1
  f157@1
  f158@1
  f153@1
  f152@1
  f151@1
  f150@1
  f149@1
  f148@1
  f147@1
  f146@1
  f145@1
  f144@1
  f90@1
  f105@1
  f113
  f114
  f115
  f116
  f117
  f118
  f119
  f120
  f121
  f122
  f123
  f124
  f125
  f126
  f127
  f128
  f129
  f130
  f131
  f132
  f133
  f134
  f135
  f136
  f137
  f138
  f139
  f140
  f141
  f142
  f143
  f104@1
  f103@1
  f102@1
  f101@1
  f100@1
  f99@1
  f98@1
  f97@1
  f96@1
  f95@1
  f94@1
  f93@1
  f92@1
  f154@0
  f155@0
  f156@0
  f157@0
  f158@0
  f153@0
  f152@0
  f151@0
  f150@0
  f149@0
  f148@0
  f147@0
  f146@0
  f145@0
  f144@0
  f90@0
  f105@0
  f113
  f114
  f115
  f116
  f117
  f118
  f119
  f120
  f121
  f122
  f123
  f124
  f125
  f126
  f127
  f128
  f129
  f130
  f131
  f132
  f133
  f134
  f135
  f136
  f137
  f138
  f139
  f140
  f141
  f142
  f143
  f104@0
  f103@0
  f102@0
  f101@0
  f100@0
  f99@0
  f98@0
  f97@0
  f96@0
  f95@0
  f94@0
  f93@0
  f92@0))
;; ((f154@1 false) 
;;     (f155@1 false) 
;;     (f156@1 false) 
;;     (f157@1 1) 
;;     (f158@1 false) 
;;     (f153@1 0) 
;;     (f152@1 true) 
;;     (f151@1 true) 
;;     (f150@1 true) 
;;     (f149@1 false) 
;;     (f148@1 0) 
;;     (f147@1 0) 
;;     (f146@1 0) 
;;     (f145@1 1) 
;;     (f144@1 0) 
;;     (f90@1 false) 
;;     (f105@1 false) 
;;     (f113 0) 
;;     (f114 0) 
;;     (f115 0) 
;;     (f116 0) 
;;     (f117 0) 
;;     (f118 0) 
;;     (f119 0) 
;;     (f120 0) 
;;     (f121 0) 
;;     (f122 0) 
;;     (f123 0) 
;;     (f124 0) 
;;     (f125 0) 
;;     (f126 0) 
;;     (f127 0) 
;;     (f128 0) 
;;     (f129 0) 
;;     (f130 0) 
;;     (f131 0) 
;;     (f132 0) 
;;     (f133 0) 
;;     (f134 0) 
;;     (f135 0) 
;;     (f136 0) 
;;     (f137 0) 
;;     (f138 0) 
;;     (f139 0) 
;;     (f140 0) 
;;     (f141 0) 
;;     (f142 0) 
;;     (f143 0) 
;;     (f104@1 1) 
;;     (f103@1 false) 
;;     (f102@1 false) 
;;     (f101@1 false) 
;;     (f100@1 false) 
;;     (f99@1 false) 
;;     (f98@1 false) 
;;     (f97@1 false) 
;;     (f96@1 false) 
;;     (f95@1 false) 
;;     (f94@1 false) 
;;     (f93@1 true) 
;;     (f92@1 false) 
;;     (f154@0 false) 
;;     (f155@0 false) 
;;     (f156@0 false) 
;;     (f157@0 1) 
;;     (f158@0 false) 
;;     (f153@0 0) 
;;     (f152@0 true) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 1) 
;;     (f147@0 0) 
;;     (f146@0 0) 
;;     (f145@0 0) 
;;     (f144@0 0) 
;;     (f90@0 false) 
;;     (f105@0 false) 
;;     (f113 0) 
;;     (f114 0) 
;;     (f115 0) 
;;     (f116 0) 
;;     (f117 0) 
;;     (f118 0) 
;;     (f119 0) 
;;     (f120 0) 
;;     (f121 0) 
;;     (f122 0) 
;;     (f123 0) 
;;     (f124 0) 
;;     (f125 0) 
;;     (f126 0) 
;;     (f127 0) 
;;     (f128 0) 
;;     (f129 0) 
;;     (f130 0) 
;;     (f131 0) 
;;     (f132 0) 
;;     (f133 0) 
;;     (f134 0) 
;;     (f135 0) 
;;     (f136 0) 
;;     (f137 0) 
;;     (f138 0) 
;;     (f139 0) 
;;     (f140 0) 
;;     (f141 0) 
;;     (f142 0) 
;;     (f143 0) 
;;     (f104@0 0) 
;;     (f103@0 false) 
;;     (f102@0 false) 
;;     (f101@0 false) 
;;     (f100@0 false) 
;;     (f99@0 false) 
;;     (f98@0 false) 
;;     (f97@0 false) 
;;     (f96@0 false) 
;;     (f95@0 false) 
;;     (f94@0 false) 
;;     (f93@0 false) 
;;     (f92@0 false)) 

(pop 1)
;; Success 

(assert (not __ic3_is_ind_0))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for is_ind 1 

(declare-fun __ic3_is_ind_1 () Bool)
;; Success 

(assert
 (=>
 __ic3_is_ind_1
 (not
  (or
   (not f152@1)
   (not (> (+ (* 1 f145@1) (* 1 f146@1) (* (- 1) f153@1) (- 1)) 0))))))
;; Success 

;; Checking for inductiveness of clauses 

(push 1)
;; Success 

(assert (! __ic3_is_ind_1 :named c316))
;; Success 

(assert (! __ic3_clause_11_p0 :named c317))
;; Success 

(check-sat)
;; Sat 

(get-value
 (f154@1
  f155@1
  f156@1
  f157@1
  f158@1
  f153@1
  f152@1
  f151@1
  f150@1
  f149@1
  f148@1
  f147@1
  f146@1
  f145@1
  f144@1
  f90@1
  f105@1
  f113
  f114
  f115
  f116
  f117
  f118
  f119
  f120
  f121
  f122
  f123
  f124
  f125
  f126
  f127
  f128
  f129
  f130
  f131
  f132
  f133
  f134
  f135
  f136
  f137
  f138
  f139
  f140
  f141
  f142
  f143
  f104@1
  f103@1
  f102@1
  f101@1
  f100@1
  f99@1
  f98@1
  f97@1
  f96@1
  f95@1
  f94@1
  f93@1
  f92@1
  f154@0
  f155@0
  f156@0
  f157@0
  f158@0
  f153@0
  f152@0
  f151@0
  f150@0
  f149@0
  f148@0
  f147@0
  f146@0
  f145@0
  f144@0
  f90@0
  f105@0
  f113
  f114
  f115
  f116
  f117
  f118
  f119
  f120
  f121
  f122
  f123
  f124
  f125
  f126
  f127
  f128
  f129
  f130
  f131
  f132
  f133
  f134
  f135
  f136
  f137
  f138
  f139
  f140
  f141
  f142
  f143
  f104@0
  f103@0
  f102@0
  f101@0
  f100@0
  f99@0
  f98@0
  f97@0
  f96@0
  f95@0
  f94@0
  f93@0
  f92@0))
;; ((f154@1 false) 
;;     (f155@1 false) 
;;     (f156@1 false) 
;;     (f157@1 1) 
;;     (f158@1 false) 
;;     (f153@1 0) 
;;     (f152@1 true) 
;;     (f151@1 true) 
;;     (f150@1 true) 
;;     (f149@1 false) 
;;     (f148@1 0) 
;;     (f147@1 0) 
;;     (f146@1 1) 
;;     (f145@1 1) 
;;     (f144@1 0) 
;;     (f90@1 false) 
;;     (f105@1 false) 
;;     (f113 0) 
;;     (f114 0) 
;;     (f115 0) 
;;     (f116 0) 
;;     (f117 0) 
;;     (f118 0) 
;;     (f119 0) 
;;     (f120 0) 
;;     (f121 0) 
;;     (f122 0) 
;;     (f123 0) 
;;     (f124 0) 
;;     (f125 0) 
;;     (f126 0) 
;;     (f127 0) 
;;     (f128 0) 
;;     (f129 0) 
;;     (f130 0) 
;;     (f131 0) 
;;     (f132 0) 
;;     (f133 0) 
;;     (f134 0) 
;;     (f135 0) 
;;     (f136 0) 
;;     (f137 0) 
;;     (f138 0) 
;;     (f139 0) 
;;     (f140 0) 
;;     (f141 0) 
;;     (f142 0) 
;;     (f143 0) 
;;     (f104@1 1) 
;;     (f103@1 false) 
;;     (f102@1 false) 
;;     (f101@1 false) 
;;     (f100@1 false) 
;;     (f99@1 false) 
;;     (f98@1 false) 
;;     (f97@1 false) 
;;     (f96@1 false) 
;;     (f95@1 false) 
;;     (f94@1 false) 
;;     (f93@1 true) 
;;     (f92@1 false) 
;;     (f154@0 false) 
;;     (f155@0 false) 
;;     (f156@0 false) 
;;     (f157@0 1) 
;;     (f158@0 false) 
;;     (f153@0 0) 
;;     (f152@0 true) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 1) 
;;     (f147@0 1) 
;;     (f146@0 0) 
;;     (f145@0 0) 
;;     (f144@0 0) 
;;     (f90@0 false) 
;;     (f105@0 false) 
;;     (f113 0) 
;;     (f114 0) 
;;     (f115 0) 
;;     (f116 0) 
;;     (f117 0) 
;;     (f118 0) 
;;     (f119 0) 
;;     (f120 0) 
;;     (f121 0) 
;;     (f122 0) 
;;     (f123 0) 
;;     (f124 0) 
;;     (f125 0) 
;;     (f126 0) 
;;     (f127 0) 
;;     (f128 0) 
;;     (f129 0) 
;;     (f130 0) 
;;     (f131 0) 
;;     (f132 0) 
;;     (f133 0) 
;;     (f134 0) 
;;     (f135 0) 
;;     (f136 0) 
;;     (f137 0) 
;;     (f138 0) 
;;     (f139 0) 
;;     (f140 0) 
;;     (f141 0) 
;;     (f142 0) 
;;     (f143 0) 
;;     (f104@0 0) 
;;     (f103@0 false) 
;;     (f102@0 false) 
;;     (f101@0 false) 
;;     (f100@0 false) 
;;     (f99@0 false) 
;;     (f98@0 false) 
;;     (f97@0 false) 
;;     (f96@0 false) 
;;     (f95@0 false) 
;;     (f94@0 false) 
;;     (f93@0 false) 
;;     (f92@0 false)) 

(pop 1)
;; Success 

(assert (not __ic3_is_ind_1))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for is_ind 2 

(declare-fun __ic3_is_ind_2 () Bool)
;; Success 

(assert (=> __ic3_is_ind_2 (not true)))
;; Success 

;; Checking for inductiveness of clauses 

(push 1)
;; Success 

(assert (! __ic3_is_ind_2 :named c318))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_is_ind_2))
;; Success 

;; subsume_and_add: clause 5 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 57 

(declare-fun __ic3_ind_gen_57 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_57 (> (+ (* 1 f145@1) (* (- 1) f153@1)) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 58 

(declare-fun __ic3_ind_gen_58 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_58 (> (+ (* 1 f145@0) (* (- 1) f153@0)) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 59 

(declare-fun __ic3_ind_gen_59 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_59 (not (> (+ (* 1 f145@0) (* (- 1) f153@0)) 0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_58 :named c319))
;; Success 

(assert (! __ic3_frame_0 :named c320))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_59))
;; Success 

(assert (not __ic3_ind_gen_58))
;; Success 

(assert (not __ic3_ind_gen_57))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 60 

(declare-fun __ic3_ind_gen_60 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_60 f152@1))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 61 

(declare-fun __ic3_ind_gen_61 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_61 f152@0))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 62 

(declare-fun __ic3_ind_gen_62 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_62 (not f152@0)))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_61 :named c321))
;; Success 

(assert (! __ic3_frame_0 :named c322))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_62))
;; Success 

(assert (not __ic3_ind_gen_61))
;; Success 

(assert (not __ic3_ind_gen_60))
;; Success 

;; subsume_and_add: clause 11 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 63 

(declare-fun __ic3_ind_gen_63 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_63
 (> (+ (* 1 f145@1) (* 1 f146@1) (* (- 1) f153@1) (- 1)) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 64 

(declare-fun __ic3_ind_gen_64 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_64
 (> (+ (* 1 f145@0) (* 1 f146@0) (* (- 1) f153@0) (- 1)) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 65 

(declare-fun __ic3_ind_gen_65 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_65
 (not (> (+ (* 1 f145@0) (* 1 f146@0) (* (- 1) f153@0) (- 1)) 0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_64 :named c323))
;; Success 

(assert (! __ic3_frame_0 :named c324))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_65))
;; Success 

(assert (not __ic3_ind_gen_64))
;; Success 

(assert (not __ic3_ind_gen_63))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 66 

(declare-fun __ic3_ind_gen_66 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_66 f152@1))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 67 

(declare-fun __ic3_ind_gen_67 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_67 f152@0))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 68 

(declare-fun __ic3_ind_gen_68 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_68 (not f152@0)))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_67 :named c325))
;; Success 

(assert (! __ic3_frame_0 :named c326))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_68))
;; Success 

(assert (not __ic3_ind_gen_67))
;; Success 

(assert (not __ic3_ind_gen_66))
;; Success 

;; check_frames: frames k to 1 
;;  
;; Frame: 
;; 5 
;; 11 
;;  
;; Frame: 
;; 7 
;; 9 

;; check_frames: Does R_2 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c327))
;; Success 

(assert (! __ic3_clause_5_p0 :named c328))
;; Success 

(assert (! __ic3_clause_11_p0 :named c329))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c330))
;; Success 

(assert (! __ic3_clause_5_n0_0 :named c331))
;; Success 

(assert (! __ic3_clause_5_n0_1 :named c332))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c333))
;; Success 

(assert (! __ic3_clause_11_n0_0 :named c334))
;; Success 

(assert (! __ic3_clause_11_n0_1 :named c335))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_1 & T |= R_2 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 7 

(declare-fun __ic3_check_frames_7 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_7
 (not
  (and
   f105@1
   (or (not f152@1) (not (> (+ (* 1 f145@1) (* (- 1) f153@1)) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f145@1) (* 1 f146@1) (* (- 1) f153@1) (- 1)) 0)))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_7 :named c336))
;; Success 

(assert (! __ic3_clause_3_p0 :named c337))
;; Success 

(assert (! __ic3_clause_5_p0 :named c338))
;; Success 

(assert (! __ic3_clause_11_p0 :named c339))
;; Success 

(assert (! __ic3_clause_7_p0 :named c340))
;; Success 

(assert (! __ic3_clause_9_p0 :named c341))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_7))
;; Success 

;; check_frames: Does R_1 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c342))
;; Success 

(assert (! __ic3_clause_7_p0 :named c343))
;; Success 

(assert (! __ic3_clause_9_p0 :named c344))
;; Success 

(assert (! __ic3_clause_5_p0 :named c345))
;; Success 

(assert (! __ic3_clause_11_p0 :named c346))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c347))
;; Success 

(assert (! __ic3_clause_7_n0_0 :named c348))
;; Success 

(assert (! __ic3_clause_7_n0_1 :named c349))
;; Success 

(assert (! __ic3_clause_7_n0_2 :named c350))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c351))
;; Success 

(assert (! __ic3_clause_9_n0_0 :named c352))
;; Success 

(assert (! __ic3_clause_9_n0_1 :named c353))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_0 & T |= R_1 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 8 

(declare-fun __ic3_check_frames_8 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_8
 (not
  (and
   f105@1
   (or
    (not f152@1)
    (not (> (* 1 f148@1) 0))
    (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 1) 0)))
   (or
    (not f152@1)
    (not
     (>
      (+
       (* 1 f144@1)
       (* 1 f145@1)
       (* 1 f146@1)
       (* 1 f147@1)
       (* (- 1) f153@1))
      0)))
   (or (not f152@1) (not (> (+ (* 1 f145@1) (* (- 1) f153@1)) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f145@1) (* 1 f146@1) (* (- 1) f153@1) (- 1)) 0)))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_8 :named c354))
;; Success 

(assert (! __ic3_frame_0 :named c355))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_8))
;; Success 

;; block: Check if all successors of frontier R_2 are safe. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c356))
;; Success 

(assert (! __ic3_clause_3_n1_0 :named c357))
;; Success 

(assert (! __ic3_clause_5_p0 :named c358))
;; Success 

(assert (! __ic3_clause_11_p0 :named c359))
;; Success 

(check-sat)
;; Sat 

(get-value
 (f154@1
  f155@1
  f156@1
  f157@1
  f158@1
  f153@1
  f152@1
  f151@1
  f150@1
  f149@1
  f148@1
  f147@1
  f146@1
  f145@1
  f144@1
  f90@1
  f105@1
  f113
  f114
  f115
  f116
  f117
  f118
  f119
  f120
  f121
  f122
  f123
  f124
  f125
  f126
  f127
  f128
  f129
  f130
  f131
  f132
  f133
  f134
  f135
  f136
  f137
  f138
  f139
  f140
  f141
  f142
  f143
  f104@1
  f103@1
  f102@1
  f101@1
  f100@1
  f99@1
  f98@1
  f97@1
  f96@1
  f95@1
  f94@1
  f93@1
  f92@1
  f154@0
  f155@0
  f156@0
  f157@0
  f158@0
  f153@0
  f152@0
  f151@0
  f150@0
  f149@0
  f148@0
  f147@0
  f146@0
  f145@0
  f144@0
  f90@0
  f105@0
  f113
  f114
  f115
  f116
  f117
  f118
  f119
  f120
  f121
  f122
  f123
  f124
  f125
  f126
  f127
  f128
  f129
  f130
  f131
  f132
  f133
  f134
  f135
  f136
  f137
  f138
  f139
  f140
  f141
  f142
  f143
  f104@0
  f103@0
  f102@0
  f101@0
  f100@0
  f99@0
  f98@0
  f97@0
  f96@0
  f95@0
  f94@0
  f93@0
  f92@0))
;; ((f154@1 false) 
;;     (f155@1 false) 
;;     (f156@1 false) 
;;     (f157@1 1) 
;;     (f158@1 false) 
;;     (f153@1 (- 1)) 
;;     (f152@1 true) 
;;     (f151@1 true) 
;;     (f150@1 true) 
;;     (f149@1 false) 
;;     (f148@1 0) 
;;     (f147@1 0) 
;;     (f146@1 0) 
;;     (f145@1 0) 
;;     (f144@1 0) 
;;     (f90@1 false) 
;;     (f105@1 false) 
;;     (f113 0) 
;;     (f114 0) 
;;     (f115 0) 
;;     (f116 0) 
;;     (f117 0) 
;;     (f118 0) 
;;     (f119 0) 
;;     (f120 0) 
;;     (f121 0) 
;;     (f122 0) 
;;     (f123 0) 
;;     (f124 0) 
;;     (f125 0) 
;;     (f126 0) 
;;     (f127 0) 
;;     (f128 0) 
;;     (f129 0) 
;;     (f130 0) 
;;     (f131 0) 
;;     (f132 0) 
;;     (f133 0) 
;;     (f134 0) 
;;     (f135 0) 
;;     (f136 0) 
;;     (f137 0) 
;;     (f138 0) 
;;     (f139 0) 
;;     (f140 0) 
;;     (f141 0) 
;;     (f142 0) 
;;     (f143 0) 
;;     (f104@1 1) 
;;     (f103@1 false) 
;;     (f102@1 false) 
;;     (f101@1 false) 
;;     (f100@1 false) 
;;     (f99@1 false) 
;;     (f98@1 false) 
;;     (f97@1 false) 
;;     (f96@1 false) 
;;     (f95@1 false) 
;;     (f94@1 false) 
;;     (f93@1 true) 
;;     (f92@1 false) 
;;     (f154@0 false) 
;;     (f155@0 false) 
;;     (f156@0 false) 
;;     (f157@0 1) 
;;     (f158@0 false) 
;;     (f153@0 (- 1)) 
;;     (f152@0 true) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 1) 
;;     (f147@0 0) 
;;     (f146@0 0) 
;;     (f145@0 (- 1)) 
;;     (f144@0 0) 
;;     (f90@0 false) 
;;     (f105@0 true) 
;;     (f113 0) 
;;     (f114 0) 
;;     (f115 0) 
;;     (f116 0) 
;;     (f117 0) 
;;     (f118 0) 
;;     (f119 0) 
;;     (f120 0) 
;;     (f121 0) 
;;     (f122 0) 
;;     (f123 0) 
;;     (f124 0) 
;;     (f125 0) 
;;     (f126 0) 
;;     (f127 0) 
;;     (f128 0) 
;;     (f129 0) 
;;     (f130 0) 
;;     (f131 0) 
;;     (f132 0) 
;;     (f133 0) 
;;     (f134 0) 
;;     (f135 0) 
;;     (f136 0) 
;;     (f137 0) 
;;     (f138 0) 
;;     (f139 0) 
;;     (f140 0) 
;;     (f141 0) 
;;     (f142 0) 
;;     (f143 0) 
;;     (f104@0 0) 
;;     (f103@0 false) 
;;     (f102@0 false) 
;;     (f101@0 false) 
;;     (f100@0 false) 
;;     (f99@0 false) 
;;     (f98@0 false) 
;;     (f97@0 false) 
;;     (f96@0 false) 
;;     (f95@0 false) 
;;     (f94@0 false) 
;;     (f93@0 false) 
;;     (f92@0 false)) 

(pop 1)
;; Success 

;; New clause at frontier: 
;; #14 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (* 1 top.res.abs_4@0) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_1@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* 1 top.res.abs_0@0) 
;;         (* 1 top.res.abs_1@0) 
;;         (* (- 1) top.res.abs_9@0) 
;;         1) 
;;        0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* 1 top.res.abs_0@0) 
;;         (* (- 1) top.res.abs_1@0) 
;;         (* 1 top.res.abs_2@0) 
;;         (* 1 top.res.abs_3@0) 
;;         1) 
;;        0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* (- 1) top.res.abs_1@0) 
;;         (* (- 1) top.res.abs_2@0) 
;;         (* 1 top.res.abs_9@0) 
;;         2) 
;;        0))} 

;; block: Is blocking clause relative inductive to R_1? 

(declare-fun __ic3_clause_14_n1_0 () Bool)
;; Success 

(assert (=> __ic3_clause_14_n1_0 f105@1))
;; Success 

(declare-fun __ic3_clause_14_n1_1 () Bool)
;; Success 

(assert (=> __ic3_clause_14_n1_1 f152@1))
;; Success 

(declare-fun __ic3_clause_14_n1_2 () Bool)
;; Success 

(assert (=> __ic3_clause_14_n1_2 (> (* 1 f148@1) 0)))
;; Success 

(declare-fun __ic3_clause_14_n1_3 () Bool)
;; Success 

(assert (=> __ic3_clause_14_n1_3 (> (+ (* (- 1) f145@1) (* 1 f153@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_14_n1_4 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_14_n1_4
 (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_14_n1_5 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_14_n1_5
 (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_14_n1_6 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_14_n1_6
 (> (+ (* (- 1) f145@1) (* (- 1) f146@1) (* 1 f153@1) 2) 0)))
;; Success 

(declare-fun __ic3_clause_14_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_14_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (* 1 f148@0) 0))
  (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0)))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_14_p0 :named c360))
;; Success 

(assert (! __ic3_clause_14_n1_0 :named c361))
;; Success 

(assert (! __ic3_clause_14_n1_1 :named c362))
;; Success 

(assert (! __ic3_clause_14_n1_2 :named c363))
;; Success 

(assert (! __ic3_clause_14_n1_3 :named c364))
;; Success 

(assert (! __ic3_clause_14_n1_4 :named c365))
;; Success 

(assert (! __ic3_clause_14_n1_5 :named c366))
;; Success 

(assert (! __ic3_clause_14_n1_6 :named c367))
;; Success 

(assert (! __ic3_clause_5_p0 :named c368))
;; Success 

(assert (! __ic3_clause_11_p0 :named c369))
;; Success 

(assert (! __ic3_clause_3_p0 :named c370))
;; Success 

(assert (! __ic3_clause_7_p0 :named c371))
;; Success 

(assert (! __ic3_clause_9_p0 :named c372))
;; Success 

(check-sat)
;; Sat 

(get-value
 (f154@1
  f155@1
  f156@1
  f157@1
  f158@1
  f153@1
  f152@1
  f151@1
  f150@1
  f149@1
  f148@1
  f147@1
  f146@1
  f145@1
  f144@1
  f90@1
  f105@1
  f113
  f114
  f115
  f116
  f117
  f118
  f119
  f120
  f121
  f122
  f123
  f124
  f125
  f126
  f127
  f128
  f129
  f130
  f131
  f132
  f133
  f134
  f135
  f136
  f137
  f138
  f139
  f140
  f141
  f142
  f143
  f104@1
  f103@1
  f102@1
  f101@1
  f100@1
  f99@1
  f98@1
  f97@1
  f96@1
  f95@1
  f94@1
  f93@1
  f92@1
  f154@0
  f155@0
  f156@0
  f157@0
  f158@0
  f153@0
  f152@0
  f151@0
  f150@0
  f149@0
  f148@0
  f147@0
  f146@0
  f145@0
  f144@0
  f90@0
  f105@0
  f113
  f114
  f115
  f116
  f117
  f118
  f119
  f120
  f121
  f122
  f123
  f124
  f125
  f126
  f127
  f128
  f129
  f130
  f131
  f132
  f133
  f134
  f135
  f136
  f137
  f138
  f139
  f140
  f141
  f142
  f143
  f104@0
  f103@0
  f102@0
  f101@0
  f100@0
  f99@0
  f98@0
  f97@0
  f96@0
  f95@0
  f94@0
  f93@0
  f92@0))
;; ((f154@1 false) 
;;     (f155@1 false) 
;;     (f156@1 false) 
;;     (f157@1 1) 
;;     (f158@1 false) 
;;     (f153@1 1) 
;;     (f152@1 true) 
;;     (f151@1 true) 
;;     (f150@1 true) 
;;     (f149@1 false) 
;;     (f148@1 1) 
;;     (f147@1 0) 
;;     (f146@1 0) 
;;     (f145@1 0) 
;;     (f144@1 1) 
;;     (f90@1 false) 
;;     (f105@1 true) 
;;     (f113 0) 
;;     (f114 0) 
;;     (f115 0) 
;;     (f116 0) 
;;     (f117 0) 
;;     (f118 0) 
;;     (f119 0) 
;;     (f120 0) 
;;     (f121 0) 
;;     (f122 0) 
;;     (f123 0) 
;;     (f124 0) 
;;     (f125 0) 
;;     (f126 0) 
;;     (f127 0) 
;;     (f128 0) 
;;     (f129 0) 
;;     (f130 0) 
;;     (f131 0) 
;;     (f132 0) 
;;     (f133 0) 
;;     (f134 0) 
;;     (f135 0) 
;;     (f136 0) 
;;     (f137 0) 
;;     (f138 0) 
;;     (f139 0) 
;;     (f140 0) 
;;     (f141 0) 
;;     (f142 0) 
;;     (f143 0) 
;;     (f104@1 1) 
;;     (f103@1 false) 
;;     (f102@1 false) 
;;     (f101@1 false) 
;;     (f100@1 false) 
;;     (f99@1 false) 
;;     (f98@1 false) 
;;     (f97@1 false) 
;;     (f96@1 false) 
;;     (f95@1 false) 
;;     (f94@1 false) 
;;     (f93@1 false) 
;;     (f92@1 true) 
;;     (f154@0 false) 
;;     (f155@0 false) 
;;     (f156@0 false) 
;;     (f157@0 1) 
;;     (f158@0 false) 
;;     (f153@0 1) 
;;     (f152@0 true) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 2) 
;;     (f147@0 0) 
;;     (f146@0 0) 
;;     (f145@0 0) 
;;     (f144@0 0) 
;;     (f90@0 false) 
;;     (f105@0 true) 
;;     (f113 0) 
;;     (f114 0) 
;;     (f115 0) 
;;     (f116 0) 
;;     (f117 0) 
;;     (f118 0) 
;;     (f119 0) 
;;     (f120 0) 
;;     (f121 0) 
;;     (f122 0) 
;;     (f123 0) 
;;     (f124 0) 
;;     (f125 0) 
;;     (f126 0) 
;;     (f127 0) 
;;     (f128 0) 
;;     (f129 0) 
;;     (f130 0) 
;;     (f131 0) 
;;     (f132 0) 
;;     (f133 0) 
;;     (f134 0) 
;;     (f135 0) 
;;     (f136 0) 
;;     (f137 0) 
;;     (f138 0) 
;;     (f139 0) 
;;     (f140 0) 
;;     (f141 0) 
;;     (f142 0) 
;;     (f143 0) 
;;     (f104@0 0) 
;;     (f103@0 false) 
;;     (f102@0 false) 
;;     (f101@0 false) 
;;     (f100@0 false) 
;;     (f99@0 false) 
;;     (f98@0 false) 
;;     (f97@0 false) 
;;     (f96@0 false) 
;;     (f95@0 false) 
;;     (f94@0 false) 
;;     (f93@0 false) 
;;     (f92@0 false)) 

(pop 1)
;; Success 

;; New clause at depth 1 to block #14: 
;; #15 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (= (+ (* (- 1) top.res.abs_3@0) 0) 0)); 
;;      (not (= (+ (* (- 1) top.res.abs_1@0) 0) 0)); 
;;      (not (= (+ (* (- 1) top.res.abs_0@0) 0) 0)); 
;;      (not (= (+ (* (- 1) top.res.abs_2@0) 0) 0)); 
;;      (not (> (* 1 top.res.abs_4@0) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_1@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* (- 1) top.res.abs_0@0) 
;;         (* (- 1) top.res.abs_1@0) 
;;         (* 1 top.res.abs_9@0)) 
;;        0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* (- 1) top.res.abs_0@0) 
;;         (* (- 1) top.res.abs_1@0) 
;;         (* (- 1) top.res.abs_2@0) 
;;         (* (- 1) top.res.abs_3@0) 
;;         (* 1 top.res.abs_9@0) 
;;         1) 
;;        0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* (- 1) top.res.abs_1@0) 
;;         (* (- 1) top.res.abs_2@0) 
;;         (* 1 top.res.abs_9@0) 
;;         2) 
;;        0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* 1 top.res.abs_0@0) 
;;         (* (- 1) top.res.abs_1@0) 
;;         (* 1 top.res.abs_2@0) 
;;         (* 1 top.res.abs_3@0) 
;;         2) 
;;        0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* 1 top.res.abs_0@0) 
;;         (* 1 top.res.abs_1@0) 
;;         (* (- 1) top.res.abs_9@0) 
;;         2) 
;;        0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (- 1)) 0))} 

;; block: Is blocking clause relative inductive to R_0? 

(declare-fun __ic3_clause_15_n1_0 () Bool)
;; Success 

(assert (=> __ic3_clause_15_n1_0 f105@1))
;; Success 

(declare-fun __ic3_clause_15_n1_1 () Bool)
;; Success 

(assert (=> __ic3_clause_15_n1_1 f152@1))
;; Success 

(declare-fun __ic3_clause_15_n1_2 () Bool)
;; Success 

(assert (=> __ic3_clause_15_n1_2 (= (+ (* (- 1) f147@1) 0) 0)))
;; Success 

(declare-fun __ic3_clause_15_n1_3 () Bool)
;; Success 

(assert (=> __ic3_clause_15_n1_3 (= (+ (* (- 1) f145@1) 0) 0)))
;; Success 

(declare-fun __ic3_clause_15_n1_4 () Bool)
;; Success 

(assert (=> __ic3_clause_15_n1_4 (= (+ (* (- 1) f144@1) 0) 0)))
;; Success 

(declare-fun __ic3_clause_15_n1_5 () Bool)
;; Success 

(assert (=> __ic3_clause_15_n1_5 (= (+ (* (- 1) f146@1) 0) 0)))
;; Success 

(declare-fun __ic3_clause_15_n1_6 () Bool)
;; Success 

(assert (=> __ic3_clause_15_n1_6 (> (* 1 f148@1) 0)))
;; Success 

(declare-fun __ic3_clause_15_n1_7 () Bool)
;; Success 

(assert (=> __ic3_clause_15_n1_7 (> (+ (* (- 1) f144@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_15_n1_8 () Bool)
;; Success 

(assert (=> __ic3_clause_15_n1_8 (> (+ (* (- 1) f145@1) (* 1 f153@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_15_n1_9 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_15_n1_9
 (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1)) 0)))
;; Success 

(declare-fun __ic3_clause_15_n1_10 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_15_n1_10
 (>
  (+
   (* (- 1) f144@1)
   (* (- 1) f145@1)
   (* (- 1) f146@1)
   (* (- 1) f147@1)
   (* 1 f153@1)
   1)
  0)))
;; Success 

(declare-fun __ic3_clause_15_n1_11 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_15_n1_11
 (> (+ (* (- 1) f145@1) (* (- 1) f146@1) (* 1 f153@1) 2) 0)))
;; Success 

(declare-fun __ic3_clause_15_n1_12 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_15_n1_12
 (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 2) 0)))
;; Success 

(declare-fun __ic3_clause_15_n1_13 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_15_n1_13
 (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 2) 0)))
;; Success 

(declare-fun __ic3_clause_15_n1_14 () Bool)
;; Success 

(assert (=> __ic3_clause_15_n1_14 (> (+ (* 1 f148@1) (- 1)) 0)))
;; Success 

(declare-fun __ic3_clause_15_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_15_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (= (+ (* (- 1) f147@0) 0) 0))
  (not (= (+ (* (- 1) f145@0) 0) 0))
  (not (= (+ (* (- 1) f144@0) 0) 0))
  (not (= (+ (* (- 1) f146@0) 0) 0))
  (not (> (* 1 f148@0) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     1)
    0))
  (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (- 1)) 0)))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_15_p0 :named c373))
;; Success 

(assert (! __ic3_clause_15_n1_0 :named c374))
;; Success 

(assert (! __ic3_clause_15_n1_1 :named c375))
;; Success 

(assert (! __ic3_clause_15_n1_2 :named c376))
;; Success 

(assert (! __ic3_clause_15_n1_3 :named c377))
;; Success 

(assert (! __ic3_clause_15_n1_4 :named c378))
;; Success 

(assert (! __ic3_clause_15_n1_5 :named c379))
;; Success 

(assert (! __ic3_clause_15_n1_6 :named c380))
;; Success 

(assert (! __ic3_clause_15_n1_7 :named c381))
;; Success 

(assert (! __ic3_clause_15_n1_8 :named c382))
;; Success 

(assert (! __ic3_clause_15_n1_9 :named c383))
;; Success 

(assert (! __ic3_clause_15_n1_10 :named c384))
;; Success 

(assert (! __ic3_clause_15_n1_11 :named c385))
;; Success 

(assert (! __ic3_clause_15_n1_12 :named c386))
;; Success 

(assert (! __ic3_clause_15_n1_13 :named c387))
;; Success 

(assert (! __ic3_clause_15_n1_14 :named c388))
;; Success 

(assert (! __ic3_frame_0 :named c389))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c378 c379 c381 c387 c388 c389 c375 c376 c377) 

(pop 1)
;; Success 

;; block: Check I |= C to get unsat core. 

(declare-fun __ic3_clause_15_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_15_n0_0 f105@0))
;; Success 

(declare-fun __ic3_clause_15_n0_1 () Bool)
;; Success 

(assert (=> __ic3_clause_15_n0_1 f152@0))
;; Success 

(declare-fun __ic3_clause_15_n0_2 () Bool)
;; Success 

(assert (=> __ic3_clause_15_n0_2 (= (+ (* (- 1) f147@0) 0) 0)))
;; Success 

(declare-fun __ic3_clause_15_n0_3 () Bool)
;; Success 

(assert (=> __ic3_clause_15_n0_3 (= (+ (* (- 1) f145@0) 0) 0)))
;; Success 

(declare-fun __ic3_clause_15_n0_4 () Bool)
;; Success 

(assert (=> __ic3_clause_15_n0_4 (= (+ (* (- 1) f144@0) 0) 0)))
;; Success 

(declare-fun __ic3_clause_15_n0_5 () Bool)
;; Success 

(assert (=> __ic3_clause_15_n0_5 (= (+ (* (- 1) f146@0) 0) 0)))
;; Success 

(declare-fun __ic3_clause_15_n0_6 () Bool)
;; Success 

(assert (=> __ic3_clause_15_n0_6 (> (* 1 f148@0) 0)))
;; Success 

(declare-fun __ic3_clause_15_n0_7 () Bool)
;; Success 

(assert (=> __ic3_clause_15_n0_7 (> (+ (* (- 1) f144@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_15_n0_8 () Bool)
;; Success 

(assert (=> __ic3_clause_15_n0_8 (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_15_n0_9 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_15_n0_9
 (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0)))
;; Success 

(declare-fun __ic3_clause_15_n0_10 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_15_n0_10
 (>
  (+
   (* (- 1) f144@0)
   (* (- 1) f145@0)
   (* (- 1) f146@0)
   (* (- 1) f147@0)
   (* 1 f153@0)
   1)
  0)))
;; Success 

(declare-fun __ic3_clause_15_n0_11 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_15_n0_11
 (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0)))
;; Success 

(declare-fun __ic3_clause_15_n0_12 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_15_n0_12
 (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0)))
;; Success 

(declare-fun __ic3_clause_15_n0_13 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_15_n0_13
 (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0)))
;; Success 

(declare-fun __ic3_clause_15_n0_14 () Bool)
;; Success 

(assert (=> __ic3_clause_15_n0_14 (> (+ (* 1 f148@0) (- 1)) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c390))
;; Success 

(assert (! __ic3_clause_15_n0_0 :named c391))
;; Success 

(assert (! __ic3_clause_15_n0_1 :named c392))
;; Success 

(assert (! __ic3_clause_15_n0_2 :named c393))
;; Success 

(assert (! __ic3_clause_15_n0_3 :named c394))
;; Success 

(assert (! __ic3_clause_15_n0_4 :named c395))
;; Success 

(assert (! __ic3_clause_15_n0_5 :named c396))
;; Success 

(assert (! __ic3_clause_15_n0_6 :named c397))
;; Success 

(assert (! __ic3_clause_15_n0_7 :named c398))
;; Success 

(assert (! __ic3_clause_15_n0_8 :named c399))
;; Success 

(assert (! __ic3_clause_15_n0_9 :named c400))
;; Success 

(assert (! __ic3_clause_15_n0_10 :named c401))
;; Success 

(assert (! __ic3_clause_15_n0_11 :named c402))
;; Success 

(assert (! __ic3_clause_15_n0_12 :named c403))
;; Success 

(assert (! __ic3_clause_15_n0_13 :named c404))
;; Success 

(assert (! __ic3_clause_15_n0_14 :named c405))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c404 c405 c390) 

(pop 1)
;; Success 

;; block: Reduced clause 
;; (or 
;;  (not top.usr.OK@0) 
;;  (not top.res.abs_8@0) 
;;  (not (= (+ (* (- 1) top.res.abs_3@0) 0) 0)) 
;;  (not (= (+ (* (- 1) top.res.abs_1@0) 0) 0)) 
;;  (not (= (+ (* (- 1) top.res.abs_0@0) 0) 0)) 
;;  (not (= (+ (* (- 1) top.res.abs_2@0) 0) 0)) 
;;  (not (> (* 1 top.res.abs_4@0) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_0@0) 1) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_1@0) (* 1 top.res.abs_9@0) 1) 0)) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* (- 1) top.res.abs_0@0) 
;;     (* (- 1) top.res.abs_1@0) 
;;     (* 1 top.res.abs_9@0)) 
;;    0)) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* (- 1) top.res.abs_0@0) 
;;     (* (- 1) top.res.abs_1@0) 
;;     (* (- 1) top.res.abs_2@0) 
;;     (* (- 1) top.res.abs_3@0) 
;;     (* 1 top.res.abs_9@0) 
;;     1) 
;;    0)) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* (- 1) top.res.abs_1@0) 
;;     (* (- 1) top.res.abs_2@0) 
;;     (* 1 top.res.abs_9@0) 
;;     2) 
;;    0)) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* 1 top.res.abs_0@0) 
;;     (* (- 1) top.res.abs_1@0) 
;;     (* 1 top.res.abs_2@0) 
;;     (* 1 top.res.abs_3@0) 
;;     2) 
;;    0)) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* 1 top.res.abs_0@0) 
;;     (* 1 top.res.abs_1@0) 
;;     (* (- 1) top.res.abs_9@0) 
;;     2) 
;;    0)) 
;;  (not (> (+ (* 1 top.res.abs_4@0) (- 1)) 0))) 
;; with unsat core to 
;; (or 
;;  (not (> (+ (* 1 top.res.abs_4@0) (- 1)) 0)) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* 1 top.res.abs_0@0) 
;;     (* 1 top.res.abs_1@0) 
;;     (* (- 1) top.res.abs_9@0) 
;;     2) 
;;    0)) 
;;  (not (> (+ (* (- 1) top.res.abs_0@0) 1) 0)) 
;;  (not (= (+ (* (- 1) top.res.abs_2@0) 0) 0)) 
;;  (not (= (+ (* (- 1) top.res.abs_0@0) 0) 0)) 
;;  (not (= (+ (* (- 1) top.res.abs_1@0) 0) 0)) 
;;  (not (= (+ (* (- 1) top.res.abs_3@0) 0) 0)) 
;;  (not top.res.abs_8@0)) 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 69 

(declare-fun __ic3_ind_gen_69 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_69
 (not
  (or
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (= (+ (* (- 1) f146@1) 0) 0))
   (not (= (+ (* (- 1) f144@1) 0) 0))
   (not (= (+ (* (- 1) f145@1) 0) 0))
   (not (= (+ (* (- 1) f147@1) 0) 0))
   (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 70 

(declare-fun __ic3_ind_gen_70 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_70
 (not
  (or
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (= (+ (* (- 1) f146@0) 0) 0))
   (not (= (+ (* (- 1) f144@0) 0) 0))
   (not (= (+ (* (- 1) f145@0) 0) 0))
   (not (= (+ (* (- 1) f147@0) 0) 0))
   (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 71 

(declare-fun __ic3_ind_gen_71 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_71
 (or
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (= (+ (* (- 1) f146@0) 0) 0))
  (not (= (+ (* (- 1) f144@0) 0) 0))
  (not (= (+ (* (- 1) f145@0) 0) 0))
  (not (= (+ (* (- 1) f147@0) 0) 0))
  (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_70 :named c406))
;; Success 

(assert (! __ic3_frame_0 :named c407))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_71))
;; Success 

(assert (not __ic3_ind_gen_70))
;; Success 

(assert (not __ic3_ind_gen_69))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 72 

(declare-fun __ic3_ind_gen_72 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_72
 (not
  (or
   (not (> (+ (* 1 f148@1) (- 1)) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (= (+ (* (- 1) f146@1) 0) 0))
   (not (= (+ (* (- 1) f144@1) 0) 0))
   (not (= (+ (* (- 1) f145@1) 0) 0))
   (not (= (+ (* (- 1) f147@1) 0) 0))
   (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 73 

(declare-fun __ic3_ind_gen_73 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_73
 (not
  (or
   (not (> (+ (* 1 f148@0) (- 1)) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (= (+ (* (- 1) f146@0) 0) 0))
   (not (= (+ (* (- 1) f144@0) 0) 0))
   (not (= (+ (* (- 1) f145@0) 0) 0))
   (not (= (+ (* (- 1) f147@0) 0) 0))
   (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 74 

(declare-fun __ic3_ind_gen_74 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_74
 (or
  (not (> (+ (* 1 f148@0) (- 1)) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (= (+ (* (- 1) f146@0) 0) 0))
  (not (= (+ (* (- 1) f144@0) 0) 0))
  (not (= (+ (* (- 1) f145@0) 0) 0))
  (not (= (+ (* (- 1) f147@0) 0) 0))
  (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_73 :named c408))
;; Success 

(assert (! __ic3_frame_0 :named c409))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_74))
;; Success 

(assert (not __ic3_ind_gen_73))
;; Success 

(assert (not __ic3_ind_gen_72))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 75 

(declare-fun __ic3_ind_gen_75 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_75
 (not
  (or
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* 1 f148@1) (- 1)) 0))
   (not (= (+ (* (- 1) f146@1) 0) 0))
   (not (= (+ (* (- 1) f144@1) 0) 0))
   (not (= (+ (* (- 1) f145@1) 0) 0))
   (not (= (+ (* (- 1) f147@1) 0) 0))
   (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 76 

(declare-fun __ic3_ind_gen_76 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_76
 (not
  (or
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* 1 f148@0) (- 1)) 0))
   (not (= (+ (* (- 1) f146@0) 0) 0))
   (not (= (+ (* (- 1) f144@0) 0) 0))
   (not (= (+ (* (- 1) f145@0) 0) 0))
   (not (= (+ (* (- 1) f147@0) 0) 0))
   (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 77 

(declare-fun __ic3_ind_gen_77 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_77
 (or
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (- 1)) 0))
  (not (= (+ (* (- 1) f146@0) 0) 0))
  (not (= (+ (* (- 1) f144@0) 0) 0))
  (not (= (+ (* (- 1) f145@0) 0) 0))
  (not (= (+ (* (- 1) f147@0) 0) 0))
  (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_76 :named c410))
;; Success 

(assert (! __ic3_frame_0 :named c411))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c412))
;; Success 

(assert (! __ic3_ind_gen_77 :named c413))
;; Success 

(assert (! __ic3_ind_gen_75 :named c414))
;; Success 

(assert (! __ic3_frame_0 :named c415))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_77))
;; Success 

(assert (not __ic3_ind_gen_76))
;; Success 

(assert (not __ic3_ind_gen_75))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 78 

(declare-fun __ic3_ind_gen_78 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_78
 (not
  (or
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* 1 f148@1) (- 1)) 0))
   (not (= (+ (* (- 1) f144@1) 0) 0))
   (not (= (+ (* (- 1) f145@1) 0) 0))
   (not (= (+ (* (- 1) f147@1) 0) 0))
   (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 79 

(declare-fun __ic3_ind_gen_79 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_79
 (not
  (or
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* 1 f148@0) (- 1)) 0))
   (not (= (+ (* (- 1) f144@0) 0) 0))
   (not (= (+ (* (- 1) f145@0) 0) 0))
   (not (= (+ (* (- 1) f147@0) 0) 0))
   (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 80 

(declare-fun __ic3_ind_gen_80 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_80
 (or
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (- 1)) 0))
  (not (= (+ (* (- 1) f144@0) 0) 0))
  (not (= (+ (* (- 1) f145@0) 0) 0))
  (not (= (+ (* (- 1) f147@0) 0) 0))
  (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_79 :named c416))
;; Success 

(assert (! __ic3_frame_0 :named c417))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c418))
;; Success 

(assert (! __ic3_ind_gen_80 :named c419))
;; Success 

(assert (! __ic3_ind_gen_78 :named c420))
;; Success 

(assert (! __ic3_frame_0 :named c421))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_80))
;; Success 

(assert (not __ic3_ind_gen_79))
;; Success 

(assert (not __ic3_ind_gen_78))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 81 

(declare-fun __ic3_ind_gen_81 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_81
 (not
  (or
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* 1 f148@1) (- 1)) 0))
   (not (= (+ (* (- 1) f145@1) 0) 0))
   (not (= (+ (* (- 1) f147@1) 0) 0))
   (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 82 

(declare-fun __ic3_ind_gen_82 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_82
 (not
  (or
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* 1 f148@0) (- 1)) 0))
   (not (= (+ (* (- 1) f145@0) 0) 0))
   (not (= (+ (* (- 1) f147@0) 0) 0))
   (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 83 

(declare-fun __ic3_ind_gen_83 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_83
 (or
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (- 1)) 0))
  (not (= (+ (* (- 1) f145@0) 0) 0))
  (not (= (+ (* (- 1) f147@0) 0) 0))
  (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_82 :named c422))
;; Success 

(assert (! __ic3_frame_0 :named c423))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c424))
;; Success 

(assert (! __ic3_ind_gen_83 :named c425))
;; Success 

(assert (! __ic3_ind_gen_81 :named c426))
;; Success 

(assert (! __ic3_frame_0 :named c427))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_83))
;; Success 

(assert (not __ic3_ind_gen_82))
;; Success 

(assert (not __ic3_ind_gen_81))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 84 

(declare-fun __ic3_ind_gen_84 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_84
 (not
  (or
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* 1 f148@1) (- 1)) 0))
   (not (= (+ (* (- 1) f147@1) 0) 0))
   (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 85 

(declare-fun __ic3_ind_gen_85 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_85
 (not
  (or
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* 1 f148@0) (- 1)) 0))
   (not (= (+ (* (- 1) f147@0) 0) 0))
   (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 86 

(declare-fun __ic3_ind_gen_86 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_86
 (or
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (- 1)) 0))
  (not (= (+ (* (- 1) f147@0) 0) 0))
  (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_85 :named c428))
;; Success 

(assert (! __ic3_frame_0 :named c429))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c430))
;; Success 

(assert (! __ic3_ind_gen_86 :named c431))
;; Success 

(assert (! __ic3_ind_gen_84 :named c432))
;; Success 

(assert (! __ic3_frame_0 :named c433))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_86))
;; Success 

(assert (not __ic3_ind_gen_85))
;; Success 

(assert (not __ic3_ind_gen_84))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 87 

(declare-fun __ic3_ind_gen_87 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_87
 (not
  (or
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* 1 f148@1) (- 1)) 0))
   (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 88 

(declare-fun __ic3_ind_gen_88 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_88
 (not
  (or
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* 1 f148@0) (- 1)) 0))
   (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 89 

(declare-fun __ic3_ind_gen_89 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_89
 (or
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (- 1)) 0))
  (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_88 :named c434))
;; Success 

(assert (! __ic3_frame_0 :named c435))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c436))
;; Success 

(assert (! __ic3_ind_gen_89 :named c437))
;; Success 

(assert (! __ic3_ind_gen_87 :named c438))
;; Success 

(assert (! __ic3_frame_0 :named c439))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_89))
;; Success 

(assert (not __ic3_ind_gen_88))
;; Success 

(assert (not __ic3_ind_gen_87))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 90 

(declare-fun __ic3_ind_gen_90 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_90
 (not
  (or
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* 1 f148@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 91 

(declare-fun __ic3_ind_gen_91 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_91
 (not
  (or
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* 1 f148@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 92 

(declare-fun __ic3_ind_gen_92 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_92
 (or
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_91 :named c440))
;; Success 

(assert (! __ic3_frame_0 :named c441))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c442))
;; Success 

(assert (! __ic3_ind_gen_92 :named c443))
;; Success 

(assert (! __ic3_ind_gen_90 :named c444))
;; Success 

(assert (! __ic3_frame_0 :named c445))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_92))
;; Success 

(assert (not __ic3_ind_gen_91))
;; Success 

(assert (not __ic3_ind_gen_90))
;; Success 

;; ind_generalize: Dropped 12 literals from clause. 

;; Deactivating activation literals for clause 

(assert (not __ic3_clause_15_p0))
;; Success 

(assert (not __ic3_clause_15_n0_0))
;; Success 

(assert (not __ic3_clause_15_n0_1))
;; Success 

(assert (not __ic3_clause_15_n0_2))
;; Success 

(assert (not __ic3_clause_15_n0_3))
;; Success 

(assert (not __ic3_clause_15_n0_4))
;; Success 

(assert (not __ic3_clause_15_n0_5))
;; Success 

(assert (not __ic3_clause_15_n0_6))
;; Success 

(assert (not __ic3_clause_15_n0_7))
;; Success 

(assert (not __ic3_clause_15_n0_8))
;; Success 

(assert (not __ic3_clause_15_n0_9))
;; Success 

(assert (not __ic3_clause_15_n0_10))
;; Success 

(assert (not __ic3_clause_15_n0_11))
;; Success 

(assert (not __ic3_clause_15_n0_12))
;; Success 

(assert (not __ic3_clause_15_n0_13))
;; Success 

(assert (not __ic3_clause_15_n0_14))
;; Success 

(assert (not __ic3_clause_15_n1_0))
;; Success 

(assert (not __ic3_clause_15_n1_1))
;; Success 

(assert (not __ic3_clause_15_n1_2))
;; Success 

(assert (not __ic3_clause_15_n1_3))
;; Success 

(assert (not __ic3_clause_15_n1_4))
;; Success 

(assert (not __ic3_clause_15_n1_5))
;; Success 

(assert (not __ic3_clause_15_n1_6))
;; Success 

(assert (not __ic3_clause_15_n1_7))
;; Success 

(assert (not __ic3_clause_15_n1_8))
;; Success 

(assert (not __ic3_clause_15_n1_9))
;; Success 

(assert (not __ic3_clause_15_n1_10))
;; Success 

(assert (not __ic3_clause_15_n1_11))
;; Success 

(assert (not __ic3_clause_15_n1_12))
;; Success 

(assert (not __ic3_clause_15_n1_13))
;; Success 

(assert (not __ic3_clause_15_n1_14))
;; Success 

;; New clause from inductive generalization of #15: 
;; #16 {(not top.res.abs_8@0); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* 1 top.res.abs_0@0) 
;;         (* 1 top.res.abs_1@0) 
;;         (* (- 1) top.res.abs_9@0) 
;;         2) 
;;        0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (- 1)) 0))} 

;; block: Reduced clause 
;; (or 
;;  (not (> (+ (* 1 top.res.abs_4@0) (- 1)) 0)) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* 1 top.res.abs_0@0) 
;;     (* 1 top.res.abs_1@0) 
;;     (* (- 1) top.res.abs_9@0) 
;;     2) 
;;    0)) 
;;  (not (> (+ (* (- 1) top.res.abs_0@0) 1) 0)) 
;;  (not (= (+ (* (- 1) top.res.abs_2@0) 0) 0)) 
;;  (not (= (+ (* (- 1) top.res.abs_0@0) 0) 0)) 
;;  (not (= (+ (* (- 1) top.res.abs_1@0) 0) 0)) 
;;  (not (= (+ (* (- 1) top.res.abs_3@0) 0) 0)) 
;;  (not top.res.abs_8@0)) 
;; with ind. gen. to 
;; (or 
;;  (not top.res.abs_8@0) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* 1 top.res.abs_0@0) 
;;     (* 1 top.res.abs_1@0) 
;;     (* (- 1) top.res.abs_9@0) 
;;     2) 
;;    0)) 
;;  (not (> (+ (* 1 top.res.abs_4@0) (- 1)) 0))) 

;; Copied clause #15 for blocking at depth 0: 
;; #17 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (= (+ (* (- 1) top.res.abs_3@0) 0) 0)); 
;;      (not (= (+ (* (- 1) top.res.abs_1@0) 0) 0)); 
;;      (not (= (+ (* (- 1) top.res.abs_0@0) 0) 0)); 
;;      (not (= (+ (* (- 1) top.res.abs_2@0) 0) 0)); 
;;      (not (> (* 1 top.res.abs_4@0) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_1@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* (- 1) top.res.abs_0@0) 
;;         (* (- 1) top.res.abs_1@0) 
;;         (* 1 top.res.abs_9@0)) 
;;        0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* (- 1) top.res.abs_0@0) 
;;         (* (- 1) top.res.abs_1@0) 
;;         (* (- 1) top.res.abs_2@0) 
;;         (* (- 1) top.res.abs_3@0) 
;;         (* 1 top.res.abs_9@0) 
;;         1) 
;;        0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* (- 1) top.res.abs_1@0) 
;;         (* (- 1) top.res.abs_2@0) 
;;         (* 1 top.res.abs_9@0) 
;;         2) 
;;        0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* 1 top.res.abs_0@0) 
;;         (* (- 1) top.res.abs_1@0) 
;;         (* 1 top.res.abs_2@0) 
;;         (* 1 top.res.abs_3@0) 
;;         2) 
;;        0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* 1 top.res.abs_0@0) 
;;         (* 1 top.res.abs_1@0) 
;;         (* (- 1) top.res.abs_9@0) 
;;         2) 
;;        0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (- 1)) 0))} 

(declare-fun __ic3_clause_16_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_16_p0
 (or
  (not f152@0)
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (- 1)) 0)))))
;; Success 

;; check_frames: frames k to 1 
;;  
;; Frame: 
;; 7 
;; 9 
;; 16 

;; check_frames: Does R_1 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c446))
;; Success 

(assert (! __ic3_clause_7_p0 :named c447))
;; Success 

(assert (! __ic3_clause_9_p0 :named c448))
;; Success 

(assert (! __ic3_clause_16_p0 :named c449))
;; Success 

(assert (! __ic3_clause_5_p0 :named c450))
;; Success 

(assert (! __ic3_clause_11_p0 :named c451))
;; Success 

(assert (! __ic3_clause_7_p0 :named c452))
;; Success 

(assert (! __ic3_clause_9_p0 :named c453))
;; Success 

(assert (! __ic3_clause_16_p0 :named c454))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c455))
;; Success 

(assert (! __ic3_clause_7_n0_0 :named c456))
;; Success 

(assert (! __ic3_clause_7_n0_1 :named c457))
;; Success 

(assert (! __ic3_clause_7_n0_2 :named c458))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c459))
;; Success 

(assert (! __ic3_clause_9_n0_0 :named c460))
;; Success 

(assert (! __ic3_clause_9_n0_1 :named c461))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(declare-fun __ic3_clause_16_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_16_n0_0 f152@0))
;; Success 

(declare-fun __ic3_clause_16_n0_1 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_16_n0_1
 (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0)))
;; Success 

(declare-fun __ic3_clause_16_n0_2 () Bool)
;; Success 

(assert (=> __ic3_clause_16_n0_2 (> (+ (* 1 f148@0) (- 1)) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c462))
;; Success 

(assert (! __ic3_clause_16_n0_0 :named c463))
;; Success 

(assert (! __ic3_clause_16_n0_1 :named c464))
;; Success 

(assert (! __ic3_clause_16_n0_2 :named c465))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_0 & T |= R_1 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 9 

(declare-fun __ic3_check_frames_9 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_9
 (not
  (and
   f105@1
   (or
    (not f152@1)
    (not (> (* 1 f148@1) 0))
    (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 1) 0)))
   (or
    (not f152@1)
    (not
     (>
      (+
       (* 1 f144@1)
       (* 1 f145@1)
       (* 1 f146@1)
       (* 1 f147@1)
       (* (- 1) f153@1))
      0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 2) 0))
    (not (> (+ (* 1 f148@1) (- 1)) 0)))
   (or (not f152@1) (not (> (+ (* 1 f145@1) (* (- 1) f153@1)) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f145@1) (* 1 f146@1) (* (- 1) f153@1) (- 1)) 0)))
   (or
    (not f152@1)
    (not (> (* 1 f148@1) 0))
    (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 1) 0)))
   (or
    (not f152@1)
    (not
     (>
      (+
       (* 1 f144@1)
       (* 1 f145@1)
       (* 1 f146@1)
       (* 1 f147@1)
       (* (- 1) f153@1))
      0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 2) 0))
    (not (> (+ (* 1 f148@1) (- 1)) 0)))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_9 :named c466))
;; Success 

(assert (! __ic3_frame_0 :named c467))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_9))
;; Success 

;; block: All counterexamples blocked in R_1 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 93 

(declare-fun __ic3_ind_gen_93 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_93
 (not
  (or
   (not f152@1)
   (not (= (+ (* (- 1) f147@1) 0) 0))
   (not (= (+ (* (- 1) f145@1) 0) 0))
   (not (= (+ (* (- 1) f144@1) 0) 0))
   (not (= (+ (* (- 1) f146@1) 0) 0))
   (not (> (* 1 f148@1) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      1)
     0))
   (not (> (+ (* (- 1) f145@1) (* (- 1) f146@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 2) 0))
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* 1 f148@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 94 

(declare-fun __ic3_ind_gen_94 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_94
 (not
  (or
   (not f152@0)
   (not (= (+ (* (- 1) f147@0) 0) 0))
   (not (= (+ (* (- 1) f145@0) 0) 0))
   (not (= (+ (* (- 1) f144@0) 0) 0))
   (not (= (+ (* (- 1) f146@0) 0) 0))
   (not (> (* 1 f148@0) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      1)
     0))
   (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0))
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* 1 f148@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 95 

(declare-fun __ic3_ind_gen_95 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_95
 (or
  (not f152@0)
  (not (= (+ (* (- 1) f147@0) 0) 0))
  (not (= (+ (* (- 1) f145@0) 0) 0))
  (not (= (+ (* (- 1) f144@0) 0) 0))
  (not (= (+ (* (- 1) f146@0) 0) 0))
  (not (> (* 1 f148@0) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     1)
    0))
  (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_94 :named c468))
;; Success 

(assert (! __ic3_frame_0 :named c469))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c470))
;; Success 

(assert (! __ic3_ind_gen_95 :named c471))
;; Success 

(assert (! __ic3_ind_gen_93 :named c472))
;; Success 

(assert (! __ic3_clause_5_p0 :named c473))
;; Success 

(assert (! __ic3_clause_11_p0 :named c474))
;; Success 

(assert (! __ic3_clause_3_p0 :named c475))
;; Success 

(assert (! __ic3_clause_7_p0 :named c476))
;; Success 

(assert (! __ic3_clause_9_p0 :named c477))
;; Success 

(assert (! __ic3_clause_16_p0 :named c478))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_95))
;; Success 

(assert (not __ic3_ind_gen_94))
;; Success 

(assert (not __ic3_ind_gen_93))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 96 

(declare-fun __ic3_ind_gen_96 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_96
 (not
  (or
   (not f105@1)
   (not (= (+ (* (- 1) f147@1) 0) 0))
   (not (= (+ (* (- 1) f145@1) 0) 0))
   (not (= (+ (* (- 1) f144@1) 0) 0))
   (not (= (+ (* (- 1) f146@1) 0) 0))
   (not (> (* 1 f148@1) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      1)
     0))
   (not (> (+ (* (- 1) f145@1) (* (- 1) f146@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 2) 0))
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* 1 f148@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 97 

(declare-fun __ic3_ind_gen_97 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_97
 (not
  (or
   (not f105@0)
   (not (= (+ (* (- 1) f147@0) 0) 0))
   (not (= (+ (* (- 1) f145@0) 0) 0))
   (not (= (+ (* (- 1) f144@0) 0) 0))
   (not (= (+ (* (- 1) f146@0) 0) 0))
   (not (> (* 1 f148@0) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      1)
     0))
   (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0))
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* 1 f148@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 98 

(declare-fun __ic3_ind_gen_98 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_98
 (or
  (not f105@0)
  (not (= (+ (* (- 1) f147@0) 0) 0))
  (not (= (+ (* (- 1) f145@0) 0) 0))
  (not (= (+ (* (- 1) f144@0) 0) 0))
  (not (= (+ (* (- 1) f146@0) 0) 0))
  (not (> (* 1 f148@0) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     1)
    0))
  (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_97 :named c479))
;; Success 

(assert (! __ic3_frame_0 :named c480))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c481))
;; Success 

(assert (! __ic3_ind_gen_98 :named c482))
;; Success 

(assert (! __ic3_ind_gen_96 :named c483))
;; Success 

(assert (! __ic3_clause_5_p0 :named c484))
;; Success 

(assert (! __ic3_clause_11_p0 :named c485))
;; Success 

(assert (! __ic3_clause_3_p0 :named c486))
;; Success 

(assert (! __ic3_clause_7_p0 :named c487))
;; Success 

(assert (! __ic3_clause_9_p0 :named c488))
;; Success 

(assert (! __ic3_clause_16_p0 :named c489))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_98))
;; Success 

(assert (not __ic3_ind_gen_97))
;; Success 

(assert (not __ic3_ind_gen_96))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 99 

(declare-fun __ic3_ind_gen_99 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_99
 (not
  (or
   (not f152@1)
   (not f105@1)
   (not (= (+ (* (- 1) f145@1) 0) 0))
   (not (= (+ (* (- 1) f144@1) 0) 0))
   (not (= (+ (* (- 1) f146@1) 0) 0))
   (not (> (* 1 f148@1) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      1)
     0))
   (not (> (+ (* (- 1) f145@1) (* (- 1) f146@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 2) 0))
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* 1 f148@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 100 

(declare-fun __ic3_ind_gen_100 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_100
 (not
  (or
   (not f152@0)
   (not f105@0)
   (not (= (+ (* (- 1) f145@0) 0) 0))
   (not (= (+ (* (- 1) f144@0) 0) 0))
   (not (= (+ (* (- 1) f146@0) 0) 0))
   (not (> (* 1 f148@0) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      1)
     0))
   (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0))
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* 1 f148@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 101 

(declare-fun __ic3_ind_gen_101 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_101
 (or
  (not f152@0)
  (not f105@0)
  (not (= (+ (* (- 1) f145@0) 0) 0))
  (not (= (+ (* (- 1) f144@0) 0) 0))
  (not (= (+ (* (- 1) f146@0) 0) 0))
  (not (> (* 1 f148@0) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     1)
    0))
  (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_100 :named c490))
;; Success 

(assert (! __ic3_frame_0 :named c491))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c492))
;; Success 

(assert (! __ic3_ind_gen_101 :named c493))
;; Success 

(assert (! __ic3_ind_gen_99 :named c494))
;; Success 

(assert (! __ic3_clause_5_p0 :named c495))
;; Success 

(assert (! __ic3_clause_11_p0 :named c496))
;; Success 

(assert (! __ic3_clause_3_p0 :named c497))
;; Success 

(assert (! __ic3_clause_7_p0 :named c498))
;; Success 

(assert (! __ic3_clause_9_p0 :named c499))
;; Success 

(assert (! __ic3_clause_16_p0 :named c500))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_101))
;; Success 

(assert (not __ic3_ind_gen_100))
;; Success 

(assert (not __ic3_ind_gen_99))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 102 

(declare-fun __ic3_ind_gen_102 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_102
 (not
  (or
   (not (= (+ (* (- 1) f147@1) 0) 0))
   (not f152@1)
   (not f105@1)
   (not (= (+ (* (- 1) f144@1) 0) 0))
   (not (= (+ (* (- 1) f146@1) 0) 0))
   (not (> (* 1 f148@1) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      1)
     0))
   (not (> (+ (* (- 1) f145@1) (* (- 1) f146@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 2) 0))
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* 1 f148@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 103 

(declare-fun __ic3_ind_gen_103 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_103
 (not
  (or
   (not (= (+ (* (- 1) f147@0) 0) 0))
   (not f152@0)
   (not f105@0)
   (not (= (+ (* (- 1) f144@0) 0) 0))
   (not (= (+ (* (- 1) f146@0) 0) 0))
   (not (> (* 1 f148@0) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      1)
     0))
   (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0))
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* 1 f148@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 104 

(declare-fun __ic3_ind_gen_104 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_104
 (or
  (not (= (+ (* (- 1) f147@0) 0) 0))
  (not f152@0)
  (not f105@0)
  (not (= (+ (* (- 1) f144@0) 0) 0))
  (not (= (+ (* (- 1) f146@0) 0) 0))
  (not (> (* 1 f148@0) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     1)
    0))
  (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_103 :named c501))
;; Success 

(assert (! __ic3_frame_0 :named c502))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c503))
;; Success 

(assert (! __ic3_ind_gen_104 :named c504))
;; Success 

(assert (! __ic3_ind_gen_102 :named c505))
;; Success 

(assert (! __ic3_clause_5_p0 :named c506))
;; Success 

(assert (! __ic3_clause_11_p0 :named c507))
;; Success 

(assert (! __ic3_clause_3_p0 :named c508))
;; Success 

(assert (! __ic3_clause_7_p0 :named c509))
;; Success 

(assert (! __ic3_clause_9_p0 :named c510))
;; Success 

(assert (! __ic3_clause_16_p0 :named c511))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_104))
;; Success 

(assert (not __ic3_ind_gen_103))
;; Success 

(assert (not __ic3_ind_gen_102))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 105 

(declare-fun __ic3_ind_gen_105 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_105
 (not
  (or
   (not (= (+ (* (- 1) f145@1) 0) 0))
   (not (= (+ (* (- 1) f147@1) 0) 0))
   (not f152@1)
   (not f105@1)
   (not (= (+ (* (- 1) f146@1) 0) 0))
   (not (> (* 1 f148@1) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      1)
     0))
   (not (> (+ (* (- 1) f145@1) (* (- 1) f146@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 2) 0))
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* 1 f148@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 106 

(declare-fun __ic3_ind_gen_106 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_106
 (not
  (or
   (not (= (+ (* (- 1) f145@0) 0) 0))
   (not (= (+ (* (- 1) f147@0) 0) 0))
   (not f152@0)
   (not f105@0)
   (not (= (+ (* (- 1) f146@0) 0) 0))
   (not (> (* 1 f148@0) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      1)
     0))
   (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0))
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* 1 f148@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 107 

(declare-fun __ic3_ind_gen_107 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_107
 (or
  (not (= (+ (* (- 1) f145@0) 0) 0))
  (not (= (+ (* (- 1) f147@0) 0) 0))
  (not f152@0)
  (not f105@0)
  (not (= (+ (* (- 1) f146@0) 0) 0))
  (not (> (* 1 f148@0) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     1)
    0))
  (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_106 :named c512))
;; Success 

(assert (! __ic3_frame_0 :named c513))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c514))
;; Success 

(assert (! __ic3_ind_gen_107 :named c515))
;; Success 

(assert (! __ic3_ind_gen_105 :named c516))
;; Success 

(assert (! __ic3_clause_5_p0 :named c517))
;; Success 

(assert (! __ic3_clause_11_p0 :named c518))
;; Success 

(assert (! __ic3_clause_3_p0 :named c519))
;; Success 

(assert (! __ic3_clause_7_p0 :named c520))
;; Success 

(assert (! __ic3_clause_9_p0 :named c521))
;; Success 

(assert (! __ic3_clause_16_p0 :named c522))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_107))
;; Success 

(assert (not __ic3_ind_gen_106))
;; Success 

(assert (not __ic3_ind_gen_105))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 108 

(declare-fun __ic3_ind_gen_108 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_108
 (not
  (or
   (not (= (+ (* (- 1) f144@1) 0) 0))
   (not (= (+ (* (- 1) f145@1) 0) 0))
   (not (= (+ (* (- 1) f147@1) 0) 0))
   (not f152@1)
   (not f105@1)
   (not (> (* 1 f148@1) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      1)
     0))
   (not (> (+ (* (- 1) f145@1) (* (- 1) f146@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 2) 0))
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* 1 f148@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 109 

(declare-fun __ic3_ind_gen_109 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_109
 (not
  (or
   (not (= (+ (* (- 1) f144@0) 0) 0))
   (not (= (+ (* (- 1) f145@0) 0) 0))
   (not (= (+ (* (- 1) f147@0) 0) 0))
   (not f152@0)
   (not f105@0)
   (not (> (* 1 f148@0) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      1)
     0))
   (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0))
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* 1 f148@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 110 

(declare-fun __ic3_ind_gen_110 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_110
 (or
  (not (= (+ (* (- 1) f144@0) 0) 0))
  (not (= (+ (* (- 1) f145@0) 0) 0))
  (not (= (+ (* (- 1) f147@0) 0) 0))
  (not f152@0)
  (not f105@0)
  (not (> (* 1 f148@0) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     1)
    0))
  (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_109 :named c523))
;; Success 

(assert (! __ic3_frame_0 :named c524))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c525))
;; Success 

(assert (! __ic3_ind_gen_110 :named c526))
;; Success 

(assert (! __ic3_ind_gen_108 :named c527))
;; Success 

(assert (! __ic3_clause_5_p0 :named c528))
;; Success 

(assert (! __ic3_clause_11_p0 :named c529))
;; Success 

(assert (! __ic3_clause_3_p0 :named c530))
;; Success 

(assert (! __ic3_clause_7_p0 :named c531))
;; Success 

(assert (! __ic3_clause_9_p0 :named c532))
;; Success 

(assert (! __ic3_clause_16_p0 :named c533))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_110))
;; Success 

(assert (not __ic3_ind_gen_109))
;; Success 

(assert (not __ic3_ind_gen_108))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 111 

(declare-fun __ic3_ind_gen_111 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_111
 (not
  (or
   (not (= (+ (* (- 1) f146@1) 0) 0))
   (not (= (+ (* (- 1) f144@1) 0) 0))
   (not (= (+ (* (- 1) f145@1) 0) 0))
   (not (= (+ (* (- 1) f147@1) 0) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      1)
     0))
   (not (> (+ (* (- 1) f145@1) (* (- 1) f146@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 2) 0))
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* 1 f148@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 112 

(declare-fun __ic3_ind_gen_112 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_112
 (not
  (or
   (not (= (+ (* (- 1) f146@0) 0) 0))
   (not (= (+ (* (- 1) f144@0) 0) 0))
   (not (= (+ (* (- 1) f145@0) 0) 0))
   (not (= (+ (* (- 1) f147@0) 0) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      1)
     0))
   (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0))
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* 1 f148@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 113 

(declare-fun __ic3_ind_gen_113 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_113
 (or
  (not (= (+ (* (- 1) f146@0) 0) 0))
  (not (= (+ (* (- 1) f144@0) 0) 0))
  (not (= (+ (* (- 1) f145@0) 0) 0))
  (not (= (+ (* (- 1) f147@0) 0) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     1)
    0))
  (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_112 :named c534))
;; Success 

(assert (! __ic3_frame_0 :named c535))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c536))
;; Success 

(assert (! __ic3_ind_gen_113 :named c537))
;; Success 

(assert (! __ic3_ind_gen_111 :named c538))
;; Success 

(assert (! __ic3_clause_5_p0 :named c539))
;; Success 

(assert (! __ic3_clause_11_p0 :named c540))
;; Success 

(assert (! __ic3_clause_3_p0 :named c541))
;; Success 

(assert (! __ic3_clause_7_p0 :named c542))
;; Success 

(assert (! __ic3_clause_9_p0 :named c543))
;; Success 

(assert (! __ic3_clause_16_p0 :named c544))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_113))
;; Success 

(assert (not __ic3_ind_gen_112))
;; Success 

(assert (not __ic3_ind_gen_111))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 114 

(declare-fun __ic3_ind_gen_114 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_114
 (not
  (or
   (not (> (* 1 f148@1) 0))
   (not (= (+ (* (- 1) f146@1) 0) 0))
   (not (= (+ (* (- 1) f144@1) 0) 0))
   (not (= (+ (* (- 1) f145@1) 0) 0))
   (not (= (+ (* (- 1) f147@1) 0) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f145@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      1)
     0))
   (not (> (+ (* (- 1) f145@1) (* (- 1) f146@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 2) 0))
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* 1 f148@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 115 

(declare-fun __ic3_ind_gen_115 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_115
 (not
  (or
   (not (> (* 1 f148@0) 0))
   (not (= (+ (* (- 1) f146@0) 0) 0))
   (not (= (+ (* (- 1) f144@0) 0) 0))
   (not (= (+ (* (- 1) f145@0) 0) 0))
   (not (= (+ (* (- 1) f147@0) 0) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      1)
     0))
   (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0))
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* 1 f148@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 116 

(declare-fun __ic3_ind_gen_116 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_116
 (or
  (not (> (* 1 f148@0) 0))
  (not (= (+ (* (- 1) f146@0) 0) 0))
  (not (= (+ (* (- 1) f144@0) 0) 0))
  (not (= (+ (* (- 1) f145@0) 0) 0))
  (not (= (+ (* (- 1) f147@0) 0) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     1)
    0))
  (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_115 :named c545))
;; Success 

(assert (! __ic3_frame_0 :named c546))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c547))
;; Success 

(assert (! __ic3_ind_gen_116 :named c548))
;; Success 

(assert (! __ic3_ind_gen_114 :named c549))
;; Success 

(assert (! __ic3_clause_5_p0 :named c550))
;; Success 

(assert (! __ic3_clause_11_p0 :named c551))
;; Success 

(assert (! __ic3_clause_3_p0 :named c552))
;; Success 

(assert (! __ic3_clause_7_p0 :named c553))
;; Success 

(assert (! __ic3_clause_9_p0 :named c554))
;; Success 

(assert (! __ic3_clause_16_p0 :named c555))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_116))
;; Success 

(assert (not __ic3_ind_gen_115))
;; Success 

(assert (not __ic3_ind_gen_114))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 117 

(declare-fun __ic3_ind_gen_117 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_117
 (not
  (or
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (* 1 f148@1) 0))
   (not (= (+ (* (- 1) f146@1) 0) 0))
   (not (= (+ (* (- 1) f144@1) 0) 0))
   (not (= (+ (* (- 1) f145@1) 0) 0))
   (not (= (+ (* (- 1) f147@1) 0) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      1)
     0))
   (not (> (+ (* (- 1) f145@1) (* (- 1) f146@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 2) 0))
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* 1 f148@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 118 

(declare-fun __ic3_ind_gen_118 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_118
 (not
  (or
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (* 1 f148@0) 0))
   (not (= (+ (* (- 1) f146@0) 0) 0))
   (not (= (+ (* (- 1) f144@0) 0) 0))
   (not (= (+ (* (- 1) f145@0) 0) 0))
   (not (= (+ (* (- 1) f147@0) 0) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      1)
     0))
   (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0))
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* 1 f148@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 119 

(declare-fun __ic3_ind_gen_119 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_119
 (or
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (* 1 f148@0) 0))
  (not (= (+ (* (- 1) f146@0) 0) 0))
  (not (= (+ (* (- 1) f144@0) 0) 0))
  (not (= (+ (* (- 1) f145@0) 0) 0))
  (not (= (+ (* (- 1) f147@0) 0) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     1)
    0))
  (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_118 :named c556))
;; Success 

(assert (! __ic3_frame_0 :named c557))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c558))
;; Success 

(assert (! __ic3_ind_gen_119 :named c559))
;; Success 

(assert (! __ic3_ind_gen_117 :named c560))
;; Success 

(assert (! __ic3_clause_5_p0 :named c561))
;; Success 

(assert (! __ic3_clause_11_p0 :named c562))
;; Success 

(assert (! __ic3_clause_3_p0 :named c563))
;; Success 

(assert (! __ic3_clause_7_p0 :named c564))
;; Success 

(assert (! __ic3_clause_9_p0 :named c565))
;; Success 

(assert (! __ic3_clause_16_p0 :named c566))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_119))
;; Success 

(assert (not __ic3_ind_gen_118))
;; Success 

(assert (not __ic3_ind_gen_117))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 120 

(declare-fun __ic3_ind_gen_120 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_120
 (not
  (or
   (not (> (+ (* (- 1) f145@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (* 1 f148@1) 0))
   (not (= (+ (* (- 1) f146@1) 0) 0))
   (not (= (+ (* (- 1) f144@1) 0) 0))
   (not (= (+ (* (- 1) f145@1) 0) 0))
   (not (= (+ (* (- 1) f147@1) 0) 0))
   (not f152@1)
   (not f105@1)
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      1)
     0))
   (not (> (+ (* (- 1) f145@1) (* (- 1) f146@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 2) 0))
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* 1 f148@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 121 

(declare-fun __ic3_ind_gen_121 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_121
 (not
  (or
   (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (* 1 f148@0) 0))
   (not (= (+ (* (- 1) f146@0) 0) 0))
   (not (= (+ (* (- 1) f144@0) 0) 0))
   (not (= (+ (* (- 1) f145@0) 0) 0))
   (not (= (+ (* (- 1) f147@0) 0) 0))
   (not f152@0)
   (not f105@0)
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      1)
     0))
   (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0))
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* 1 f148@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 122 

(declare-fun __ic3_ind_gen_122 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_122
 (or
  (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (* 1 f148@0) 0))
  (not (= (+ (* (- 1) f146@0) 0) 0))
  (not (= (+ (* (- 1) f144@0) 0) 0))
  (not (= (+ (* (- 1) f145@0) 0) 0))
  (not (= (+ (* (- 1) f147@0) 0) 0))
  (not f152@0)
  (not f105@0)
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     1)
    0))
  (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_121 :named c567))
;; Success 

(assert (! __ic3_frame_0 :named c568))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c569))
;; Success 

(assert (! __ic3_ind_gen_122 :named c570))
;; Success 

(assert (! __ic3_ind_gen_120 :named c571))
;; Success 

(assert (! __ic3_clause_5_p0 :named c572))
;; Success 

(assert (! __ic3_clause_11_p0 :named c573))
;; Success 

(assert (! __ic3_clause_3_p0 :named c574))
;; Success 

(assert (! __ic3_clause_7_p0 :named c575))
;; Success 

(assert (! __ic3_clause_9_p0 :named c576))
;; Success 

(assert (! __ic3_clause_16_p0 :named c577))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_122))
;; Success 

(assert (not __ic3_ind_gen_121))
;; Success 

(assert (not __ic3_ind_gen_120))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 123 

(declare-fun __ic3_ind_gen_123 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_123
 (not
  (or
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1)) 0))
   (not (> (+ (* (- 1) f145@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (* 1 f148@1) 0))
   (not (= (+ (* (- 1) f146@1) 0) 0))
   (not (= (+ (* (- 1) f144@1) 0) 0))
   (not (= (+ (* (- 1) f145@1) 0) 0))
   (not (= (+ (* (- 1) f147@1) 0) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f145@1) (* (- 1) f146@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 2) 0))
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* 1 f148@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 124 

(declare-fun __ic3_ind_gen_124 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_124
 (not
  (or
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
   (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (* 1 f148@0) 0))
   (not (= (+ (* (- 1) f146@0) 0) 0))
   (not (= (+ (* (- 1) f144@0) 0) 0))
   (not (= (+ (* (- 1) f145@0) 0) 0))
   (not (= (+ (* (- 1) f147@0) 0) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0))
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* 1 f148@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 125 

(declare-fun __ic3_ind_gen_125 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_125
 (or
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
  (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (* 1 f148@0) 0))
  (not (= (+ (* (- 1) f146@0) 0) 0))
  (not (= (+ (* (- 1) f144@0) 0) 0))
  (not (= (+ (* (- 1) f145@0) 0) 0))
  (not (= (+ (* (- 1) f147@0) 0) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_124 :named c578))
;; Success 

(assert (! __ic3_frame_0 :named c579))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c580))
;; Success 

(assert (! __ic3_ind_gen_125 :named c581))
;; Success 

(assert (! __ic3_ind_gen_123 :named c582))
;; Success 

(assert (! __ic3_clause_5_p0 :named c583))
;; Success 

(assert (! __ic3_clause_11_p0 :named c584))
;; Success 

(assert (! __ic3_clause_3_p0 :named c585))
;; Success 

(assert (! __ic3_clause_7_p0 :named c586))
;; Success 

(assert (! __ic3_clause_9_p0 :named c587))
;; Success 

(assert (! __ic3_clause_16_p0 :named c588))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_125))
;; Success 

(assert (not __ic3_ind_gen_124))
;; Success 

(assert (not __ic3_ind_gen_123))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 126 

(declare-fun __ic3_ind_gen_126 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_126
 (not
  (or
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      1)
     0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1)) 0))
   (not (> (+ (* (- 1) f145@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (* 1 f148@1) 0))
   (not (= (+ (* (- 1) f146@1) 0) 0))
   (not (= (+ (* (- 1) f144@1) 0) 0))
   (not (= (+ (* (- 1) f145@1) 0) 0))
   (not (= (+ (* (- 1) f147@1) 0) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 2) 0))
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* 1 f148@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 127 

(declare-fun __ic3_ind_gen_127 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_127
 (not
  (or
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      1)
     0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
   (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (* 1 f148@0) 0))
   (not (= (+ (* (- 1) f146@0) 0) 0))
   (not (= (+ (* (- 1) f144@0) 0) 0))
   (not (= (+ (* (- 1) f145@0) 0) 0))
   (not (= (+ (* (- 1) f147@0) 0) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0))
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* 1 f148@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 128 

(declare-fun __ic3_ind_gen_128 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_128
 (or
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     1)
    0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
  (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (* 1 f148@0) 0))
  (not (= (+ (* (- 1) f146@0) 0) 0))
  (not (= (+ (* (- 1) f144@0) 0) 0))
  (not (= (+ (* (- 1) f145@0) 0) 0))
  (not (= (+ (* (- 1) f147@0) 0) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_127 :named c589))
;; Success 

(assert (! __ic3_frame_0 :named c590))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c591))
;; Success 

(assert (! __ic3_ind_gen_128 :named c592))
;; Success 

(assert (! __ic3_ind_gen_126 :named c593))
;; Success 

(assert (! __ic3_clause_5_p0 :named c594))
;; Success 

(assert (! __ic3_clause_11_p0 :named c595))
;; Success 

(assert (! __ic3_clause_3_p0 :named c596))
;; Success 

(assert (! __ic3_clause_7_p0 :named c597))
;; Success 

(assert (! __ic3_clause_9_p0 :named c598))
;; Success 

(assert (! __ic3_clause_16_p0 :named c599))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_128))
;; Success 

(assert (not __ic3_ind_gen_127))
;; Success 

(assert (not __ic3_ind_gen_126))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 129 

(declare-fun __ic3_ind_gen_129 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_129
 (not
  (or
   (not (> (+ (* (- 1) f145@1) (* (- 1) f146@1) (* 1 f153@1) 2) 0))
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      1)
     0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1)) 0))
   (not (> (+ (* (- 1) f145@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (* 1 f148@1) 0))
   (not (= (+ (* (- 1) f146@1) 0) 0))
   (not (= (+ (* (- 1) f144@1) 0) 0))
   (not (= (+ (* (- 1) f145@1) 0) 0))
   (not (= (+ (* (- 1) f147@1) 0) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* 1 f148@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 130 

(declare-fun __ic3_ind_gen_130 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_130
 (not
  (or
   (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      1)
     0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
   (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (* 1 f148@0) 0))
   (not (= (+ (* (- 1) f146@0) 0) 0))
   (not (= (+ (* (- 1) f144@0) 0) 0))
   (not (= (+ (* (- 1) f145@0) 0) 0))
   (not (= (+ (* (- 1) f147@0) 0) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* 1 f148@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 131 

(declare-fun __ic3_ind_gen_131 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_131
 (or
  (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     1)
    0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
  (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (* 1 f148@0) 0))
  (not (= (+ (* (- 1) f146@0) 0) 0))
  (not (= (+ (* (- 1) f144@0) 0) 0))
  (not (= (+ (* (- 1) f145@0) 0) 0))
  (not (= (+ (* (- 1) f147@0) 0) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_130 :named c600))
;; Success 

(assert (! __ic3_frame_0 :named c601))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c602))
;; Success 

(assert (! __ic3_ind_gen_131 :named c603))
;; Success 

(assert (! __ic3_ind_gen_129 :named c604))
;; Success 

(assert (! __ic3_clause_5_p0 :named c605))
;; Success 

(assert (! __ic3_clause_11_p0 :named c606))
;; Success 

(assert (! __ic3_clause_3_p0 :named c607))
;; Success 

(assert (! __ic3_clause_7_p0 :named c608))
;; Success 

(assert (! __ic3_clause_9_p0 :named c609))
;; Success 

(assert (! __ic3_clause_16_p0 :named c610))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_131))
;; Success 

(assert (not __ic3_ind_gen_130))
;; Success 

(assert (not __ic3_ind_gen_129))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 132 

(declare-fun __ic3_ind_gen_132 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_132
 (not
  (or
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 2) 0))
   (not (> (+ (* (- 1) f145@1) (* (- 1) f146@1) (* 1 f153@1) 2) 0))
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      1)
     0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1)) 0))
   (not (> (+ (* (- 1) f145@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (* 1 f148@1) 0))
   (not (= (+ (* (- 1) f146@1) 0) 0))
   (not (= (+ (* (- 1) f144@1) 0) 0))
   (not (= (+ (* (- 1) f145@1) 0) 0))
   (not (= (+ (* (- 1) f147@1) 0) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* 1 f148@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 133 

(declare-fun __ic3_ind_gen_133 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_133
 (not
  (or
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0))
   (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      1)
     0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
   (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (* 1 f148@0) 0))
   (not (= (+ (* (- 1) f146@0) 0) 0))
   (not (= (+ (* (- 1) f144@0) 0) 0))
   (not (= (+ (* (- 1) f145@0) 0) 0))
   (not (= (+ (* (- 1) f147@0) 0) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* 1 f148@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 134 

(declare-fun __ic3_ind_gen_134 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_134
 (or
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0))
  (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     1)
    0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
  (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (* 1 f148@0) 0))
  (not (= (+ (* (- 1) f146@0) 0) 0))
  (not (= (+ (* (- 1) f144@0) 0) 0))
  (not (= (+ (* (- 1) f145@0) 0) 0))
  (not (= (+ (* (- 1) f147@0) 0) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* 1 f148@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_133 :named c611))
;; Success 

(assert (! __ic3_frame_0 :named c612))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_134))
;; Success 

(assert (not __ic3_ind_gen_133))
;; Success 

(assert (not __ic3_ind_gen_132))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 135 

(declare-fun __ic3_ind_gen_135 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_135
 (not
  (or
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 2) 0))
   (not (> (+ (* (- 1) f145@1) (* (- 1) f146@1) (* 1 f153@1) 2) 0))
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      1)
     0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1)) 0))
   (not (> (+ (* (- 1) f145@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (* 1 f148@1) 0))
   (not (= (+ (* (- 1) f146@1) 0) 0))
   (not (= (+ (* (- 1) f144@1) 0) 0))
   (not (= (+ (* (- 1) f145@1) 0) 0))
   (not (= (+ (* (- 1) f147@1) 0) 0))
   (not f152@1)
   (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 136 

(declare-fun __ic3_ind_gen_136 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_136
 (not
  (or
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0))
   (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      1)
     0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
   (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (* 1 f148@0) 0))
   (not (= (+ (* (- 1) f146@0) 0) 0))
   (not (= (+ (* (- 1) f144@0) 0) 0))
   (not (= (+ (* (- 1) f145@0) 0) 0))
   (not (= (+ (* (- 1) f147@0) 0) 0))
   (not f152@0)
   (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 137 

(declare-fun __ic3_ind_gen_137 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_137
 (or
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0))
  (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     1)
    0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
  (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (* 1 f148@0) 0))
  (not (= (+ (* (- 1) f146@0) 0) 0))
  (not (= (+ (* (- 1) f144@0) 0) 0))
  (not (= (+ (* (- 1) f145@0) 0) 0))
  (not (= (+ (* (- 1) f147@0) 0) 0))
  (not f152@0)
  (not f105@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_136 :named c613))
;; Success 

(assert (! __ic3_frame_0 :named c614))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_137))
;; Success 

(assert (not __ic3_ind_gen_136))
;; Success 

(assert (not __ic3_ind_gen_135))
;; Success 

;; block: Is blocking clause relative inductive to R_1? 

(declare-fun __ic3_clause_17_n1_0 () Bool)
;; Success 

(assert (=> __ic3_clause_17_n1_0 f105@1))
;; Success 

(declare-fun __ic3_clause_17_n1_1 () Bool)
;; Success 

(assert (=> __ic3_clause_17_n1_1 f152@1))
;; Success 

(declare-fun __ic3_clause_17_n1_2 () Bool)
;; Success 

(assert (=> __ic3_clause_17_n1_2 (= (+ (* (- 1) f147@1) 0) 0)))
;; Success 

(declare-fun __ic3_clause_17_n1_3 () Bool)
;; Success 

(assert (=> __ic3_clause_17_n1_3 (= (+ (* (- 1) f145@1) 0) 0)))
;; Success 

(declare-fun __ic3_clause_17_n1_4 () Bool)
;; Success 

(assert (=> __ic3_clause_17_n1_4 (= (+ (* (- 1) f144@1) 0) 0)))
;; Success 

(declare-fun __ic3_clause_17_n1_5 () Bool)
;; Success 

(assert (=> __ic3_clause_17_n1_5 (= (+ (* (- 1) f146@1) 0) 0)))
;; Success 

(declare-fun __ic3_clause_17_n1_6 () Bool)
;; Success 

(assert (=> __ic3_clause_17_n1_6 (> (* 1 f148@1) 0)))
;; Success 

(declare-fun __ic3_clause_17_n1_7 () Bool)
;; Success 

(assert (=> __ic3_clause_17_n1_7 (> (+ (* (- 1) f144@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_17_n1_8 () Bool)
;; Success 

(assert (=> __ic3_clause_17_n1_8 (> (+ (* (- 1) f145@1) (* 1 f153@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_17_n1_9 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_17_n1_9
 (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1)) 0)))
;; Success 

(declare-fun __ic3_clause_17_n1_10 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_17_n1_10
 (>
  (+
   (* (- 1) f144@1)
   (* (- 1) f145@1)
   (* (- 1) f146@1)
   (* (- 1) f147@1)
   (* 1 f153@1)
   1)
  0)))
;; Success 

(declare-fun __ic3_clause_17_n1_11 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_17_n1_11
 (> (+ (* (- 1) f145@1) (* (- 1) f146@1) (* 1 f153@1) 2) 0)))
;; Success 

(declare-fun __ic3_clause_17_n1_12 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_17_n1_12
 (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 2) 0)))
;; Success 

(declare-fun __ic3_clause_17_n1_13 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_17_n1_13
 (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 2) 0)))
;; Success 

(declare-fun __ic3_clause_17_n1_14 () Bool)
;; Success 

(assert (=> __ic3_clause_17_n1_14 (> (+ (* 1 f148@1) (- 1)) 0)))
;; Success 

(declare-fun __ic3_clause_17_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_17_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (= (+ (* (- 1) f147@0) 0) 0))
  (not (= (+ (* (- 1) f145@0) 0) 0))
  (not (= (+ (* (- 1) f144@0) 0) 0))
  (not (= (+ (* (- 1) f146@0) 0) 0))
  (not (> (* 1 f148@0) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     1)
    0))
  (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 2) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (- 1)) 0)))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_17_p0 :named c615))
;; Success 

(assert (! __ic3_clause_17_n1_0 :named c616))
;; Success 

(assert (! __ic3_clause_17_n1_1 :named c617))
;; Success 

(assert (! __ic3_clause_17_n1_2 :named c618))
;; Success 

(assert (! __ic3_clause_17_n1_3 :named c619))
;; Success 

(assert (! __ic3_clause_17_n1_4 :named c620))
;; Success 

(assert (! __ic3_clause_17_n1_5 :named c621))
;; Success 

(assert (! __ic3_clause_17_n1_6 :named c622))
;; Success 

(assert (! __ic3_clause_17_n1_7 :named c623))
;; Success 

(assert (! __ic3_clause_17_n1_8 :named c624))
;; Success 

(assert (! __ic3_clause_17_n1_9 :named c625))
;; Success 

(assert (! __ic3_clause_17_n1_10 :named c626))
;; Success 

(assert (! __ic3_clause_17_n1_11 :named c627))
;; Success 

(assert (! __ic3_clause_17_n1_12 :named c628))
;; Success 

(assert (! __ic3_clause_17_n1_13 :named c629))
;; Success 

(assert (! __ic3_clause_17_n1_14 :named c630))
;; Success 

(assert (! __ic3_clause_5_p0 :named c631))
;; Success 

(assert (! __ic3_clause_11_p0 :named c632))
;; Success 

(assert (! __ic3_clause_3_p0 :named c633))
;; Success 

(assert (! __ic3_clause_7_p0 :named c634))
;; Success 

(assert (! __ic3_clause_9_p0 :named c635))
;; Success 

(assert (! __ic3_clause_16_p0 :named c636))
;; Success 

(check-sat)
;; Sat 

(get-value
 (f154@1
  f155@1
  f156@1
  f157@1
  f158@1
  f153@1
  f152@1
  f151@1
  f150@1
  f149@1
  f148@1
  f147@1
  f146@1
  f145@1
  f144@1
  f90@1
  f105@1
  f113
  f114
  f115
  f116
  f117
  f118
  f119
  f120
  f121
  f122
  f123
  f124
  f125
  f126
  f127
  f128
  f129
  f130
  f131
  f132
  f133
  f134
  f135
  f136
  f137
  f138
  f139
  f140
  f141
  f142
  f143
  f104@1
  f103@1
  f102@1
  f101@1
  f100@1
  f99@1
  f98@1
  f97@1
  f96@1
  f95@1
  f94@1
  f93@1
  f92@1
  f154@0
  f155@0
  f156@0
  f157@0
  f158@0
  f153@0
  f152@0
  f151@0
  f150@0
  f149@0
  f148@0
  f147@0
  f146@0
  f145@0
  f144@0
  f90@0
  f105@0
  f113
  f114
  f115
  f116
  f117
  f118
  f119
  f120
  f121
  f122
  f123
  f124
  f125
  f126
  f127
  f128
  f129
  f130
  f131
  f132
  f133
  f134
  f135
  f136
  f137
  f138
  f139
  f140
  f141
  f142
  f143
  f104@0
  f103@0
  f102@0
  f101@0
  f100@0
  f99@0
  f98@0
  f97@0
  f96@0
  f95@0
  f94@0
  f93@0
  f92@0))
;; ((f154@1 false) 
;;     (f155@1 false) 
;;     (f156@1 false) 
;;     (f157@1 1) 
;;     (f158@1 false) 
;;     (f153@1 1) 
;;     (f152@1 true) 
;;     (f151@1 true) 
;;     (f150@1 true) 
;;     (f149@1 false) 
;;     (f148@1 2) 
;;     (f147@1 0) 
;;     (f146@1 0) 
;;     (f145@1 0) 
;;     (f144@1 0) 
;;     (f90@1 false) 
;;     (f105@1 true) 
;;     (f113 0) 
;;     (f114 0) 
;;     (f115 0) 
;;     (f116 0) 
;;     (f117 0) 
;;     (f118 0) 
;;     (f119 0) 
;;     (f120 0) 
;;     (f121 0) 
;;     (f122 0) 
;;     (f123 0) 
;;     (f124 0) 
;;     (f125 0) 
;;     (f126 0) 
;;     (f127 0) 
;;     (f128 0) 
;;     (f129 0) 
;;     (f130 0) 
;;     (f131 0) 
;;     (f132 0) 
;;     (f133 0) 
;;     (f134 0) 
;;     (f135 0) 
;;     (f136 0) 
;;     (f137 0) 
;;     (f138 0) 
;;     (f139 0) 
;;     (f140 0) 
;;     (f141 0) 
;;     (f142 0) 
;;     (f143 0) 
;;     (f104@1 1) 
;;     (f103@1 false) 
;;     (f102@1 false) 
;;     (f101@1 false) 
;;     (f100@1 false) 
;;     (f99@1 false) 
;;     (f98@1 false) 
;;     (f97@1 false) 
;;     (f96@1 false) 
;;     (f95@1 false) 
;;     (f94@1 false) 
;;     (f93@1 true) 
;;     (f92@1 false) 
;;     (f154@0 false) 
;;     (f155@0 false) 
;;     (f156@0 false) 
;;     (f157@0 1) 
;;     (f158@0 false) 
;;     (f153@0 1) 
;;     (f152@0 true) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 3) 
;;     (f147@0 (- 1)) 
;;     (f146@0 1) 
;;     (f145@0 (- 1)) 
;;     (f144@0 0) 
;;     (f90@0 false) 
;;     (f105@0 true) 
;;     (f113 0) 
;;     (f114 0) 
;;     (f115 0) 
;;     (f116 0) 
;;     (f117 0) 
;;     (f118 0) 
;;     (f119 0) 
;;     (f120 0) 
;;     (f121 0) 
;;     (f122 0) 
;;     (f123 0) 
;;     (f124 0) 
;;     (f125 0) 
;;     (f126 0) 
;;     (f127 0) 
;;     (f128 0) 
;;     (f129 0) 
;;     (f130 0) 
;;     (f131 0) 
;;     (f132 0) 
;;     (f133 0) 
;;     (f134 0) 
;;     (f135 0) 
;;     (f136 0) 
;;     (f137 0) 
;;     (f138 0) 
;;     (f139 0) 
;;     (f140 0) 
;;     (f141 0) 
;;     (f142 0) 
;;     (f143 0) 
;;     (f104@0 0) 
;;     (f103@0 false) 
;;     (f102@0 false) 
;;     (f101@0 false) 
;;     (f100@0 false) 
;;     (f99@0 false) 
;;     (f98@0 false) 
;;     (f97@0 false) 
;;     (f96@0 false) 
;;     (f95@0 false) 
;;     (f94@0 false) 
;;     (f93@0 false) 
;;     (f92@0 false)) 

(pop 1)
;; Success 

;; New clause at depth 1 to block #17: 
;; #18 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (* 1 top.res.abs_4@0) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_1@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* 1 top.res.abs_0@0) 
;;         (* (- 1) top.res.abs_1@0) 
;;         (* 1 top.res.abs_2@0) 
;;         (* 1 top.res.abs_3@0) 
;;         1) 
;;        0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* (- 1) top.res.abs_0@0) 
;;         (* (- 1) top.res.abs_1@0) 
;;         (* 1 top.res.abs_9@0)) 
;;        0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* (- 1) top.res.abs_0@0) 
;;         (* (- 1) top.res.abs_1@0) 
;;         (* (- 1) top.res.abs_2@0) 
;;         (* (- 1) top.res.abs_3@0) 
;;         (* 1 top.res.abs_9@0) 
;;         1) 
;;        0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* (- 1) top.res.abs_1@0) 
;;         (* (- 1) top.res.abs_2@0) 
;;         (* 1 top.res.abs_9@0) 
;;         2) 
;;        0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (- 1)) 0)); 
;;      (= (* 1 top.res.abs_3@0) 0); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (- 2)) 0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* 1 top.res.abs_0@0) 
;;         (* 1 top.res.abs_1@0) 
;;         (* (- 1) top.res.abs_9@0) 
;;         3) 
;;        0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* (- 1) top.res.abs_0@0) 
;;         (* (- 1) top.res.abs_1@0) 
;;         (* 1 top.res.abs_2@0) 
;;         (* 1 top.res.abs_3@0) 
;;         1) 
;;        0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* (- 1) top.res.abs_0@0) 
;;         (* (- 1) top.res.abs_1@0) 
;;         (* 1 top.res.abs_9@0) 
;;         (- 1)) 
;;        0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* (- 1) top.res.abs_0@0) 
;;         (* (- 1) top.res.abs_1@0) 
;;         (* (- 1) top.res.abs_2@0) 
;;         (* (- 1) top.res.abs_3@0) 
;;         (* 1 top.res.abs_9@0) 
;;         0) 
;;        0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* (- 1) top.res.abs_0@0) 
;;         (* (- 1) top.res.abs_1@0) 
;;         (* 1 top.res.abs_9@0) 
;;         0) 
;;        0)); 
;;      (not (= (+ (* 1 top.res.abs_2@0) (* 1 top.res.abs_3@0)) 0)); 
;;      (not (= (+ (* 1 top.res.abs_0@0) (* 1 top.res.abs_1@0) 1) 0))} 

;; block: Is blocking clause relative inductive to R_0? 

(declare-fun __ic3_clause_18_n1_0 () Bool)
;; Success 

(assert (=> __ic3_clause_18_n1_0 f105@1))
;; Success 

(declare-fun __ic3_clause_18_n1_1 () Bool)
;; Success 

(assert (=> __ic3_clause_18_n1_1 f152@1))
;; Success 

(declare-fun __ic3_clause_18_n1_2 () Bool)
;; Success 

(assert (=> __ic3_clause_18_n1_2 (> (* 1 f148@1) 0)))
;; Success 

(declare-fun __ic3_clause_18_n1_3 () Bool)
;; Success 

(assert (=> __ic3_clause_18_n1_3 (> (+ (* (- 1) f145@1) (* 1 f153@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_18_n1_4 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_18_n1_4
 (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_18_n1_5 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_18_n1_5
 (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1)) 0)))
;; Success 

(declare-fun __ic3_clause_18_n1_6 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_18_n1_6
 (>
  (+
   (* (- 1) f144@1)
   (* (- 1) f145@1)
   (* (- 1) f146@1)
   (* (- 1) f147@1)
   (* 1 f153@1)
   1)
  0)))
;; Success 

(declare-fun __ic3_clause_18_n1_7 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_18_n1_7
 (> (+ (* (- 1) f145@1) (* (- 1) f146@1) (* 1 f153@1) 2) 0)))
;; Success 

(declare-fun __ic3_clause_18_n1_8 () Bool)
;; Success 

(assert (=> __ic3_clause_18_n1_8 (> (+ (* 1 f148@1) (- 1)) 0)))
;; Success 

(declare-fun __ic3_clause_18_n1_9 () Bool)
;; Success 

(assert (=> __ic3_clause_18_n1_9 (not (= (* 1 f147@1) 0))))
;; Success 

(declare-fun __ic3_clause_18_n1_10 () Bool)
;; Success 

(assert (=> __ic3_clause_18_n1_10 (> (+ (* 1 f148@1) (- 2)) 0)))
;; Success 

(declare-fun __ic3_clause_18_n1_11 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_18_n1_11
 (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 3) 0)))
;; Success 

(declare-fun __ic3_clause_18_n1_12 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_18_n1_12
 (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_18_n1_13 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_18_n1_13
 (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1) (- 1)) 0)))
;; Success 

(declare-fun __ic3_clause_18_n1_14 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_18_n1_14
 (>
  (+
   (* (- 1) f144@1)
   (* (- 1) f145@1)
   (* (- 1) f146@1)
   (* (- 1) f147@1)
   (* 1 f153@1)
   0)
  0)))
;; Success 

(declare-fun __ic3_clause_18_n1_15 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_18_n1_15
 (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1) 0) 0)))
;; Success 

(declare-fun __ic3_clause_18_n1_16 () Bool)
;; Success 

(assert (=> __ic3_clause_18_n1_16 (= (+ (* 1 f146@1) (* 1 f147@1)) 0)))
;; Success 

(declare-fun __ic3_clause_18_n1_17 () Bool)
;; Success 

(assert (=> __ic3_clause_18_n1_17 (= (+ (* 1 f144@1) (* 1 f145@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_18_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_18_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (* 1 f148@0) 0))
  (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     1)
    0))
  (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (- 1)) 0))
  (= (* 1 f147@0) 0)
  (not (> (+ (* 1 f148@0) (- 2)) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
  (not
   (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) (- 1)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     0)
    0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
  (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
  (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0)))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_18_p0 :named c637))
;; Success 

(assert (! __ic3_clause_18_n1_0 :named c638))
;; Success 

(assert (! __ic3_clause_18_n1_1 :named c639))
;; Success 

(assert (! __ic3_clause_18_n1_2 :named c640))
;; Success 

(assert (! __ic3_clause_18_n1_3 :named c641))
;; Success 

(assert (! __ic3_clause_18_n1_4 :named c642))
;; Success 

(assert (! __ic3_clause_18_n1_5 :named c643))
;; Success 

(assert (! __ic3_clause_18_n1_6 :named c644))
;; Success 

(assert (! __ic3_clause_18_n1_7 :named c645))
;; Success 

(assert (! __ic3_clause_18_n1_8 :named c646))
;; Success 

(assert (! __ic3_clause_18_n1_9 :named c647))
;; Success 

(assert (! __ic3_clause_18_n1_10 :named c648))
;; Success 

(assert (! __ic3_clause_18_n1_11 :named c649))
;; Success 

(assert (! __ic3_clause_18_n1_12 :named c650))
;; Success 

(assert (! __ic3_clause_18_n1_13 :named c651))
;; Success 

(assert (! __ic3_clause_18_n1_14 :named c652))
;; Success 

(assert (! __ic3_clause_18_n1_15 :named c653))
;; Success 

(assert (! __ic3_clause_18_n1_16 :named c654))
;; Success 

(assert (! __ic3_clause_18_n1_17 :named c655))
;; Success 

(assert (! __ic3_frame_0 :named c656))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c639 c647 c655 c656) 

(pop 1)
;; Success 

;; block: Check I |= C to get unsat core. 

(declare-fun __ic3_clause_18_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_18_n0_0 f105@0))
;; Success 

(declare-fun __ic3_clause_18_n0_1 () Bool)
;; Success 

(assert (=> __ic3_clause_18_n0_1 f152@0))
;; Success 

(declare-fun __ic3_clause_18_n0_2 () Bool)
;; Success 

(assert (=> __ic3_clause_18_n0_2 (> (* 1 f148@0) 0)))
;; Success 

(declare-fun __ic3_clause_18_n0_3 () Bool)
;; Success 

(assert (=> __ic3_clause_18_n0_3 (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_18_n0_4 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_18_n0_4
 (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_18_n0_5 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_18_n0_5
 (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0)))
;; Success 

(declare-fun __ic3_clause_18_n0_6 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_18_n0_6
 (>
  (+
   (* (- 1) f144@0)
   (* (- 1) f145@0)
   (* (- 1) f146@0)
   (* (- 1) f147@0)
   (* 1 f153@0)
   1)
  0)))
;; Success 

(declare-fun __ic3_clause_18_n0_7 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_18_n0_7
 (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0)))
;; Success 

(declare-fun __ic3_clause_18_n0_8 () Bool)
;; Success 

(assert (=> __ic3_clause_18_n0_8 (> (+ (* 1 f148@0) (- 1)) 0)))
;; Success 

(declare-fun __ic3_clause_18_n0_9 () Bool)
;; Success 

(assert (=> __ic3_clause_18_n0_9 (not (= (* 1 f147@0) 0))))
;; Success 

(declare-fun __ic3_clause_18_n0_10 () Bool)
;; Success 

(assert (=> __ic3_clause_18_n0_10 (> (+ (* 1 f148@0) (- 2)) 0)))
;; Success 

(declare-fun __ic3_clause_18_n0_11 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_18_n0_11
 (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0)))
;; Success 

(declare-fun __ic3_clause_18_n0_12 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_18_n0_12
 (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_18_n0_13 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_18_n0_13
 (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) (- 1)) 0)))
;; Success 

(declare-fun __ic3_clause_18_n0_14 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_18_n0_14
 (>
  (+
   (* (- 1) f144@0)
   (* (- 1) f145@0)
   (* (- 1) f146@0)
   (* (- 1) f147@0)
   (* 1 f153@0)
   0)
  0)))
;; Success 

(declare-fun __ic3_clause_18_n0_15 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_18_n0_15
 (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0)))
;; Success 

(declare-fun __ic3_clause_18_n0_16 () Bool)
;; Success 

(assert (=> __ic3_clause_18_n0_16 (= (+ (* 1 f146@0) (* 1 f147@0)) 0)))
;; Success 

(declare-fun __ic3_clause_18_n0_17 () Bool)
;; Success 

(assert (=> __ic3_clause_18_n0_17 (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c657))
;; Success 

(assert (! __ic3_clause_18_n0_0 :named c658))
;; Success 

(assert (! __ic3_clause_18_n0_1 :named c659))
;; Success 

(assert (! __ic3_clause_18_n0_2 :named c660))
;; Success 

(assert (! __ic3_clause_18_n0_3 :named c661))
;; Success 

(assert (! __ic3_clause_18_n0_4 :named c662))
;; Success 

(assert (! __ic3_clause_18_n0_5 :named c663))
;; Success 

(assert (! __ic3_clause_18_n0_6 :named c664))
;; Success 

(assert (! __ic3_clause_18_n0_7 :named c665))
;; Success 

(assert (! __ic3_clause_18_n0_8 :named c666))
;; Success 

(assert (! __ic3_clause_18_n0_9 :named c667))
;; Success 

(assert (! __ic3_clause_18_n0_10 :named c668))
;; Success 

(assert (! __ic3_clause_18_n0_11 :named c669))
;; Success 

(assert (! __ic3_clause_18_n0_12 :named c670))
;; Success 

(assert (! __ic3_clause_18_n0_13 :named c671))
;; Success 

(assert (! __ic3_clause_18_n0_14 :named c672))
;; Success 

(assert (! __ic3_clause_18_n0_15 :named c673))
;; Success 

(assert (! __ic3_clause_18_n0_16 :named c674))
;; Success 

(assert (! __ic3_clause_18_n0_17 :named c675))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c667 c657) 

(pop 1)
;; Success 

;; block: Reduced clause 
;; (or 
;;  (not top.usr.OK@0) 
;;  (not top.res.abs_8@0) 
;;  (not (> (* 1 top.res.abs_4@0) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_1@0) (* 1 top.res.abs_9@0) 1) 0)) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* 1 top.res.abs_0@0) 
;;     (* (- 1) top.res.abs_1@0) 
;;     (* 1 top.res.abs_2@0) 
;;     (* 1 top.res.abs_3@0) 
;;     1) 
;;    0)) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* (- 1) top.res.abs_0@0) 
;;     (* (- 1) top.res.abs_1@0) 
;;     (* 1 top.res.abs_9@0)) 
;;    0)) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* (- 1) top.res.abs_0@0) 
;;     (* (- 1) top.res.abs_1@0) 
;;     (* (- 1) top.res.abs_2@0) 
;;     (* (- 1) top.res.abs_3@0) 
;;     (* 1 top.res.abs_9@0) 
;;     1) 
;;    0)) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* (- 1) top.res.abs_1@0) 
;;     (* (- 1) top.res.abs_2@0) 
;;     (* 1 top.res.abs_9@0) 
;;     2) 
;;    0)) 
;;  (not (> (+ (* 1 top.res.abs_4@0) (- 1)) 0)) 
;;  (= (* 1 top.res.abs_3@0) 0) 
;;  (not (> (+ (* 1 top.res.abs_4@0) (- 2)) 0)) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* 1 top.res.abs_0@0) 
;;     (* 1 top.res.abs_1@0) 
;;     (* (- 1) top.res.abs_9@0) 
;;     3) 
;;    0)) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* (- 1) top.res.abs_0@0) 
;;     (* (- 1) top.res.abs_1@0) 
;;     (* 1 top.res.abs_2@0) 
;;     (* 1 top.res.abs_3@0) 
;;     1) 
;;    0)) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* (- 1) top.res.abs_0@0) 
;;     (* (- 1) top.res.abs_1@0) 
;;     (* 1 top.res.abs_9@0) 
;;     (- 1)) 
;;    0)) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* (- 1) top.res.abs_0@0) 
;;     (* (- 1) top.res.abs_1@0) 
;;     (* (- 1) top.res.abs_2@0) 
;;     (* (- 1) top.res.abs_3@0) 
;;     (* 1 top.res.abs_9@0) 
;;     0) 
;;    0)) 
;;  (not 
;;   (> 
;;    (+ 
;;     (* (- 1) top.res.abs_0@0) 
;;     (* (- 1) top.res.abs_1@0) 
;;     (* 1 top.res.abs_9@0) 
;;     0) 
;;    0)) 
;;  (not (= (+ (* 1 top.res.abs_2@0) (* 1 top.res.abs_3@0)) 0)) 
;;  (not (= (+ (* 1 top.res.abs_0@0) (* 1 top.res.abs_1@0) 1) 0))) 
;; with unsat core to 
;; (or 
;;  (not (= (+ (* 1 top.res.abs_0@0) (* 1 top.res.abs_1@0) 1) 0)) 
;;  (= (* 1 top.res.abs_3@0) 0) 
;;  (not top.res.abs_8@0)) 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 138 

(declare-fun __ic3_ind_gen_138 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_138 (not (or (= (* 1 f147@1) 0) (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 139 

(declare-fun __ic3_ind_gen_139 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_139 (not (or (= (* 1 f147@0) 0) (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 140 

(declare-fun __ic3_ind_gen_140 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_140 (or (= (* 1 f147@0) 0) (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_139 :named c676))
;; Success 

(assert (! __ic3_frame_0 :named c677))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c678))
;; Success 

(assert (! __ic3_ind_gen_140 :named c679))
;; Success 

(assert (! __ic3_ind_gen_138 :named c680))
;; Success 

(assert (! __ic3_frame_0 :named c681))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_140))
;; Success 

(assert (not __ic3_ind_gen_139))
;; Success 

(assert (not __ic3_ind_gen_138))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 141 

(declare-fun __ic3_ind_gen_141 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_141
 (not (or (not (= (+ (* 1 f144@1) (* 1 f145@1) 1) 0)) (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 142 

(declare-fun __ic3_ind_gen_142 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_142
 (not (or (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0)) (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 143 

(declare-fun __ic3_ind_gen_143 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_143
 (or (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0)) (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_142 :named c682))
;; Success 

(assert (! __ic3_frame_0 :named c683))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c684))
;; Success 

(assert (! __ic3_ind_gen_143 :named c685))
;; Success 

(assert (! __ic3_ind_gen_141 :named c686))
;; Success 

(assert (! __ic3_frame_0 :named c687))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_143))
;; Success 

(assert (not __ic3_ind_gen_142))
;; Success 

(assert (not __ic3_ind_gen_141))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 144 

(declare-fun __ic3_ind_gen_144 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_144 (= (+ (* 1 f144@1) (* 1 f145@1) 1) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 145 

(declare-fun __ic3_ind_gen_145 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_145 (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 146 

(declare-fun __ic3_ind_gen_146 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_146 (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_145 :named c688))
;; Success 

(assert (! __ic3_frame_0 :named c689))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c690))
;; Success 

(assert (! __ic3_ind_gen_146 :named c691))
;; Success 

(assert (! __ic3_ind_gen_144 :named c692))
;; Success 

(assert (! __ic3_frame_0 :named c693))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_146))
;; Success 

(assert (not __ic3_ind_gen_145))
;; Success 

(assert (not __ic3_ind_gen_144))
;; Success 

;; ind_generalize: Dropped 17 literals from clause. 

;; Deactivating activation literals for clause 

(assert (not __ic3_clause_18_p0))
;; Success 

(assert (not __ic3_clause_18_n0_0))
;; Success 

(assert (not __ic3_clause_18_n0_1))
;; Success 

(assert (not __ic3_clause_18_n0_2))
;; Success 

(assert (not __ic3_clause_18_n0_3))
;; Success 

(assert (not __ic3_clause_18_n0_4))
;; Success 

(assert (not __ic3_clause_18_n0_5))
;; Success 

(assert (not __ic3_clause_18_n0_6))
;; Success 

(assert (not __ic3_clause_18_n0_7))
;; Success 

(assert (not __ic3_clause_18_n0_8))
;; Success 

(assert (not __ic3_clause_18_n0_9))
;; Success 

(assert (not __ic3_clause_18_n0_10))
;; Success 

(assert (not __ic3_clause_18_n0_11))
;; Success 

(assert (not __ic3_clause_18_n0_12))
;; Success 

(assert (not __ic3_clause_18_n0_13))
;; Success 

(assert (not __ic3_clause_18_n0_14))
;; Success 

(assert (not __ic3_clause_18_n0_15))
;; Success 

(assert (not __ic3_clause_18_n0_16))
;; Success 

(assert (not __ic3_clause_18_n0_17))
;; Success 

(assert (not __ic3_clause_18_n1_0))
;; Success 

(assert (not __ic3_clause_18_n1_1))
;; Success 

(assert (not __ic3_clause_18_n1_2))
;; Success 

(assert (not __ic3_clause_18_n1_3))
;; Success 

(assert (not __ic3_clause_18_n1_4))
;; Success 

(assert (not __ic3_clause_18_n1_5))
;; Success 

(assert (not __ic3_clause_18_n1_6))
;; Success 

(assert (not __ic3_clause_18_n1_7))
;; Success 

(assert (not __ic3_clause_18_n1_8))
;; Success 

(assert (not __ic3_clause_18_n1_9))
;; Success 

(assert (not __ic3_clause_18_n1_10))
;; Success 

(assert (not __ic3_clause_18_n1_11))
;; Success 

(assert (not __ic3_clause_18_n1_12))
;; Success 

(assert (not __ic3_clause_18_n1_13))
;; Success 

(assert (not __ic3_clause_18_n1_14))
;; Success 

(assert (not __ic3_clause_18_n1_15))
;; Success 

(assert (not __ic3_clause_18_n1_16))
;; Success 

(assert (not __ic3_clause_18_n1_17))
;; Success 

;; New clause from inductive generalization of #18: 
;; #19 {(not (= (+ (* 1 top.res.abs_0@0) (* 1 top.res.abs_1@0) 1) 0))} 

;; block: Reduced clause 
;; (or 
;;  (not (= (+ (* 1 top.res.abs_0@0) (* 1 top.res.abs_1@0) 1) 0)) 
;;  (= (* 1 top.res.abs_3@0) 0) 
;;  (not top.res.abs_8@0)) 
;; with ind. gen. to 
;; (not (= (+ (* 1 top.res.abs_0@0) (* 1 top.res.abs_1@0) 1) 0)) 

;; Copied clause #18 for blocking at depth 0: 
;; #20 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (* 1 top.res.abs_4@0) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_1@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* 1 top.res.abs_0@0) 
;;         (* (- 1) top.res.abs_1@0) 
;;         (* 1 top.res.abs_2@0) 
;;         (* 1 top.res.abs_3@0) 
;;         1) 
;;        0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* (- 1) top.res.abs_0@0) 
;;         (* (- 1) top.res.abs_1@0) 
;;         (* 1 top.res.abs_9@0)) 
;;        0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* (- 1) top.res.abs_0@0) 
;;         (* (- 1) top.res.abs_1@0) 
;;         (* (- 1) top.res.abs_2@0) 
;;         (* (- 1) top.res.abs_3@0) 
;;         (* 1 top.res.abs_9@0) 
;;         1) 
;;        0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* (- 1) top.res.abs_1@0) 
;;         (* (- 1) top.res.abs_2@0) 
;;         (* 1 top.res.abs_9@0) 
;;         2) 
;;        0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (- 1)) 0)); 
;;      (= (* 1 top.res.abs_3@0) 0); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (- 2)) 0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* 1 top.res.abs_0@0) 
;;         (* 1 top.res.abs_1@0) 
;;         (* (- 1) top.res.abs_9@0) 
;;         3) 
;;        0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* (- 1) top.res.abs_0@0) 
;;         (* (- 1) top.res.abs_1@0) 
;;         (* 1 top.res.abs_2@0) 
;;         (* 1 top.res.abs_3@0) 
;;         1) 
;;        0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* (- 1) top.res.abs_0@0) 
;;         (* (- 1) top.res.abs_1@0) 
;;         (* 1 top.res.abs_9@0) 
;;         (- 1)) 
;;        0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* (- 1) top.res.abs_0@0) 
;;         (* (- 1) top.res.abs_1@0) 
;;         (* (- 1) top.res.abs_2@0) 
;;         (* (- 1) top.res.abs_3@0) 
;;         (* 1 top.res.abs_9@0) 
;;         0) 
;;        0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* (- 1) top.res.abs_0@0) 
;;         (* (- 1) top.res.abs_1@0) 
;;         (* 1 top.res.abs_9@0) 
;;         0) 
;;        0)); 
;;      (not (= (+ (* 1 top.res.abs_2@0) (* 1 top.res.abs_3@0)) 0)); 
;;      (not (= (+ (* 1 top.res.abs_0@0) (* 1 top.res.abs_1@0) 1) 0))} 

(declare-fun __ic3_clause_19_p0 () Bool)
;; Success 

(assert (=> __ic3_clause_19_p0 (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0))))
;; Success 

;; check_frames: frames k to 1 
;;  
;; Frame: 
;; 7 
;; 9 
;; 16 
;; 19 

;; check_frames: Does R_1 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c694))
;; Success 

(assert (! __ic3_clause_7_p0 :named c695))
;; Success 

(assert (! __ic3_clause_9_p0 :named c696))
;; Success 

(assert (! __ic3_clause_16_p0 :named c697))
;; Success 

(assert (! __ic3_clause_19_p0 :named c698))
;; Success 

(assert (! __ic3_clause_5_p0 :named c699))
;; Success 

(assert (! __ic3_clause_11_p0 :named c700))
;; Success 

(assert (! __ic3_clause_7_p0 :named c701))
;; Success 

(assert (! __ic3_clause_9_p0 :named c702))
;; Success 

(assert (! __ic3_clause_16_p0 :named c703))
;; Success 

(assert (! __ic3_clause_19_p0 :named c704))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c705))
;; Success 

(assert (! __ic3_clause_7_n0_0 :named c706))
;; Success 

(assert (! __ic3_clause_7_n0_1 :named c707))
;; Success 

(assert (! __ic3_clause_7_n0_2 :named c708))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c709))
;; Success 

(assert (! __ic3_clause_9_n0_0 :named c710))
;; Success 

(assert (! __ic3_clause_9_n0_1 :named c711))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c712))
;; Success 

(assert (! __ic3_clause_16_n0_0 :named c713))
;; Success 

(assert (! __ic3_clause_16_n0_1 :named c714))
;; Success 

(assert (! __ic3_clause_16_n0_2 :named c715))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(declare-fun __ic3_clause_19_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_19_n0_0 (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c716))
;; Success 

(assert (! __ic3_clause_19_n0_0 :named c717))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_0 & T |= R_1 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 10 

(declare-fun __ic3_check_frames_10 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_10
 (not
  (and
   f105@1
   (or
    (not f152@1)
    (not (> (* 1 f148@1) 0))
    (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 1) 0)))
   (or
    (not f152@1)
    (not
     (>
      (+
       (* 1 f144@1)
       (* 1 f145@1)
       (* 1 f146@1)
       (* 1 f147@1)
       (* (- 1) f153@1))
      0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 2) 0))
    (not (> (+ (* 1 f148@1) (- 1)) 0)))
   (not (= (+ (* 1 f144@1) (* 1 f145@1) 1) 0))
   (or (not f152@1) (not (> (+ (* 1 f145@1) (* (- 1) f153@1)) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f145@1) (* 1 f146@1) (* (- 1) f153@1) (- 1)) 0)))
   (or
    (not f152@1)
    (not (> (* 1 f148@1) 0))
    (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 1) 0)))
   (or
    (not f152@1)
    (not
     (>
      (+
       (* 1 f144@1)
       (* 1 f145@1)
       (* 1 f146@1)
       (* 1 f147@1)
       (* (- 1) f153@1))
      0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 2) 0))
    (not (> (+ (* 1 f148@1) (- 1)) 0)))
   (not (= (+ (* 1 f144@1) (* 1 f145@1) 1) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_10 :named c718))
;; Success 

(assert (! __ic3_frame_0 :named c719))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_10))
;; Success 

;; block: All counterexamples blocked in R_1 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 147 

(declare-fun __ic3_ind_gen_147 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_147
 (not
  (or
   (not f152@1)
   (not (> (* 1 f148@1) 0))
   (not (> (+ (* (- 1) f145@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      1)
     0))
   (not (> (+ (* (- 1) f145@1) (* (- 1) f146@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* 1 f148@1) (- 1)) 0))
   (= (* 1 f147@1) 0)
   (not (> (+ (* 1 f148@1) (- 2)) 0))
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 3) 0))
   (not
    (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1) (- 1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      0)
     0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1) 0) 0))
   (not (= (+ (* 1 f146@1) (* 1 f147@1)) 0))
   (not (= (+ (* 1 f144@1) (* 1 f145@1) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 148 

(declare-fun __ic3_ind_gen_148 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_148
 (not
  (or
   (not f152@0)
   (not (> (* 1 f148@0) 0))
   (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      1)
     0))
   (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* 1 f148@0) (- 1)) 0))
   (= (* 1 f147@0) 0)
   (not (> (+ (* 1 f148@0) (- 2)) 0))
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
   (not
    (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) (- 1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      0)
     0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
   (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
   (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 149 

(declare-fun __ic3_ind_gen_149 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_149
 (or
  (not f152@0)
  (not (> (* 1 f148@0) 0))
  (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     1)
    0))
  (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (- 1)) 0))
  (= (* 1 f147@0) 0)
  (not (> (+ (* 1 f148@0) (- 2)) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
  (not
   (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) (- 1)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     0)
    0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
  (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
  (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_148 :named c720))
;; Success 

(assert (! __ic3_frame_0 :named c721))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c722))
;; Success 

(assert (! __ic3_ind_gen_149 :named c723))
;; Success 

(assert (! __ic3_ind_gen_147 :named c724))
;; Success 

(assert (! __ic3_clause_5_p0 :named c725))
;; Success 

(assert (! __ic3_clause_11_p0 :named c726))
;; Success 

(assert (! __ic3_clause_3_p0 :named c727))
;; Success 

(assert (! __ic3_clause_7_p0 :named c728))
;; Success 

(assert (! __ic3_clause_9_p0 :named c729))
;; Success 

(assert (! __ic3_clause_16_p0 :named c730))
;; Success 

(assert (! __ic3_clause_19_p0 :named c731))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_149))
;; Success 

(assert (not __ic3_ind_gen_148))
;; Success 

(assert (not __ic3_ind_gen_147))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 150 

(declare-fun __ic3_ind_gen_150 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_150
 (not
  (or
   (not (> (* 1 f148@1) 0))
   (not (> (+ (* (- 1) f145@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      1)
     0))
   (not (> (+ (* (- 1) f145@1) (* (- 1) f146@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* 1 f148@1) (- 1)) 0))
   (= (* 1 f147@1) 0)
   (not (> (+ (* 1 f148@1) (- 2)) 0))
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 3) 0))
   (not
    (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1) (- 1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      0)
     0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1) 0) 0))
   (not (= (+ (* 1 f146@1) (* 1 f147@1)) 0))
   (not (= (+ (* 1 f144@1) (* 1 f145@1) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 151 

(declare-fun __ic3_ind_gen_151 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_151
 (not
  (or
   (not (> (* 1 f148@0) 0))
   (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      1)
     0))
   (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* 1 f148@0) (- 1)) 0))
   (= (* 1 f147@0) 0)
   (not (> (+ (* 1 f148@0) (- 2)) 0))
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
   (not
    (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) (- 1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      0)
     0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
   (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
   (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 152 

(declare-fun __ic3_ind_gen_152 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_152
 (or
  (not (> (* 1 f148@0) 0))
  (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     1)
    0))
  (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (- 1)) 0))
  (= (* 1 f147@0) 0)
  (not (> (+ (* 1 f148@0) (- 2)) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
  (not
   (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) (- 1)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     0)
    0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
  (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
  (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_151 :named c732))
;; Success 

(assert (! __ic3_frame_0 :named c733))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c734))
;; Success 

(assert (! __ic3_ind_gen_152 :named c735))
;; Success 

(assert (! __ic3_ind_gen_150 :named c736))
;; Success 

(assert (! __ic3_clause_5_p0 :named c737))
;; Success 

(assert (! __ic3_clause_11_p0 :named c738))
;; Success 

(assert (! __ic3_clause_3_p0 :named c739))
;; Success 

(assert (! __ic3_clause_7_p0 :named c740))
;; Success 

(assert (! __ic3_clause_9_p0 :named c741))
;; Success 

(assert (! __ic3_clause_16_p0 :named c742))
;; Success 

(assert (! __ic3_clause_19_p0 :named c743))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_152))
;; Success 

(assert (not __ic3_ind_gen_151))
;; Success 

(assert (not __ic3_ind_gen_150))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 153 

(declare-fun __ic3_ind_gen_153 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_153
 (not
  (or
   (not f152@1)
   (not (> (+ (* (- 1) f145@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      1)
     0))
   (not (> (+ (* (- 1) f145@1) (* (- 1) f146@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* 1 f148@1) (- 1)) 0))
   (= (* 1 f147@1) 0)
   (not (> (+ (* 1 f148@1) (- 2)) 0))
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 3) 0))
   (not
    (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1) (- 1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      0)
     0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1) 0) 0))
   (not (= (+ (* 1 f146@1) (* 1 f147@1)) 0))
   (not (= (+ (* 1 f144@1) (* 1 f145@1) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 154 

(declare-fun __ic3_ind_gen_154 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_154
 (not
  (or
   (not f152@0)
   (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      1)
     0))
   (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* 1 f148@0) (- 1)) 0))
   (= (* 1 f147@0) 0)
   (not (> (+ (* 1 f148@0) (- 2)) 0))
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
   (not
    (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) (- 1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      0)
     0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
   (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
   (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 155 

(declare-fun __ic3_ind_gen_155 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_155
 (or
  (not f152@0)
  (not (> (+ (* (- 1) f145@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     1)
    0))
  (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (- 1)) 0))
  (= (* 1 f147@0) 0)
  (not (> (+ (* 1 f148@0) (- 2)) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
  (not
   (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) (- 1)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     0)
    0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
  (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
  (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_154 :named c744))
;; Success 

(assert (! __ic3_frame_0 :named c745))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c746))
;; Success 

(assert (! __ic3_ind_gen_155 :named c747))
;; Success 

(assert (! __ic3_ind_gen_153 :named c748))
;; Success 

(assert (! __ic3_clause_5_p0 :named c749))
;; Success 

(assert (! __ic3_clause_11_p0 :named c750))
;; Success 

(assert (! __ic3_clause_3_p0 :named c751))
;; Success 

(assert (! __ic3_clause_7_p0 :named c752))
;; Success 

(assert (! __ic3_clause_9_p0 :named c753))
;; Success 

(assert (! __ic3_clause_16_p0 :named c754))
;; Success 

(assert (! __ic3_clause_19_p0 :named c755))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_155))
;; Success 

(assert (not __ic3_ind_gen_154))
;; Success 

(assert (not __ic3_ind_gen_153))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 156 

(declare-fun __ic3_ind_gen_156 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_156
 (not
  (or
   (not f152@1)
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      1)
     0))
   (not (> (+ (* (- 1) f145@1) (* (- 1) f146@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* 1 f148@1) (- 1)) 0))
   (= (* 1 f147@1) 0)
   (not (> (+ (* 1 f148@1) (- 2)) 0))
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 3) 0))
   (not
    (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1) (- 1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      0)
     0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1) 0) 0))
   (not (= (+ (* 1 f146@1) (* 1 f147@1)) 0))
   (not (= (+ (* 1 f144@1) (* 1 f145@1) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 157 

(declare-fun __ic3_ind_gen_157 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_157
 (not
  (or
   (not f152@0)
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      1)
     0))
   (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* 1 f148@0) (- 1)) 0))
   (= (* 1 f147@0) 0)
   (not (> (+ (* 1 f148@0) (- 2)) 0))
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
   (not
    (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) (- 1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      0)
     0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
   (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
   (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 158 

(declare-fun __ic3_ind_gen_158 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_158
 (or
  (not f152@0)
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     1)
    0))
  (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (- 1)) 0))
  (= (* 1 f147@0) 0)
  (not (> (+ (* 1 f148@0) (- 2)) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
  (not
   (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) (- 1)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     0)
    0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
  (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
  (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_157 :named c756))
;; Success 

(assert (! __ic3_frame_0 :named c757))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c758))
;; Success 

(assert (! __ic3_ind_gen_158 :named c759))
;; Success 

(assert (! __ic3_ind_gen_156 :named c760))
;; Success 

(assert (! __ic3_clause_5_p0 :named c761))
;; Success 

(assert (! __ic3_clause_11_p0 :named c762))
;; Success 

(assert (! __ic3_clause_3_p0 :named c763))
;; Success 

(assert (! __ic3_clause_7_p0 :named c764))
;; Success 

(assert (! __ic3_clause_9_p0 :named c765))
;; Success 

(assert (! __ic3_clause_16_p0 :named c766))
;; Success 

(assert (! __ic3_clause_19_p0 :named c767))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_158))
;; Success 

(assert (not __ic3_ind_gen_157))
;; Success 

(assert (not __ic3_ind_gen_156))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 159 

(declare-fun __ic3_ind_gen_159 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_159
 (not
  (or
   (not f152@1)
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      1)
     0))
   (not (> (+ (* (- 1) f145@1) (* (- 1) f146@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* 1 f148@1) (- 1)) 0))
   (= (* 1 f147@1) 0)
   (not (> (+ (* 1 f148@1) (- 2)) 0))
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 3) 0))
   (not
    (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1) (- 1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      0)
     0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1) 0) 0))
   (not (= (+ (* 1 f146@1) (* 1 f147@1)) 0))
   (not (= (+ (* 1 f144@1) (* 1 f145@1) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 160 

(declare-fun __ic3_ind_gen_160 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_160
 (not
  (or
   (not f152@0)
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      1)
     0))
   (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* 1 f148@0) (- 1)) 0))
   (= (* 1 f147@0) 0)
   (not (> (+ (* 1 f148@0) (- 2)) 0))
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
   (not
    (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) (- 1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      0)
     0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
   (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
   (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 161 

(declare-fun __ic3_ind_gen_161 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_161
 (or
  (not f152@0)
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     1)
    0))
  (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (- 1)) 0))
  (= (* 1 f147@0) 0)
  (not (> (+ (* 1 f148@0) (- 2)) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
  (not
   (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) (- 1)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     0)
    0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
  (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
  (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_160 :named c768))
;; Success 

(assert (! __ic3_frame_0 :named c769))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c770))
;; Success 

(assert (! __ic3_ind_gen_161 :named c771))
;; Success 

(assert (! __ic3_ind_gen_159 :named c772))
;; Success 

(assert (! __ic3_clause_5_p0 :named c773))
;; Success 

(assert (! __ic3_clause_11_p0 :named c774))
;; Success 

(assert (! __ic3_clause_3_p0 :named c775))
;; Success 

(assert (! __ic3_clause_7_p0 :named c776))
;; Success 

(assert (! __ic3_clause_9_p0 :named c777))
;; Success 

(assert (! __ic3_clause_16_p0 :named c778))
;; Success 

(assert (! __ic3_clause_19_p0 :named c779))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_161))
;; Success 

(assert (not __ic3_ind_gen_160))
;; Success 

(assert (not __ic3_ind_gen_159))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 162 

(declare-fun __ic3_ind_gen_162 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_162
 (not
  (or
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0))
   (not f152@1)
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      1)
     0))
   (not (> (+ (* (- 1) f145@1) (* (- 1) f146@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* 1 f148@1) (- 1)) 0))
   (= (* 1 f147@1) 0)
   (not (> (+ (* 1 f148@1) (- 2)) 0))
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 3) 0))
   (not
    (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1) (- 1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      0)
     0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1) 0) 0))
   (not (= (+ (* 1 f146@1) (* 1 f147@1)) 0))
   (not (= (+ (* 1 f144@1) (* 1 f145@1) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 163 

(declare-fun __ic3_ind_gen_163 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_163
 (not
  (or
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
   (not f152@0)
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      1)
     0))
   (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* 1 f148@0) (- 1)) 0))
   (= (* 1 f147@0) 0)
   (not (> (+ (* 1 f148@0) (- 2)) 0))
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
   (not
    (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) (- 1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      0)
     0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
   (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
   (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 164 

(declare-fun __ic3_ind_gen_164 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_164
 (or
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not f152@0)
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     1)
    0))
  (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (- 1)) 0))
  (= (* 1 f147@0) 0)
  (not (> (+ (* 1 f148@0) (- 2)) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
  (not
   (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) (- 1)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     0)
    0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
  (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
  (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_163 :named c780))
;; Success 

(assert (! __ic3_frame_0 :named c781))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c782))
;; Success 

(assert (! __ic3_ind_gen_164 :named c783))
;; Success 

(assert (! __ic3_ind_gen_162 :named c784))
;; Success 

(assert (! __ic3_clause_5_p0 :named c785))
;; Success 

(assert (! __ic3_clause_11_p0 :named c786))
;; Success 

(assert (! __ic3_clause_3_p0 :named c787))
;; Success 

(assert (! __ic3_clause_7_p0 :named c788))
;; Success 

(assert (! __ic3_clause_9_p0 :named c789))
;; Success 

(assert (! __ic3_clause_16_p0 :named c790))
;; Success 

(assert (! __ic3_clause_19_p0 :named c791))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_164))
;; Success 

(assert (not __ic3_ind_gen_163))
;; Success 

(assert (not __ic3_ind_gen_162))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 165 

(declare-fun __ic3_ind_gen_165 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_165
 (not
  (or
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0))
   (not f152@1)
   (not (> (+ (* (- 1) f145@1) (* (- 1) f146@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* 1 f148@1) (- 1)) 0))
   (= (* 1 f147@1) 0)
   (not (> (+ (* 1 f148@1) (- 2)) 0))
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 3) 0))
   (not
    (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1) (- 1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      0)
     0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1) 0) 0))
   (not (= (+ (* 1 f146@1) (* 1 f147@1)) 0))
   (not (= (+ (* 1 f144@1) (* 1 f145@1) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 166 

(declare-fun __ic3_ind_gen_166 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_166
 (not
  (or
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
   (not f152@0)
   (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* 1 f148@0) (- 1)) 0))
   (= (* 1 f147@0) 0)
   (not (> (+ (* 1 f148@0) (- 2)) 0))
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
   (not
    (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) (- 1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      0)
     0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
   (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
   (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 167 

(declare-fun __ic3_ind_gen_167 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_167
 (or
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not f152@0)
  (not (> (+ (* (- 1) f145@0) (* (- 1) f146@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (- 1)) 0))
  (= (* 1 f147@0) 0)
  (not (> (+ (* 1 f148@0) (- 2)) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
  (not
   (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) (- 1)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     0)
    0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
  (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
  (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_166 :named c792))
;; Success 

(assert (! __ic3_frame_0 :named c793))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c794))
;; Success 

(assert (! __ic3_ind_gen_167 :named c795))
;; Success 

(assert (! __ic3_ind_gen_165 :named c796))
;; Success 

(assert (! __ic3_clause_5_p0 :named c797))
;; Success 

(assert (! __ic3_clause_11_p0 :named c798))
;; Success 

(assert (! __ic3_clause_3_p0 :named c799))
;; Success 

(assert (! __ic3_clause_7_p0 :named c800))
;; Success 

(assert (! __ic3_clause_9_p0 :named c801))
;; Success 

(assert (! __ic3_clause_16_p0 :named c802))
;; Success 

(assert (! __ic3_clause_19_p0 :named c803))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_167))
;; Success 

(assert (not __ic3_ind_gen_166))
;; Success 

(assert (not __ic3_ind_gen_165))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 168 

(declare-fun __ic3_ind_gen_168 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_168
 (not
  (or
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0))
   (not f152@1)
   (not (> (+ (* 1 f148@1) (- 1)) 0))
   (= (* 1 f147@1) 0)
   (not (> (+ (* 1 f148@1) (- 2)) 0))
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 3) 0))
   (not
    (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1) (- 1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      0)
     0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1) 0) 0))
   (not (= (+ (* 1 f146@1) (* 1 f147@1)) 0))
   (not (= (+ (* 1 f144@1) (* 1 f145@1) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 169 

(declare-fun __ic3_ind_gen_169 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_169
 (not
  (or
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
   (not f152@0)
   (not (> (+ (* 1 f148@0) (- 1)) 0))
   (= (* 1 f147@0) 0)
   (not (> (+ (* 1 f148@0) (- 2)) 0))
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
   (not
    (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) (- 1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      0)
     0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
   (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
   (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 170 

(declare-fun __ic3_ind_gen_170 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_170
 (or
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not f152@0)
  (not (> (+ (* 1 f148@0) (- 1)) 0))
  (= (* 1 f147@0) 0)
  (not (> (+ (* 1 f148@0) (- 2)) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
  (not
   (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) (- 1)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     0)
    0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
  (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
  (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_169 :named c804))
;; Success 

(assert (! __ic3_frame_0 :named c805))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c806))
;; Success 

(assert (! __ic3_ind_gen_170 :named c807))
;; Success 

(assert (! __ic3_ind_gen_168 :named c808))
;; Success 

(assert (! __ic3_clause_5_p0 :named c809))
;; Success 

(assert (! __ic3_clause_11_p0 :named c810))
;; Success 

(assert (! __ic3_clause_3_p0 :named c811))
;; Success 

(assert (! __ic3_clause_7_p0 :named c812))
;; Success 

(assert (! __ic3_clause_9_p0 :named c813))
;; Success 

(assert (! __ic3_clause_16_p0 :named c814))
;; Success 

(assert (! __ic3_clause_19_p0 :named c815))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_170))
;; Success 

(assert (not __ic3_ind_gen_169))
;; Success 

(assert (not __ic3_ind_gen_168))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 171 

(declare-fun __ic3_ind_gen_171 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_171
 (not
  (or
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0))
   (not f152@1)
   (= (* 1 f147@1) 0)
   (not (> (+ (* 1 f148@1) (- 2)) 0))
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 3) 0))
   (not
    (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1) (- 1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      0)
     0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1) 0) 0))
   (not (= (+ (* 1 f146@1) (* 1 f147@1)) 0))
   (not (= (+ (* 1 f144@1) (* 1 f145@1) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 172 

(declare-fun __ic3_ind_gen_172 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_172
 (not
  (or
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
   (not f152@0)
   (= (* 1 f147@0) 0)
   (not (> (+ (* 1 f148@0) (- 2)) 0))
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
   (not
    (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) (- 1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      0)
     0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
   (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
   (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 173 

(declare-fun __ic3_ind_gen_173 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_173
 (or
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not f152@0)
  (= (* 1 f147@0) 0)
  (not (> (+ (* 1 f148@0) (- 2)) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
  (not
   (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) (- 1)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     0)
    0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
  (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
  (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_172 :named c816))
;; Success 

(assert (! __ic3_frame_0 :named c817))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c818))
;; Success 

(assert (! __ic3_ind_gen_173 :named c819))
;; Success 

(assert (! __ic3_ind_gen_171 :named c820))
;; Success 

(assert (! __ic3_clause_5_p0 :named c821))
;; Success 

(assert (! __ic3_clause_11_p0 :named c822))
;; Success 

(assert (! __ic3_clause_3_p0 :named c823))
;; Success 

(assert (! __ic3_clause_7_p0 :named c824))
;; Success 

(assert (! __ic3_clause_9_p0 :named c825))
;; Success 

(assert (! __ic3_clause_16_p0 :named c826))
;; Success 

(assert (! __ic3_clause_19_p0 :named c827))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_173))
;; Success 

(assert (not __ic3_ind_gen_172))
;; Success 

(assert (not __ic3_ind_gen_171))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 174 

(declare-fun __ic3_ind_gen_174 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_174
 (not
  (or
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0))
   (not f152@1)
   (not (> (+ (* 1 f148@1) (- 2)) 0))
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 3) 0))
   (not
    (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1) (- 1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      0)
     0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1) 0) 0))
   (not (= (+ (* 1 f146@1) (* 1 f147@1)) 0))
   (not (= (+ (* 1 f144@1) (* 1 f145@1) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 175 

(declare-fun __ic3_ind_gen_175 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_175
 (not
  (or
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
   (not f152@0)
   (not (> (+ (* 1 f148@0) (- 2)) 0))
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
   (not
    (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) (- 1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      0)
     0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
   (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
   (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 176 

(declare-fun __ic3_ind_gen_176 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_176
 (or
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not f152@0)
  (not (> (+ (* 1 f148@0) (- 2)) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
  (not
   (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) (- 1)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     0)
    0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
  (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
  (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_175 :named c828))
;; Success 

(assert (! __ic3_frame_0 :named c829))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c830))
;; Success 

(assert (! __ic3_ind_gen_176 :named c831))
;; Success 

(assert (! __ic3_ind_gen_174 :named c832))
;; Success 

(assert (! __ic3_clause_5_p0 :named c833))
;; Success 

(assert (! __ic3_clause_11_p0 :named c834))
;; Success 

(assert (! __ic3_clause_3_p0 :named c835))
;; Success 

(assert (! __ic3_clause_7_p0 :named c836))
;; Success 

(assert (! __ic3_clause_9_p0 :named c837))
;; Success 

(assert (! __ic3_clause_16_p0 :named c838))
;; Success 

(assert (! __ic3_clause_19_p0 :named c839))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_176))
;; Success 

(assert (not __ic3_ind_gen_175))
;; Success 

(assert (not __ic3_ind_gen_174))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 177 

(declare-fun __ic3_ind_gen_177 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_177
 (not
  (or
   (= (* 1 f147@1) 0)
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0))
   (not f152@1)
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 3) 0))
   (not
    (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1) (- 1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      0)
     0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1) 0) 0))
   (not (= (+ (* 1 f146@1) (* 1 f147@1)) 0))
   (not (= (+ (* 1 f144@1) (* 1 f145@1) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 178 

(declare-fun __ic3_ind_gen_178 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_178
 (not
  (or
   (= (* 1 f147@0) 0)
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
   (not f152@0)
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
   (not
    (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) (- 1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      0)
     0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
   (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
   (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 179 

(declare-fun __ic3_ind_gen_179 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_179
 (or
  (= (* 1 f147@0) 0)
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not f152@0)
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
  (not
   (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) (- 1)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     0)
    0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
  (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
  (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_178 :named c840))
;; Success 

(assert (! __ic3_frame_0 :named c841))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c842))
;; Success 

(assert (! __ic3_ind_gen_179 :named c843))
;; Success 

(assert (! __ic3_ind_gen_177 :named c844))
;; Success 

(assert (! __ic3_clause_5_p0 :named c845))
;; Success 

(assert (! __ic3_clause_11_p0 :named c846))
;; Success 

(assert (! __ic3_clause_3_p0 :named c847))
;; Success 

(assert (! __ic3_clause_7_p0 :named c848))
;; Success 

(assert (! __ic3_clause_9_p0 :named c849))
;; Success 

(assert (! __ic3_clause_16_p0 :named c850))
;; Success 

(assert (! __ic3_clause_19_p0 :named c851))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_179))
;; Success 

(assert (not __ic3_ind_gen_178))
;; Success 

(assert (not __ic3_ind_gen_177))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 180 

(declare-fun __ic3_ind_gen_180 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_180
 (not
  (or
   (not (> (+ (* 1 f148@1) (- 2)) 0))
   (= (* 1 f147@1) 0)
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0))
   (not f152@1)
   (not
    (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1) (- 1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      0)
     0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1) 0) 0))
   (not (= (+ (* 1 f146@1) (* 1 f147@1)) 0))
   (not (= (+ (* 1 f144@1) (* 1 f145@1) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 181 

(declare-fun __ic3_ind_gen_181 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_181
 (not
  (or
   (not (> (+ (* 1 f148@0) (- 2)) 0))
   (= (* 1 f147@0) 0)
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
   (not f152@0)
   (not
    (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) (- 1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      0)
     0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
   (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
   (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 182 

(declare-fun __ic3_ind_gen_182 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_182
 (or
  (not (> (+ (* 1 f148@0) (- 2)) 0))
  (= (* 1 f147@0) 0)
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not f152@0)
  (not
   (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) (- 1)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     0)
    0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
  (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
  (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_181 :named c852))
;; Success 

(assert (! __ic3_frame_0 :named c853))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c854))
;; Success 

(assert (! __ic3_ind_gen_182 :named c855))
;; Success 

(assert (! __ic3_ind_gen_180 :named c856))
;; Success 

(assert (! __ic3_clause_5_p0 :named c857))
;; Success 

(assert (! __ic3_clause_11_p0 :named c858))
;; Success 

(assert (! __ic3_clause_3_p0 :named c859))
;; Success 

(assert (! __ic3_clause_7_p0 :named c860))
;; Success 

(assert (! __ic3_clause_9_p0 :named c861))
;; Success 

(assert (! __ic3_clause_16_p0 :named c862))
;; Success 

(assert (! __ic3_clause_19_p0 :named c863))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_182))
;; Success 

(assert (not __ic3_ind_gen_181))
;; Success 

(assert (not __ic3_ind_gen_180))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 183 

(declare-fun __ic3_ind_gen_183 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_183
 (not
  (or
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 3) 0))
   (not (> (+ (* 1 f148@1) (- 2)) 0))
   (= (* 1 f147@1) 0)
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0))
   (not f152@1)
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1) (- 1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      0)
     0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1) 0) 0))
   (not (= (+ (* 1 f146@1) (* 1 f147@1)) 0))
   (not (= (+ (* 1 f144@1) (* 1 f145@1) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 184 

(declare-fun __ic3_ind_gen_184 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_184
 (not
  (or
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
   (not (> (+ (* 1 f148@0) (- 2)) 0))
   (= (* 1 f147@0) 0)
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
   (not f152@0)
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) (- 1)) 0))
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      0)
     0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
   (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
   (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 185 

(declare-fun __ic3_ind_gen_185 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_185
 (or
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
  (not (> (+ (* 1 f148@0) (- 2)) 0))
  (= (* 1 f147@0) 0)
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not f152@0)
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) (- 1)) 0))
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     0)
    0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
  (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
  (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_184 :named c864))
;; Success 

(assert (! __ic3_frame_0 :named c865))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c866))
;; Success 

(assert (! __ic3_ind_gen_185 :named c867))
;; Success 

(assert (! __ic3_ind_gen_183 :named c868))
;; Success 

(assert (! __ic3_clause_5_p0 :named c869))
;; Success 

(assert (! __ic3_clause_11_p0 :named c870))
;; Success 

(assert (! __ic3_clause_3_p0 :named c871))
;; Success 

(assert (! __ic3_clause_7_p0 :named c872))
;; Success 

(assert (! __ic3_clause_9_p0 :named c873))
;; Success 

(assert (! __ic3_clause_16_p0 :named c874))
;; Success 

(assert (! __ic3_clause_19_p0 :named c875))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_185))
;; Success 

(assert (not __ic3_ind_gen_184))
;; Success 

(assert (not __ic3_ind_gen_183))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 186 

(declare-fun __ic3_ind_gen_186 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_186
 (not
  (or
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 3) 0))
   (not (> (+ (* 1 f148@1) (- 2)) 0))
   (= (* 1 f147@1) 0)
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0))
   (not f152@1)
   (not
    (>
     (+
      (* (- 1) f144@1)
      (* (- 1) f145@1)
      (* (- 1) f146@1)
      (* (- 1) f147@1)
      (* 1 f153@1)
      0)
     0))
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1) 0) 0))
   (not (= (+ (* 1 f146@1) (* 1 f147@1)) 0))
   (not (= (+ (* 1 f144@1) (* 1 f145@1) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 187 

(declare-fun __ic3_ind_gen_187 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_187
 (not
  (or
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
   (not (> (+ (* 1 f148@0) (- 2)) 0))
   (= (* 1 f147@0) 0)
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
   (not f152@0)
   (not
    (>
     (+
      (* (- 1) f144@0)
      (* (- 1) f145@0)
      (* (- 1) f146@0)
      (* (- 1) f147@0)
      (* 1 f153@0)
      0)
     0))
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
   (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
   (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 188 

(declare-fun __ic3_ind_gen_188 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_188
 (or
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
  (not (> (+ (* 1 f148@0) (- 2)) 0))
  (= (* 1 f147@0) 0)
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not f152@0)
  (not
   (>
    (+
     (* (- 1) f144@0)
     (* (- 1) f145@0)
     (* (- 1) f146@0)
     (* (- 1) f147@0)
     (* 1 f153@0)
     0)
    0))
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
  (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
  (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_187 :named c876))
;; Success 

(assert (! __ic3_frame_0 :named c877))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c878))
;; Success 

(assert (! __ic3_ind_gen_188 :named c879))
;; Success 

(assert (! __ic3_ind_gen_186 :named c880))
;; Success 

(assert (! __ic3_clause_5_p0 :named c881))
;; Success 

(assert (! __ic3_clause_11_p0 :named c882))
;; Success 

(assert (! __ic3_clause_3_p0 :named c883))
;; Success 

(assert (! __ic3_clause_7_p0 :named c884))
;; Success 

(assert (! __ic3_clause_9_p0 :named c885))
;; Success 

(assert (! __ic3_clause_16_p0 :named c886))
;; Success 

(assert (! __ic3_clause_19_p0 :named c887))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_188))
;; Success 

(assert (not __ic3_ind_gen_187))
;; Success 

(assert (not __ic3_ind_gen_186))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 189 

(declare-fun __ic3_ind_gen_189 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_189
 (not
  (or
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 3) 0))
   (not (> (+ (* 1 f148@1) (- 2)) 0))
   (= (* 1 f147@1) 0)
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0))
   (not f152@1)
   (not (> (+ (* (- 1) f144@1) (* (- 1) f145@1) (* 1 f153@1) 0) 0))
   (not (= (+ (* 1 f146@1) (* 1 f147@1)) 0))
   (not (= (+ (* 1 f144@1) (* 1 f145@1) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 190 

(declare-fun __ic3_ind_gen_190 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_190
 (not
  (or
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
   (not (> (+ (* 1 f148@0) (- 2)) 0))
   (= (* 1 f147@0) 0)
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
   (not f152@0)
   (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
   (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
   (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 191 

(declare-fun __ic3_ind_gen_191 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_191
 (or
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
  (not (> (+ (* 1 f148@0) (- 2)) 0))
  (= (* 1 f147@0) 0)
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not f152@0)
  (not (> (+ (* (- 1) f144@0) (* (- 1) f145@0) (* 1 f153@0) 0) 0))
  (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
  (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_190 :named c888))
;; Success 

(assert (! __ic3_frame_0 :named c889))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c890))
;; Success 

(assert (! __ic3_ind_gen_191 :named c891))
;; Success 

(assert (! __ic3_ind_gen_189 :named c892))
;; Success 

(assert (! __ic3_clause_5_p0 :named c893))
;; Success 

(assert (! __ic3_clause_11_p0 :named c894))
;; Success 

(assert (! __ic3_clause_3_p0 :named c895))
;; Success 

(assert (! __ic3_clause_7_p0 :named c896))
;; Success 

(assert (! __ic3_clause_9_p0 :named c897))
;; Success 

(assert (! __ic3_clause_16_p0 :named c898))
;; Success 

(assert (! __ic3_clause_19_p0 :named c899))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_191))
;; Success 

(assert (not __ic3_ind_gen_190))
;; Success 

(assert (not __ic3_ind_gen_189))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 192 

(declare-fun __ic3_ind_gen_192 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_192
 (not
  (or
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 3) 0))
   (not (> (+ (* 1 f148@1) (- 2)) 0))
   (= (* 1 f147@1) 0)
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0))
   (not f152@1)
   (not (= (+ (* 1 f146@1) (* 1 f147@1)) 0))
   (not (= (+ (* 1 f144@1) (* 1 f145@1) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 193 

(declare-fun __ic3_ind_gen_193 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_193
 (not
  (or
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
   (not (> (+ (* 1 f148@0) (- 2)) 0))
   (= (* 1 f147@0) 0)
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
   (not f152@0)
   (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
   (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 194 

(declare-fun __ic3_ind_gen_194 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_194
 (or
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
  (not (> (+ (* 1 f148@0) (- 2)) 0))
  (= (* 1 f147@0) 0)
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not f152@0)
  (not (= (+ (* 1 f146@0) (* 1 f147@0)) 0))
  (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_193 :named c900))
;; Success 

(assert (! __ic3_frame_0 :named c901))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c902))
;; Success 

(assert (! __ic3_ind_gen_194 :named c903))
;; Success 

(assert (! __ic3_ind_gen_192 :named c904))
;; Success 

(assert (! __ic3_clause_5_p0 :named c905))
;; Success 

(assert (! __ic3_clause_11_p0 :named c906))
;; Success 

(assert (! __ic3_clause_3_p0 :named c907))
;; Success 

(assert (! __ic3_clause_7_p0 :named c908))
;; Success 

(assert (! __ic3_clause_9_p0 :named c909))
;; Success 

(assert (! __ic3_clause_16_p0 :named c910))
;; Success 

(assert (! __ic3_clause_19_p0 :named c911))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_194))
;; Success 

(assert (not __ic3_ind_gen_193))
;; Success 

(assert (not __ic3_ind_gen_192))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 195 

(declare-fun __ic3_ind_gen_195 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_195
 (not
  (or
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 3) 0))
   (not (> (+ (* 1 f148@1) (- 2)) 0))
   (= (* 1 f147@1) 0)
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0))
   (not f152@1)
   (not (= (+ (* 1 f144@1) (* 1 f145@1) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 196 

(declare-fun __ic3_ind_gen_196 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_196
 (not
  (or
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
   (not (> (+ (* 1 f148@0) (- 2)) 0))
   (= (* 1 f147@0) 0)
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
   (not f152@0)
   (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 197 

(declare-fun __ic3_ind_gen_197 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_197
 (or
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
  (not (> (+ (* 1 f148@0) (- 2)) 0))
  (= (* 1 f147@0) 0)
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not f152@0)
  (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_196 :named c912))
;; Success 

(assert (! __ic3_frame_0 :named c913))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c914))
;; Success 

(assert (! __ic3_ind_gen_197 :named c915))
;; Success 

(assert (! __ic3_ind_gen_195 :named c916))
;; Success 

(assert (! __ic3_clause_5_p0 :named c917))
;; Success 

(assert (! __ic3_clause_11_p0 :named c918))
;; Success 

(assert (! __ic3_clause_3_p0 :named c919))
;; Success 

(assert (! __ic3_clause_7_p0 :named c920))
;; Success 

(assert (! __ic3_clause_9_p0 :named c921))
;; Success 

(assert (! __ic3_clause_16_p0 :named c922))
;; Success 

(assert (! __ic3_clause_19_p0 :named c923))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_197))
;; Success 

(assert (not __ic3_ind_gen_196))
;; Success 

(assert (not __ic3_ind_gen_195))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 198 

(declare-fun __ic3_ind_gen_198 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_198
 (not
  (or
   (not (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 3) 0))
   (not (> (+ (* 1 f148@1) (- 2)) 0))
   (= (* 1 f147@1) 0)
   (not (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0))
   (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 199 

(declare-fun __ic3_ind_gen_199 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_199
 (not
  (or
   (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
   (not (> (+ (* 1 f148@0) (- 2)) 0))
   (= (* 1 f147@0) 0)
   (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
   (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 200 

(declare-fun __ic3_ind_gen_200 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_200
 (or
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
  (not (> (+ (* 1 f148@0) (- 2)) 0))
  (= (* 1 f147@0) 0)
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_199 :named c924))
;; Success 

(assert (! __ic3_frame_0 :named c925))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c926))
;; Success 

(assert (! __ic3_ind_gen_200 :named c927))
;; Success 

(assert (! __ic3_ind_gen_198 :named c928))
;; Success 

(assert (! __ic3_clause_5_p0 :named c929))
;; Success 

(assert (! __ic3_clause_11_p0 :named c930))
;; Success 

(assert (! __ic3_clause_3_p0 :named c931))
;; Success 

(assert (! __ic3_clause_7_p0 :named c932))
;; Success 

(assert (! __ic3_clause_9_p0 :named c933))
;; Success 

(assert (! __ic3_clause_16_p0 :named c934))
;; Success 

(assert (! __ic3_clause_19_p0 :named c935))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_200))
;; Success 

(assert (not __ic3_ind_gen_199))
;; Success 

(assert (not __ic3_ind_gen_198))
;; Success 

;; ind_generalize: Dropped 12 literals from clause. 

;; Deactivating activation literals for clause 

;; New clause from inductive generalization of #20: 
;; #21 {(not top.res.abs_8@0); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* 1 top.res.abs_0@0) 
;;         (* (- 1) top.res.abs_1@0) 
;;         (* 1 top.res.abs_2@0) 
;;         (* 1 top.res.abs_3@0) 
;;         1) 
;;        0)); 
;;      (= (* 1 top.res.abs_3@0) 0); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (- 2)) 0)); 
;;      (not 
;;       (> 
;;        (+ 
;;         (* 1 top.res.abs_0@0) 
;;         (* 1 top.res.abs_1@0) 
;;         (* (- 1) top.res.abs_9@0) 
;;         3) 
;;        0)); 
;;      (not (= (+ (* 1 top.res.abs_0@0) (* 1 top.res.abs_1@0) 1) 0))} 

;; block: Is blocking clause relative inductive to R_1? 

(declare-fun __ic3_clause_21_n1_0 () Bool)
;; Success 

(assert (=> __ic3_clause_21_n1_0 f152@1))
;; Success 

(declare-fun __ic3_clause_21_n1_1 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_21_n1_1
 (> (+ (* 1 f144@1) (* (- 1) f145@1) (* 1 f146@1) (* 1 f147@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_21_n1_2 () Bool)
;; Success 

(assert (=> __ic3_clause_21_n1_2 (not (= (* 1 f147@1) 0))))
;; Success 

(declare-fun __ic3_clause_21_n1_3 () Bool)
;; Success 

(assert (=> __ic3_clause_21_n1_3 (> (+ (* 1 f148@1) (- 2)) 0)))
;; Success 

(declare-fun __ic3_clause_21_n1_4 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_21_n1_4
 (> (+ (* 1 f144@1) (* 1 f145@1) (* (- 1) f153@1) 3) 0)))
;; Success 

(declare-fun __ic3_clause_21_n1_5 () Bool)
;; Success 

(assert (=> __ic3_clause_21_n1_5 (= (+ (* 1 f144@1) (* 1 f145@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_21_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_21_p0
 (or
  (not f152@0)
  (not (> (+ (* 1 f144@0) (* (- 1) f145@0) (* 1 f146@0) (* 1 f147@0) 1) 0))
  (= (* 1 f147@0) 0)
  (not (> (+ (* 1 f148@0) (- 2)) 0))
  (not (> (+ (* 1 f144@0) (* 1 f145@0) (* (- 1) f153@0) 3) 0))
  (not (= (+ (* 1 f144@0) (* 1 f145@0) 1) 0)))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_21_p0 :named c936))
;; Success 

(assert (! __ic3_clause_21_n1_0 :named c937))
;; Success 

(assert (! __ic3_clause_21_n1_1 :named c938))
;; Success 

(assert (! __ic3_clause_21_n1_2 :named c939))
;; Success 

(assert (! __ic3_clause_21_n1_3 :named c940))
;; Success 

(assert (! __ic3_clause_21_n1_4 :named c941))
;; Success 

(assert (! __ic3_clause_21_n1_5 :named c942))
;; Success 

(assert (! __ic3_clause_5_p0 :named c943))
;; Success 

(assert (! __ic3_clause_11_p0 :named c944))
;; Success 

(assert (! __ic3_clause_3_p0 :named c945))
;; Success 

(assert (! __ic3_clause_7_p0 :named c946))
;; Success 

(assert (! __ic3_clause_9_p0 :named c947))
;; Success 

(assert (! __ic3_clause_16_p0 :named c948))
;; Success 

(assert (! __ic3_clause_19_p0 :named c949))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
