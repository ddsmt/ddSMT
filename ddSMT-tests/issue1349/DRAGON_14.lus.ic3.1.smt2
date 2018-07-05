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
    f90@0)))))
;; Success 

;; main: Assert unguarded transition relation 

(assert
 (let
 ((X1 f152@1))
 (let
  ((X2 f148@1))
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
;;     (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) (- 1)) 0)); 
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

(assert
 (=> __ic3_clause_4_n1_2 (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0)))
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
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) (- 1)) 0))
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

(assert
 (=> __ic3_clause_4_n0_2 (> (+ (* 1 f148@0) (* (- 1) f153@0) (- 1)) 0)))
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
;; (c24 c21) 

(pop 1)
;; Success 

;; block: Reduced clause 
;; (or 
;;  (not top.usr.OK@0) 
;;  (not top.res.abs_8@0) 
;;  (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) (- 1)) 0)) 
;;  (not (= (+ (* (- 1) top.res.abs_3@0) 0) 0)) 
;;  (not (= (+ (* (- 1) top.res.abs_1@0) 0) 0)) 
;;  (not (= (+ (* (- 1) top.res.abs_0@0) 0) 0)) 
;;  (not (= (+ (* (- 1) top.res.abs_2@0) 0) 0)) 
;;  (not (> (* 1 top.res.abs_4@0) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_0@0) 1) 0))) 
;; with unsat core to 
;; (or 
;;  (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) (- 1)) 0)) 
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
 (not (or (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0)) (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 4 

(declare-fun __ic3_ind_gen_4 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_4
 (not (or (not (> (+ (* 1 f148@0) (* (- 1) f153@0) (- 1)) 0)) (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 5 

(declare-fun __ic3_ind_gen_5 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_5
 (or (not (> (+ (* 1 f148@0) (* (- 1) f153@0) (- 1)) 0)) (not f105@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_4 :named c33))
;; Success 

(assert (! __ic3_frame_0 :named c34))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c35))
;; Success 

(assert (! __ic3_ind_gen_5 :named c36))
;; Success 

(assert (! __ic3_ind_gen_3 :named c37))
;; Success 

(assert (! __ic3_frame_0 :named c38))
;; Success 

(check-sat)
;; Unsat 

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

(assert (=> __ic3_ind_gen_6 (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 7 

(declare-fun __ic3_ind_gen_7 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_7 (> (+ (* 1 f148@0) (* (- 1) f153@0) (- 1)) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 8 

(declare-fun __ic3_ind_gen_8 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_8 (not (> (+ (* 1 f148@0) (* (- 1) f153@0) (- 1)) 0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_7 :named c39))
;; Success 

(assert (! __ic3_frame_0 :named c40))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c41))
;; Success 

(assert (! __ic3_ind_gen_8 :named c42))
;; Success 

(assert (! __ic3_ind_gen_6 :named c43))
;; Success 

(assert (! __ic3_frame_0 :named c44))
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

;; ind_generalize: Dropped 8 literals from clause. 

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
;; #5 {(not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) (- 1)) 0))} 

;; block: Reduced clause 
;; (or 
;;  (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) (- 1)) 0)) 
;;  (not top.res.abs_8@0) 
;;  (not top.usr.OK@0)) 
;; with ind. gen. to 
;; (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) (- 1)) 0)) 

(declare-fun __ic3_clause_5_p0 () Bool)
;; Success 

(assert
 (=> __ic3_clause_5_p0 (not (> (+ (* 1 f148@0) (* (- 1) f153@0) (- 1)) 0))))
;; Success 

;; check_frames: frames k to 1 
;;  
;; Frame: 
;; 5 

;; check_frames: Does R_1 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c45))
;; Success 

(assert (! __ic3_clause_5_p0 :named c46))
;; Success 

(assert (! __ic3_clause_5_p0 :named c47))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(declare-fun __ic3_clause_5_n0_0 () Bool)
;; Success 

(assert
 (=> __ic3_clause_5_n0_0 (> (+ (* 1 f148@0) (* (- 1) f153@0) (- 1)) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c48))
;; Success 

(assert (! __ic3_clause_5_n0_0 :named c49))
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
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_1 :named c50))
;; Success 

(assert (! __ic3_frame_0 :named c51))
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

(assert (! __ic3_clause_3_p0 :named c52))
;; Success 

(assert (! __ic3_clause_3_n1_0 :named c53))
;; Success 

(assert (! __ic3_clause_5_p0 :named c54))
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
;;     (f148@1 1) 
;;     (f147@1 0) 
;;     (f146@1 (- 1)) 
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
;;     (f93@1 false) 
;;     (f92@1 true) 
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
;;     (f146@0 (- 1)) 
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
;;     (= (+ (* (- 1) top.res.abs_2@0) 0) 0); 
;;     (not top.res.abs_8@0); 
;;     (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)); 
;;     (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0)) 0)); 
;;     (not (> (+ (* (- 1) top.res.abs_0@0) 2) 0))} 

;; block: Is blocking clause relative inductive to R_0? 

(declare-fun __ic3_clause_6_n1_0 () Bool)
;; Success 

(assert (=> __ic3_clause_6_n1_0 f105@1))
;; Success 

(declare-fun __ic3_clause_6_n1_1 () Bool)
;; Success 

(assert (=> __ic3_clause_6_n1_1 (not (= (+ (* (- 1) f146@1) 0) 0))))
;; Success 

(declare-fun __ic3_clause_6_n1_2 () Bool)
;; Success 

(assert (=> __ic3_clause_6_n1_2 f152@1))
;; Success 

(declare-fun __ic3_clause_6_n1_3 () Bool)
;; Success 

(assert (=> __ic3_clause_6_n1_3 (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0)))
;; Success 

(declare-fun __ic3_clause_6_n1_4 () Bool)
;; Success 

(assert (=> __ic3_clause_6_n1_4 (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0)))
;; Success 

(declare-fun __ic3_clause_6_n1_5 () Bool)
;; Success 

(assert (=> __ic3_clause_6_n1_5 (> (+ (* (- 1) f144@1) 2) 0)))
;; Success 

(declare-fun __ic3_clause_6_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_6_p0
 (or
  (not f105@0)
  (= (+ (* (- 1) f146@0) 0) 0)
  (not f152@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0)) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0)))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_6_p0 :named c55))
;; Success 

(assert (! __ic3_clause_6_n1_0 :named c56))
;; Success 

(assert (! __ic3_clause_6_n1_1 :named c57))
;; Success 

(assert (! __ic3_clause_6_n1_2 :named c58))
;; Success 

(assert (! __ic3_clause_6_n1_3 :named c59))
;; Success 

(assert (! __ic3_clause_6_n1_4 :named c60))
;; Success 

(assert (! __ic3_clause_6_n1_5 :named c61))
;; Success 

(assert (! __ic3_frame_0 :named c62))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c56 c58 c60) 

(pop 1)
;; Success 

;; block: Check I |= C to get unsat core. 

(declare-fun __ic3_clause_6_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_6_n0_0 f105@0))
;; Success 

(declare-fun __ic3_clause_6_n0_1 () Bool)
;; Success 

(assert (=> __ic3_clause_6_n0_1 (not (= (+ (* (- 1) f146@0) 0) 0))))
;; Success 

(declare-fun __ic3_clause_6_n0_2 () Bool)
;; Success 

(assert (=> __ic3_clause_6_n0_2 f152@0))
;; Success 

(declare-fun __ic3_clause_6_n0_3 () Bool)
;; Success 

(assert (=> __ic3_clause_6_n0_3 (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0)))
;; Success 

(declare-fun __ic3_clause_6_n0_4 () Bool)
;; Success 

(assert (=> __ic3_clause_6_n0_4 (> (+ (* 1 f148@0) (* (- 1) f153@0)) 0)))
;; Success 

(declare-fun __ic3_clause_6_n0_5 () Bool)
;; Success 

(assert (=> __ic3_clause_6_n0_5 (> (+ (* (- 1) f144@0) 2) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c63))
;; Success 

(assert (! __ic3_clause_6_n0_0 :named c64))
;; Success 

(assert (! __ic3_clause_6_n0_1 :named c65))
;; Success 

(assert (! __ic3_clause_6_n0_2 :named c66))
;; Success 

(assert (! __ic3_clause_6_n0_3 :named c67))
;; Success 

(assert (! __ic3_clause_6_n0_4 :named c68))
;; Success 

(assert (! __ic3_clause_6_n0_5 :named c69))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c63 c65) 

(pop 1)
;; Success 

;; block: Reduced clause 
;; (or 
;;  (not top.usr.OK@0) 
;;  (= (+ (* (- 1) top.res.abs_2@0) 0) 0) 
;;  (not top.res.abs_8@0) 
;;  (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)) 
;;  (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0)) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_0@0) 2) 0))) 
;; with unsat core to 
;; (or 
;;  (= (+ (* (- 1) top.res.abs_2@0) 0) 0) 
;;  (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0)) 0)) 
;;  (not top.res.abs_8@0) 
;;  (not top.usr.OK@0)) 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 9 

(declare-fun __ic3_ind_gen_9 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_9
 (not
  (or
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not f152@1)
   (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 10 

(declare-fun __ic3_ind_gen_10 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_10
 (not
  (or
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0)) 0))
   (not f152@0)
   (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 11 

(declare-fun __ic3_ind_gen_11 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_11
 (or (not (> (+ (* 1 f148@0) (* (- 1) f153@0)) 0)) (not f152@0) (not f105@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_10 :named c70))
;; Success 

(assert (! __ic3_frame_0 :named c71))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c72))
;; Success 

(assert (! __ic3_ind_gen_11 :named c73))
;; Success 

(assert (! __ic3_ind_gen_9 :named c74))
;; Success 

(assert (! __ic3_frame_0 :named c75))
;; Success 

(check-sat)
;; Unsat 

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

(assert (=> __ic3_ind_gen_12 (not (or (not f152@1) (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 13 

(declare-fun __ic3_ind_gen_13 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_13 (not (or (not f152@0) (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 14 

(declare-fun __ic3_ind_gen_14 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_14 (or (not f152@0) (not f105@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_13 :named c76))
;; Success 

(assert (! __ic3_frame_0 :named c77))
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
 (not (or (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0)) (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 16 

(declare-fun __ic3_ind_gen_16 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_16
 (not (or (not (> (+ (* 1 f148@0) (* (- 1) f153@0)) 0)) (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 17 

(declare-fun __ic3_ind_gen_17 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_17
 (or (not (> (+ (* 1 f148@0) (* (- 1) f153@0)) 0)) (not f105@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_16 :named c78))
;; Success 

(assert (! __ic3_frame_0 :named c79))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c80))
;; Success 

(assert (! __ic3_ind_gen_17 :named c81))
;; Success 

(assert (! __ic3_ind_gen_15 :named c82))
;; Success 

(assert (! __ic3_frame_0 :named c83))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_17))
;; Success 

(assert (not __ic3_ind_gen_16))
;; Success 

(assert (not __ic3_ind_gen_15))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 18 

(declare-fun __ic3_ind_gen_18 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_18 (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 19 

(declare-fun __ic3_ind_gen_19 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_19 (> (+ (* 1 f148@0) (* (- 1) f153@0)) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 20 

(declare-fun __ic3_ind_gen_20 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_20 (not (> (+ (* 1 f148@0) (* (- 1) f153@0)) 0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_19 :named c84))
;; Success 

(assert (! __ic3_frame_0 :named c85))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c86))
;; Success 

(assert (! __ic3_ind_gen_20 :named c87))
;; Success 

(assert (! __ic3_ind_gen_18 :named c88))
;; Success 

(assert (! __ic3_frame_0 :named c89))
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

;; ind_generalize: Dropped 5 literals from clause. 

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
;; #7 {(not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0)) 0))} 

;; block: Reduced clause 
;; (or 
;;  (= (+ (* (- 1) top.res.abs_2@0) 0) 0) 
;;  (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0)) 0)) 
;;  (not top.res.abs_8@0) 
;;  (not top.usr.OK@0)) 
;; with ind. gen. to 
;; (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0)) 0)) 

(declare-fun __ic3_clause_7_p0 () Bool)
;; Success 

(assert (=> __ic3_clause_7_p0 (not (> (+ (* 1 f148@0) (* (- 1) f153@0)) 0))))
;; Success 

;; check_frames: frames k to 1 
;;  
;; Frame: 
;; 5 
;; 7 

;; check_frames: Does R_1 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c90))
;; Success 

(assert (! __ic3_clause_5_p0 :named c91))
;; Success 

(assert (! __ic3_clause_7_p0 :named c92))
;; Success 

(assert (! __ic3_clause_5_p0 :named c93))
;; Success 

(assert (! __ic3_clause_7_p0 :named c94))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c95))
;; Success 

(assert (! __ic3_clause_5_n0_0 :named c96))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(declare-fun __ic3_clause_7_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_7_n0_0 (> (+ (* 1 f148@0) (* (- 1) f153@0)) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c97))
;; Success 

(assert (! __ic3_clause_7_n0_0 :named c98))
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
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_2 :named c99))
;; Success 

(assert (! __ic3_frame_0 :named c100))
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

(assert (! __ic3_clause_3_p0 :named c101))
;; Success 

(assert (! __ic3_clause_3_n1_0 :named c102))
;; Success 

(assert (! __ic3_clause_5_p0 :named c103))
;; Success 

(assert (! __ic3_clause_7_p0 :named c104))
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
;;     (f146@1 (- 1)) 
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
;;     (f103@1 true) 
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
;;     (f148@0 1) 
;;     (f147@0 0) 
;;     (f146@0 (- 1)) 
;;     (f145@0 1) 
;;     (f144@0 1) 
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
;;     (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)); 
;;     (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;     (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)); 
;;     (not (> (* 1 top.res.abs_0@0) 0)); 
;;     (not (> (+ (* (- 1) top.res.abs_0@0) 3) 0))} 

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

(assert (=> __ic3_clause_8_n1_2 (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0)))
;; Success 

(declare-fun __ic3_clause_8_n1_3 () Bool)
;; Success 

(assert (=> __ic3_clause_8_n1_3 (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_8_n1_4 () Bool)
;; Success 

(assert (=> __ic3_clause_8_n1_4 (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_8_n1_5 () Bool)
;; Success 

(assert (=> __ic3_clause_8_n1_5 (> (* 1 f144@1) 0)))
;; Success 

(declare-fun __ic3_clause_8_n1_6 () Bool)
;; Success 

(assert (=> __ic3_clause_8_n1_6 (> (+ (* (- 1) f144@1) 3) 0)))
;; Success 

(declare-fun __ic3_clause_8_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_8_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f144@0) 0))
  (not (> (+ (* (- 1) f144@0) 3) 0)))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_8_p0 :named c105))
;; Success 

(assert (! __ic3_clause_8_n1_0 :named c106))
;; Success 

(assert (! __ic3_clause_8_n1_1 :named c107))
;; Success 

(assert (! __ic3_clause_8_n1_2 :named c108))
;; Success 

(assert (! __ic3_clause_8_n1_3 :named c109))
;; Success 

(assert (! __ic3_clause_8_n1_4 :named c110))
;; Success 

(assert (! __ic3_clause_8_n1_5 :named c111))
;; Success 

(assert (! __ic3_clause_8_n1_6 :named c112))
;; Success 

(assert (! __ic3_frame_0 :named c113))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c106 c107 c110 c111 c113) 

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

(assert (=> __ic3_clause_8_n0_2 (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0)))
;; Success 

(declare-fun __ic3_clause_8_n0_3 () Bool)
;; Success 

(assert (=> __ic3_clause_8_n0_3 (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_8_n0_4 () Bool)
;; Success 

(assert (=> __ic3_clause_8_n0_4 (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_8_n0_5 () Bool)
;; Success 

(assert (=> __ic3_clause_8_n0_5 (> (* 1 f144@0) 0)))
;; Success 

(declare-fun __ic3_clause_8_n0_6 () Bool)
;; Success 

(assert (=> __ic3_clause_8_n0_6 (> (+ (* (- 1) f144@0) 3) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c114))
;; Success 

(assert (! __ic3_clause_8_n0_0 :named c115))
;; Success 

(assert (! __ic3_clause_8_n0_1 :named c116))
;; Success 

(assert (! __ic3_clause_8_n0_2 :named c117))
;; Success 

(assert (! __ic3_clause_8_n0_3 :named c118))
;; Success 

(assert (! __ic3_clause_8_n0_4 :named c119))
;; Success 

(assert (! __ic3_clause_8_n0_5 :named c120))
;; Success 

(assert (! __ic3_clause_8_n0_6 :named c121))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c120 c114) 

(pop 1)
;; Success 

;; block: Reduced clause 
;; (or 
;;  (not top.usr.OK@0) 
;;  (not top.res.abs_8@0) 
;;  (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)) 
;;  (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)) 
;;  (not (> (* 1 top.res.abs_0@0) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_0@0) 3) 0))) 
;; with unsat core to 
;; (or 
;;  (not (> (* 1 top.res.abs_0@0) 0)) 
;;  (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)) 
;;  (not top.res.abs_8@0) 
;;  (not top.usr.OK@0)) 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 21 

(declare-fun __ic3_ind_gen_21 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_21
 (not
  (or
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not f152@1)
   (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 22 

(declare-fun __ic3_ind_gen_22 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_22
 (not
  (or
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not f152@0)
   (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 23 

(declare-fun __ic3_ind_gen_23 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_23
 (or
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not f152@0)
  (not f105@0))))
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
 (not (or (not (> (* 1 f144@1) 0)) (not f152@1) (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 25 

(declare-fun __ic3_ind_gen_25 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_25
 (not (or (not (> (* 1 f144@0) 0)) (not f152@0) (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 26 

(declare-fun __ic3_ind_gen_26 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_26 (or (not (> (* 1 f144@0) 0)) (not f152@0) (not f105@0))))
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
;; Sat 

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
 (not
  (or
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f144@1) 0))
   (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 28 

(declare-fun __ic3_ind_gen_28 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_28
 (not
  (or
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f144@0) 0))
   (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 29 

(declare-fun __ic3_ind_gen_29 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_29
 (or
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f144@0) 0))
  (not f105@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_28 :named c130))
;; Success 

(assert (! __ic3_frame_0 :named c131))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c132))
;; Success 

(assert (! __ic3_ind_gen_29 :named c133))
;; Success 

(assert (! __ic3_ind_gen_27 :named c134))
;; Success 

(assert (! __ic3_frame_0 :named c135))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_29))
;; Success 

(assert (not __ic3_ind_gen_28))
;; Success 

(assert (not __ic3_ind_gen_27))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 30 

(declare-fun __ic3_ind_gen_30 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_30
 (not
  (or
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f144@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 31 

(declare-fun __ic3_ind_gen_31 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_31
 (not
  (or
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f144@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 32 

(declare-fun __ic3_ind_gen_32 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_32
 (or
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f144@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_31 :named c136))
;; Success 

(assert (! __ic3_frame_0 :named c137))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c138))
;; Success 

(assert (! __ic3_ind_gen_32 :named c139))
;; Success 

(assert (! __ic3_ind_gen_30 :named c140))
;; Success 

(assert (! __ic3_frame_0 :named c141))
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
;; #9 {(not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)); 
;;     (not (> (* 1 top.res.abs_0@0) 0))} 

;; block: Reduced clause 
;; (or 
;;  (not (> (* 1 top.res.abs_0@0) 0)) 
;;  (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)) 
;;  (not top.res.abs_8@0) 
;;  (not top.usr.OK@0)) 
;; with ind. gen. to 
;; (or 
;;  (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)) 
;;  (not (> (* 1 top.res.abs_0@0) 0))) 

(declare-fun __ic3_clause_9_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_9_p0
 (or
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f144@0) 0)))))
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

(assert (! __ic3_clause_3_n0_0 :named c142))
;; Success 

(assert (! __ic3_clause_5_p0 :named c143))
;; Success 

(assert (! __ic3_clause_7_p0 :named c144))
;; Success 

(assert (! __ic3_clause_9_p0 :named c145))
;; Success 

(assert (! __ic3_clause_5_p0 :named c146))
;; Success 

(assert (! __ic3_clause_7_p0 :named c147))
;; Success 

(assert (! __ic3_clause_9_p0 :named c148))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c149))
;; Success 

(assert (! __ic3_clause_5_n0_0 :named c150))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c151))
;; Success 

(assert (! __ic3_clause_7_n0_0 :named c152))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(declare-fun __ic3_clause_9_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_9_n0_0 (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_9_n0_1 () Bool)
;; Success 

(assert (=> __ic3_clause_9_n0_1 (> (* 1 f144@0) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c153))
;; Success 

(assert (! __ic3_clause_9_n0_0 :named c154))
;; Success 

(assert (! __ic3_clause_9_n0_1 :named c155))
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
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_3 :named c156))
;; Success 

(assert (! __ic3_frame_0 :named c157))
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

(assert (! __ic3_clause_3_p0 :named c158))
;; Success 

(assert (! __ic3_clause_3_n1_0 :named c159))
;; Success 

(assert (! __ic3_clause_5_p0 :named c160))
;; Success 

(assert (! __ic3_clause_7_p0 :named c161))
;; Success 

(assert (! __ic3_clause_9_p0 :named c162))
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
;;     (f101@1 true) 
;;     (f100@1 false) 
;;     (f99@1 false) 
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
;;     (f153@0 1) 
;;     (f152@0 true) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 1) 
;;     (f147@0 0) 
;;     (f146@0 0) 
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

;; New clause at frontier: 
;; #10 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_1@0) 0))} 

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

(assert (=> __ic3_clause_10_n1_2 (> (+ (* (- 1) f144@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_10_n1_3 () Bool)
;; Success 

(assert (=> __ic3_clause_10_n1_3 (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0)))
;; Success 

(declare-fun __ic3_clause_10_n1_4 () Bool)
;; Success 

(assert (=> __ic3_clause_10_n1_4 (> (+ (* (- 1) f144@1) 2) 0)))
;; Success 

(declare-fun __ic3_clause_10_n1_5 () Bool)
;; Success 

(assert (=> __ic3_clause_10_n1_5 (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_10_n1_6 () Bool)
;; Success 

(assert (=> __ic3_clause_10_n1_6 (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_10_n1_7 () Bool)
;; Success 

(assert (=> __ic3_clause_10_n1_7 (> (* 1 f145@1) 0)))
;; Success 

(declare-fun __ic3_clause_10_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_10_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f145@0) 0)))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_10_p0 :named c163))
;; Success 

(assert (! __ic3_clause_10_n1_0 :named c164))
;; Success 

(assert (! __ic3_clause_10_n1_1 :named c165))
;; Success 

(assert (! __ic3_clause_10_n1_2 :named c166))
;; Success 

(assert (! __ic3_clause_10_n1_3 :named c167))
;; Success 

(assert (! __ic3_clause_10_n1_4 :named c168))
;; Success 

(assert (! __ic3_clause_10_n1_5 :named c169))
;; Success 

(assert (! __ic3_clause_10_n1_6 :named c170))
;; Success 

(assert (! __ic3_clause_10_n1_7 :named c171))
;; Success 

(assert (! __ic3_frame_0 :named c172))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c172 c165 c171) 

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

(assert (=> __ic3_clause_10_n0_2 (> (+ (* (- 1) f144@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_10_n0_3 () Bool)
;; Success 

(assert (=> __ic3_clause_10_n0_3 (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0)))
;; Success 

(declare-fun __ic3_clause_10_n0_4 () Bool)
;; Success 

(assert (=> __ic3_clause_10_n0_4 (> (+ (* (- 1) f144@0) 2) 0)))
;; Success 

(declare-fun __ic3_clause_10_n0_5 () Bool)
;; Success 

(assert (=> __ic3_clause_10_n0_5 (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_10_n0_6 () Bool)
;; Success 

(assert (=> __ic3_clause_10_n0_6 (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_10_n0_7 () Bool)
;; Success 

(assert (=> __ic3_clause_10_n0_7 (> (* 1 f145@0) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c173))
;; Success 

(assert (! __ic3_clause_10_n0_0 :named c174))
;; Success 

(assert (! __ic3_clause_10_n0_1 :named c175))
;; Success 

(assert (! __ic3_clause_10_n0_2 :named c176))
;; Success 

(assert (! __ic3_clause_10_n0_3 :named c177))
;; Success 

(assert (! __ic3_clause_10_n0_4 :named c178))
;; Success 

(assert (! __ic3_clause_10_n0_5 :named c179))
;; Success 

(assert (! __ic3_clause_10_n0_6 :named c180))
;; Success 

(assert (! __ic3_clause_10_n0_7 :named c181))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c181 c173) 

(pop 1)
;; Success 

;; block: Reduced clause 
;; (or 
;;  (not top.usr.OK@0) 
;;  (not top.res.abs_8@0) 
;;  (not (> (+ (* (- 1) top.res.abs_0@0) 1) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_0@0) 2) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)) 
;;  (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)) 
;;  (not (> (* 1 top.res.abs_1@0) 0))) 
;; with unsat core to 
;; (or (not (> (* 1 top.res.abs_1@0) 0)) (not top.res.abs_8@0)) 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 33 

(declare-fun __ic3_ind_gen_33 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_33 f152@1))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 34 

(declare-fun __ic3_ind_gen_34 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_34 f152@0))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 35 

(declare-fun __ic3_ind_gen_35 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_35 (not f152@0)))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_34 :named c182))
;; Success 

(assert (! __ic3_frame_0 :named c183))
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

(assert (=> __ic3_ind_gen_36 (> (* 1 f145@1) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 37 

(declare-fun __ic3_ind_gen_37 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_37 (> (* 1 f145@0) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 38 

(declare-fun __ic3_ind_gen_38 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_38 (not (> (* 1 f145@0) 0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_37 :named c184))
;; Success 

(assert (! __ic3_frame_0 :named c185))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c186))
;; Success 

(assert (! __ic3_ind_gen_38 :named c187))
;; Success 

(assert (! __ic3_ind_gen_36 :named c188))
;; Success 

(assert (! __ic3_frame_0 :named c189))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_38))
;; Success 

(assert (not __ic3_ind_gen_37))
;; Success 

(assert (not __ic3_ind_gen_36))
;; Success 

;; ind_generalize: Dropped 7 literals from clause. 

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
;; #11 {(not (> (* 1 top.res.abs_1@0) 0))} 

;; block: Reduced clause 
;; (or (not (> (* 1 top.res.abs_1@0) 0)) (not top.res.abs_8@0)) 
;; with ind. gen. to 
;; (not (> (* 1 top.res.abs_1@0) 0)) 

(declare-fun __ic3_clause_11_p0 () Bool)
;; Success 

(assert (=> __ic3_clause_11_p0 (not (> (* 1 f145@0) 0))))
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

(assert (! __ic3_clause_3_n0_0 :named c190))
;; Success 

(assert (! __ic3_clause_5_p0 :named c191))
;; Success 

(assert (! __ic3_clause_7_p0 :named c192))
;; Success 

(assert (! __ic3_clause_9_p0 :named c193))
;; Success 

(assert (! __ic3_clause_11_p0 :named c194))
;; Success 

(assert (! __ic3_clause_5_p0 :named c195))
;; Success 

(assert (! __ic3_clause_7_p0 :named c196))
;; Success 

(assert (! __ic3_clause_9_p0 :named c197))
;; Success 

(assert (! __ic3_clause_11_p0 :named c198))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c199))
;; Success 

(assert (! __ic3_clause_5_n0_0 :named c200))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c201))
;; Success 

(assert (! __ic3_clause_7_n0_0 :named c202))
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

(assert (! __ic3_clause_9_n0_0 :named c204))
;; Success 

(assert (! __ic3_clause_9_n0_1 :named c205))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(declare-fun __ic3_clause_11_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_11_n0_0 (> (* 1 f145@0) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c206))
;; Success 

(assert (! __ic3_clause_11_n0_0 :named c207))
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
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (not (> (* 1 f145@1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (not (> (* 1 f145@1) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_4 :named c208))
;; Success 

(assert (! __ic3_frame_0 :named c209))
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

(assert (! __ic3_clause_3_p0 :named c210))
;; Success 

(assert (! __ic3_clause_3_n1_0 :named c211))
;; Success 

(assert (! __ic3_clause_5_p0 :named c212))
;; Success 

(assert (! __ic3_clause_7_p0 :named c213))
;; Success 

(assert (! __ic3_clause_9_p0 :named c214))
;; Success 

(assert (! __ic3_clause_11_p0 :named c215))
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
;;     (f157@1 0) 
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
;;     (f102@1 true) 
;;     (f101@1 false) 
;;     (f100@1 false) 
;;     (f99@1 false) 
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
;;     (f157@0 0) 
;;     (f158@0 false) 
;;     (f153@0 1) 
;;     (f152@0 true) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 1) 
;;     (f147@0 0) 
;;     (f146@0 1) 
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
;; #12 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_1@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_2@0) 0))} 

;; block: Is blocking clause relative inductive to R_0? 

(declare-fun __ic3_clause_12_n1_0 () Bool)
;; Success 

(assert (=> __ic3_clause_12_n1_0 f105@1))
;; Success 

(declare-fun __ic3_clause_12_n1_1 () Bool)
;; Success 

(assert (=> __ic3_clause_12_n1_1 f152@1))
;; Success 

(declare-fun __ic3_clause_12_n1_2 () Bool)
;; Success 

(assert (=> __ic3_clause_12_n1_2 (> (+ (* (- 1) f144@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_12_n1_3 () Bool)
;; Success 

(assert (=> __ic3_clause_12_n1_3 (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0)))
;; Success 

(declare-fun __ic3_clause_12_n1_4 () Bool)
;; Success 

(assert (=> __ic3_clause_12_n1_4 (> (+ (* (- 1) f144@1) 2) 0)))
;; Success 

(declare-fun __ic3_clause_12_n1_5 () Bool)
;; Success 

(assert (=> __ic3_clause_12_n1_5 (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_12_n1_6 () Bool)
;; Success 

(assert (=> __ic3_clause_12_n1_6 (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_12_n1_7 () Bool)
;; Success 

(assert (=> __ic3_clause_12_n1_7 (> (+ (* (- 1) f145@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_12_n1_8 () Bool)
;; Success 

(assert (=> __ic3_clause_12_n1_8 (> (* 1 f146@1) 0)))
;; Success 

(declare-fun __ic3_clause_12_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_12_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (* 1 f146@0) 0)))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_12_p0 :named c216))
;; Success 

(assert (! __ic3_clause_12_n1_0 :named c217))
;; Success 

(assert (! __ic3_clause_12_n1_1 :named c218))
;; Success 

(assert (! __ic3_clause_12_n1_2 :named c219))
;; Success 

(assert (! __ic3_clause_12_n1_3 :named c220))
;; Success 

(assert (! __ic3_clause_12_n1_4 :named c221))
;; Success 

(assert (! __ic3_clause_12_n1_5 :named c222))
;; Success 

(assert (! __ic3_clause_12_n1_6 :named c223))
;; Success 

(assert (! __ic3_clause_12_n1_7 :named c224))
;; Success 

(assert (! __ic3_clause_12_n1_8 :named c225))
;; Success 

(assert (! __ic3_frame_0 :named c226))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c217 c218 c223 c225 c226) 

(pop 1)
;; Success 

;; block: Check I |= C to get unsat core. 

(declare-fun __ic3_clause_12_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_12_n0_0 f105@0))
;; Success 

(declare-fun __ic3_clause_12_n0_1 () Bool)
;; Success 

(assert (=> __ic3_clause_12_n0_1 f152@0))
;; Success 

(declare-fun __ic3_clause_12_n0_2 () Bool)
;; Success 

(assert (=> __ic3_clause_12_n0_2 (> (+ (* (- 1) f144@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_12_n0_3 () Bool)
;; Success 

(assert (=> __ic3_clause_12_n0_3 (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0)))
;; Success 

(declare-fun __ic3_clause_12_n0_4 () Bool)
;; Success 

(assert (=> __ic3_clause_12_n0_4 (> (+ (* (- 1) f144@0) 2) 0)))
;; Success 

(declare-fun __ic3_clause_12_n0_5 () Bool)
;; Success 

(assert (=> __ic3_clause_12_n0_5 (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_12_n0_6 () Bool)
;; Success 

(assert (=> __ic3_clause_12_n0_6 (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_12_n0_7 () Bool)
;; Success 

(assert (=> __ic3_clause_12_n0_7 (> (+ (* (- 1) f145@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_12_n0_8 () Bool)
;; Success 

(assert (=> __ic3_clause_12_n0_8 (> (* 1 f146@0) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c227))
;; Success 

(assert (! __ic3_clause_12_n0_0 :named c228))
;; Success 

(assert (! __ic3_clause_12_n0_1 :named c229))
;; Success 

(assert (! __ic3_clause_12_n0_2 :named c230))
;; Success 

(assert (! __ic3_clause_12_n0_3 :named c231))
;; Success 

(assert (! __ic3_clause_12_n0_4 :named c232))
;; Success 

(assert (! __ic3_clause_12_n0_5 :named c233))
;; Success 

(assert (! __ic3_clause_12_n0_6 :named c234))
;; Success 

(assert (! __ic3_clause_12_n0_7 :named c235))
;; Success 

(assert (! __ic3_clause_12_n0_8 :named c236))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c236 c227) 

(pop 1)
;; Success 

;; block: Reduced clause 
;; (or 
;;  (not top.usr.OK@0) 
;;  (not top.res.abs_8@0) 
;;  (not (> (+ (* (- 1) top.res.abs_0@0) 1) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_0@0) 2) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)) 
;;  (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_1@0) 1) 0)) 
;;  (not (> (* 1 top.res.abs_2@0) 0))) 
;; with unsat core to 
;; (or 
;;  (not (> (* 1 top.res.abs_2@0) 0)) 
;;  (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)) 
;;  (not top.res.abs_8@0) 
;;  (not top.usr.OK@0)) 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 39 

(declare-fun __ic3_ind_gen_39 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_39
 (not
  (or
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not f152@1)
   (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 40 

(declare-fun __ic3_ind_gen_40 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_40
 (not
  (or
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not f152@0)
   (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 41 

(declare-fun __ic3_ind_gen_41 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_41
 (or
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not f152@0)
  (not f105@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_40 :named c237))
;; Success 

(assert (! __ic3_frame_0 :named c238))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_41))
;; Success 

(assert (not __ic3_ind_gen_40))
;; Success 

(assert (not __ic3_ind_gen_39))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 42 

(declare-fun __ic3_ind_gen_42 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_42
 (not (or (not (> (* 1 f146@1) 0)) (not f152@1) (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 43 

(declare-fun __ic3_ind_gen_43 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_43
 (not (or (not (> (* 1 f146@0) 0)) (not f152@0) (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 44 

(declare-fun __ic3_ind_gen_44 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_44 (or (not (> (* 1 f146@0) 0)) (not f152@0) (not f105@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_43 :named c239))
;; Success 

(assert (! __ic3_frame_0 :named c240))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c241))
;; Success 

(assert (! __ic3_ind_gen_44 :named c242))
;; Success 

(assert (! __ic3_ind_gen_42 :named c243))
;; Success 

(assert (! __ic3_frame_0 :named c244))
;; Success 

(check-sat)
;; Unsat 

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
 (=> __ic3_ind_gen_45 (not (or (not (> (* 1 f146@1) 0)) (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 46 

(declare-fun __ic3_ind_gen_46 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_46 (not (or (not (> (* 1 f146@0) 0)) (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 47 

(declare-fun __ic3_ind_gen_47 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_47 (or (not (> (* 1 f146@0) 0)) (not f105@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_46 :named c245))
;; Success 

(assert (! __ic3_frame_0 :named c246))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c247))
;; Success 

(assert (! __ic3_ind_gen_47 :named c248))
;; Success 

(assert (! __ic3_ind_gen_45 :named c249))
;; Success 

(assert (! __ic3_frame_0 :named c250))
;; Success 

(check-sat)
;; Unsat 

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

(assert (=> __ic3_ind_gen_48 (> (* 1 f146@1) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 49 

(declare-fun __ic3_ind_gen_49 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_49 (> (* 1 f146@0) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 50 

(declare-fun __ic3_ind_gen_50 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_50 (not (> (* 1 f146@0) 0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_49 :named c251))
;; Success 

(assert (! __ic3_frame_0 :named c252))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c253))
;; Success 

(assert (! __ic3_ind_gen_50 :named c254))
;; Success 

(assert (! __ic3_ind_gen_48 :named c255))
;; Success 

(assert (! __ic3_frame_0 :named c256))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_50))
;; Success 

(assert (not __ic3_ind_gen_49))
;; Success 

(assert (not __ic3_ind_gen_48))
;; Success 

;; ind_generalize: Dropped 8 literals from clause. 

;; Deactivating activation literals for clause 

(assert (not __ic3_clause_12_p0))
;; Success 

(assert (not __ic3_clause_12_n0_0))
;; Success 

(assert (not __ic3_clause_12_n0_1))
;; Success 

(assert (not __ic3_clause_12_n0_2))
;; Success 

(assert (not __ic3_clause_12_n0_3))
;; Success 

(assert (not __ic3_clause_12_n0_4))
;; Success 

(assert (not __ic3_clause_12_n0_5))
;; Success 

(assert (not __ic3_clause_12_n0_6))
;; Success 

(assert (not __ic3_clause_12_n0_7))
;; Success 

(assert (not __ic3_clause_12_n0_8))
;; Success 

(assert (not __ic3_clause_12_n1_0))
;; Success 

(assert (not __ic3_clause_12_n1_1))
;; Success 

(assert (not __ic3_clause_12_n1_2))
;; Success 

(assert (not __ic3_clause_12_n1_3))
;; Success 

(assert (not __ic3_clause_12_n1_4))
;; Success 

(assert (not __ic3_clause_12_n1_5))
;; Success 

(assert (not __ic3_clause_12_n1_6))
;; Success 

(assert (not __ic3_clause_12_n1_7))
;; Success 

(assert (not __ic3_clause_12_n1_8))
;; Success 

;; New clause from inductive generalization of #12: 
;; #13 {(not (> (* 1 top.res.abs_2@0) 0))} 

;; block: Reduced clause 
;; (or 
;;  (not (> (* 1 top.res.abs_2@0) 0)) 
;;  (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)) 
;;  (not top.res.abs_8@0) 
;;  (not top.usr.OK@0)) 
;; with ind. gen. to 
;; (not (> (* 1 top.res.abs_2@0) 0)) 

(declare-fun __ic3_clause_13_p0 () Bool)
;; Success 

(assert (=> __ic3_clause_13_p0 (not (> (* 1 f146@0) 0))))
;; Success 

;; check_frames: frames k to 1 
;;  
;; Frame: 
;; 5 
;; 7 
;; 9 
;; 11 
;; 13 

;; check_frames: Does R_1 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c257))
;; Success 

(assert (! __ic3_clause_5_p0 :named c258))
;; Success 

(assert (! __ic3_clause_7_p0 :named c259))
;; Success 

(assert (! __ic3_clause_9_p0 :named c260))
;; Success 

(assert (! __ic3_clause_11_p0 :named c261))
;; Success 

(assert (! __ic3_clause_13_p0 :named c262))
;; Success 

(assert (! __ic3_clause_5_p0 :named c263))
;; Success 

(assert (! __ic3_clause_7_p0 :named c264))
;; Success 

(assert (! __ic3_clause_9_p0 :named c265))
;; Success 

(assert (! __ic3_clause_11_p0 :named c266))
;; Success 

(assert (! __ic3_clause_13_p0 :named c267))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c268))
;; Success 

(assert (! __ic3_clause_5_n0_0 :named c269))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c270))
;; Success 

(assert (! __ic3_clause_7_n0_0 :named c271))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c272))
;; Success 

(assert (! __ic3_clause_9_n0_0 :named c273))
;; Success 

(assert (! __ic3_clause_9_n0_1 :named c274))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c275))
;; Success 

(assert (! __ic3_clause_11_n0_0 :named c276))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(declare-fun __ic3_clause_13_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_13_n0_0 (> (* 1 f146@0) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c277))
;; Success 

(assert (! __ic3_clause_13_n0_0 :named c278))
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
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (not (> (* 1 f145@1) 0))
   (not (> (* 1 f146@1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (not (> (* 1 f145@1) 0))
   (not (> (* 1 f146@1) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_5 :named c279))
;; Success 

(assert (! __ic3_frame_0 :named c280))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_5))
;; Success 

;; block: All counterexamples blocked in R_1 

;; block: Check if all successors of frontier R_1 are safe. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c281))
;; Success 

(assert (! __ic3_clause_3_n1_0 :named c282))
;; Success 

(assert (! __ic3_clause_5_p0 :named c283))
;; Success 

(assert (! __ic3_clause_7_p0 :named c284))
;; Success 

(assert (! __ic3_clause_9_p0 :named c285))
;; Success 

(assert (! __ic3_clause_11_p0 :named c286))
;; Success 

(assert (! __ic3_clause_13_p0 :named c287))
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
;;     (f100@1 true) 
;;     (f99@1 false) 
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
;;     (f153@0 1) 
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
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_1@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_2@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_3@0) 0))} 

;; block: Is blocking clause relative inductive to R_0? 

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

(assert (=> __ic3_clause_14_n1_2 (> (+ (* (- 1) f144@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_14_n1_3 () Bool)
;; Success 

(assert (=> __ic3_clause_14_n1_3 (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0)))
;; Success 

(declare-fun __ic3_clause_14_n1_4 () Bool)
;; Success 

(assert (=> __ic3_clause_14_n1_4 (> (+ (* (- 1) f144@1) 2) 0)))
;; Success 

(declare-fun __ic3_clause_14_n1_5 () Bool)
;; Success 

(assert (=> __ic3_clause_14_n1_5 (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_14_n1_6 () Bool)
;; Success 

(assert (=> __ic3_clause_14_n1_6 (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_14_n1_7 () Bool)
;; Success 

(assert (=> __ic3_clause_14_n1_7 (> (+ (* (- 1) f145@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_14_n1_8 () Bool)
;; Success 

(assert (=> __ic3_clause_14_n1_8 (> (+ (* (- 1) f146@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_14_n1_9 () Bool)
;; Success 

(assert (=> __ic3_clause_14_n1_9 (> (* 1 f147@1) 0)))
;; Success 

(declare-fun __ic3_clause_14_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_14_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0)))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_14_p0 :named c288))
;; Success 

(assert (! __ic3_clause_14_n1_0 :named c289))
;; Success 

(assert (! __ic3_clause_14_n1_1 :named c290))
;; Success 

(assert (! __ic3_clause_14_n1_2 :named c291))
;; Success 

(assert (! __ic3_clause_14_n1_3 :named c292))
;; Success 

(assert (! __ic3_clause_14_n1_4 :named c293))
;; Success 

(assert (! __ic3_clause_14_n1_5 :named c294))
;; Success 

(assert (! __ic3_clause_14_n1_6 :named c295))
;; Success 

(assert (! __ic3_clause_14_n1_7 :named c296))
;; Success 

(assert (! __ic3_clause_14_n1_8 :named c297))
;; Success 

(assert (! __ic3_clause_14_n1_9 :named c298))
;; Success 

(assert (! __ic3_frame_0 :named c299))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c289 c290 c295 c298 c299) 

(pop 1)
;; Success 

;; block: Check I |= C to get unsat core. 

(declare-fun __ic3_clause_14_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_14_n0_0 f105@0))
;; Success 

(declare-fun __ic3_clause_14_n0_1 () Bool)
;; Success 

(assert (=> __ic3_clause_14_n0_1 f152@0))
;; Success 

(declare-fun __ic3_clause_14_n0_2 () Bool)
;; Success 

(assert (=> __ic3_clause_14_n0_2 (> (+ (* (- 1) f144@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_14_n0_3 () Bool)
;; Success 

(assert (=> __ic3_clause_14_n0_3 (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0)))
;; Success 

(declare-fun __ic3_clause_14_n0_4 () Bool)
;; Success 

(assert (=> __ic3_clause_14_n0_4 (> (+ (* (- 1) f144@0) 2) 0)))
;; Success 

(declare-fun __ic3_clause_14_n0_5 () Bool)
;; Success 

(assert (=> __ic3_clause_14_n0_5 (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_14_n0_6 () Bool)
;; Success 

(assert (=> __ic3_clause_14_n0_6 (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_14_n0_7 () Bool)
;; Success 

(assert (=> __ic3_clause_14_n0_7 (> (+ (* (- 1) f145@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_14_n0_8 () Bool)
;; Success 

(assert (=> __ic3_clause_14_n0_8 (> (+ (* (- 1) f146@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_14_n0_9 () Bool)
;; Success 

(assert (=> __ic3_clause_14_n0_9 (> (* 1 f147@0) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c300))
;; Success 

(assert (! __ic3_clause_14_n0_0 :named c301))
;; Success 

(assert (! __ic3_clause_14_n0_1 :named c302))
;; Success 

(assert (! __ic3_clause_14_n0_2 :named c303))
;; Success 

(assert (! __ic3_clause_14_n0_3 :named c304))
;; Success 

(assert (! __ic3_clause_14_n0_4 :named c305))
;; Success 

(assert (! __ic3_clause_14_n0_5 :named c306))
;; Success 

(assert (! __ic3_clause_14_n0_6 :named c307))
;; Success 

(assert (! __ic3_clause_14_n0_7 :named c308))
;; Success 

(assert (! __ic3_clause_14_n0_8 :named c309))
;; Success 

(assert (! __ic3_clause_14_n0_9 :named c310))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c310 c300) 

(pop 1)
;; Success 

;; block: Reduced clause 
;; (or 
;;  (not top.usr.OK@0) 
;;  (not top.res.abs_8@0) 
;;  (not (> (+ (* (- 1) top.res.abs_0@0) 1) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_0@0) 2) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)) 
;;  (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_1@0) 1) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_2@0) 1) 0)) 
;;  (not (> (* 1 top.res.abs_3@0) 0))) 
;; with unsat core to 
;; (or 
;;  (not (> (* 1 top.res.abs_3@0) 0)) 
;;  (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)) 
;;  (not top.res.abs_8@0) 
;;  (not top.usr.OK@0)) 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 51 

(declare-fun __ic3_ind_gen_51 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_51
 (not
  (or
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not f152@1)
   (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 52 

(declare-fun __ic3_ind_gen_52 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_52
 (not
  (or
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not f152@0)
   (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 53 

(declare-fun __ic3_ind_gen_53 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_53
 (or
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not f152@0)
  (not f105@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_52 :named c311))
;; Success 

(assert (! __ic3_frame_0 :named c312))
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

(assert
 (=>
 __ic3_ind_gen_54
 (not (or (not (> (* 1 f147@1) 0)) (not f152@1) (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 55 

(declare-fun __ic3_ind_gen_55 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_55
 (not (or (not (> (* 1 f147@0) 0)) (not f152@0) (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 56 

(declare-fun __ic3_ind_gen_56 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_56 (or (not (> (* 1 f147@0) 0)) (not f152@0) (not f105@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_55 :named c313))
;; Success 

(assert (! __ic3_frame_0 :named c314))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c315))
;; Success 

(assert (! __ic3_ind_gen_56 :named c316))
;; Success 

(assert (! __ic3_ind_gen_54 :named c317))
;; Success 

(assert (! __ic3_frame_0 :named c318))
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

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 57 

(declare-fun __ic3_ind_gen_57 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_57
 (not
  (or
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f147@1) 0))
   (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 58 

(declare-fun __ic3_ind_gen_58 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_58
 (not
  (or
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f147@0) 0))
   (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 59 

(declare-fun __ic3_ind_gen_59 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_59
 (or
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f147@0) 0))
  (not f105@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_58 :named c319))
;; Success 

(assert (! __ic3_frame_0 :named c320))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c321))
;; Success 

(assert (! __ic3_ind_gen_59 :named c322))
;; Success 

(assert (! __ic3_ind_gen_57 :named c323))
;; Success 

(assert (! __ic3_frame_0 :named c324))
;; Success 

(check-sat)
;; Unsat 

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

(assert
 (=>
 __ic3_ind_gen_60
 (not
  (or
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f147@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 61 

(declare-fun __ic3_ind_gen_61 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_61
 (not
  (or
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f147@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 62 

(declare-fun __ic3_ind_gen_62 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_62
 (or
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f147@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_61 :named c325))
;; Success 

(assert (! __ic3_frame_0 :named c326))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c327))
;; Success 

(assert (! __ic3_ind_gen_62 :named c328))
;; Success 

(assert (! __ic3_ind_gen_60 :named c329))
;; Success 

(assert (! __ic3_frame_0 :named c330))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_62))
;; Success 

(assert (not __ic3_ind_gen_61))
;; Success 

(assert (not __ic3_ind_gen_60))
;; Success 

;; ind_generalize: Dropped 8 literals from clause. 

;; Deactivating activation literals for clause 

(assert (not __ic3_clause_14_p0))
;; Success 

(assert (not __ic3_clause_14_n0_0))
;; Success 

(assert (not __ic3_clause_14_n0_1))
;; Success 

(assert (not __ic3_clause_14_n0_2))
;; Success 

(assert (not __ic3_clause_14_n0_3))
;; Success 

(assert (not __ic3_clause_14_n0_4))
;; Success 

(assert (not __ic3_clause_14_n0_5))
;; Success 

(assert (not __ic3_clause_14_n0_6))
;; Success 

(assert (not __ic3_clause_14_n0_7))
;; Success 

(assert (not __ic3_clause_14_n0_8))
;; Success 

(assert (not __ic3_clause_14_n0_9))
;; Success 

(assert (not __ic3_clause_14_n1_0))
;; Success 

(assert (not __ic3_clause_14_n1_1))
;; Success 

(assert (not __ic3_clause_14_n1_2))
;; Success 

(assert (not __ic3_clause_14_n1_3))
;; Success 

(assert (not __ic3_clause_14_n1_4))
;; Success 

(assert (not __ic3_clause_14_n1_5))
;; Success 

(assert (not __ic3_clause_14_n1_6))
;; Success 

(assert (not __ic3_clause_14_n1_7))
;; Success 

(assert (not __ic3_clause_14_n1_8))
;; Success 

(assert (not __ic3_clause_14_n1_9))
;; Success 

;; New clause from inductive generalization of #14: 
;; #15 {(not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_3@0) 0))} 

;; block: Reduced clause 
;; (or 
;;  (not (> (* 1 top.res.abs_3@0) 0)) 
;;  (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)) 
;;  (not top.res.abs_8@0) 
;;  (not top.usr.OK@0)) 
;; with ind. gen. to 
;; (or 
;;  (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)) 
;;  (not (> (* 1 top.res.abs_3@0) 0))) 

(declare-fun __ic3_clause_15_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_15_p0
 (or
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f147@0) 0)))))
;; Success 

;; check_frames: frames k to 1 
;;  
;; Frame: 
;; 5 
;; 7 
;; 9 
;; 15 
;; 11 
;; 13 

;; check_frames: Does R_1 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c331))
;; Success 

(assert (! __ic3_clause_5_p0 :named c332))
;; Success 

(assert (! __ic3_clause_7_p0 :named c333))
;; Success 

(assert (! __ic3_clause_9_p0 :named c334))
;; Success 

(assert (! __ic3_clause_15_p0 :named c335))
;; Success 

(assert (! __ic3_clause_11_p0 :named c336))
;; Success 

(assert (! __ic3_clause_13_p0 :named c337))
;; Success 

(assert (! __ic3_clause_5_p0 :named c338))
;; Success 

(assert (! __ic3_clause_7_p0 :named c339))
;; Success 

(assert (! __ic3_clause_9_p0 :named c340))
;; Success 

(assert (! __ic3_clause_15_p0 :named c341))
;; Success 

(assert (! __ic3_clause_11_p0 :named c342))
;; Success 

(assert (! __ic3_clause_13_p0 :named c343))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c344))
;; Success 

(assert (! __ic3_clause_5_n0_0 :named c345))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c346))
;; Success 

(assert (! __ic3_clause_7_n0_0 :named c347))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c348))
;; Success 

(assert (! __ic3_clause_9_n0_0 :named c349))
;; Success 

(assert (! __ic3_clause_9_n0_1 :named c350))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(declare-fun __ic3_clause_15_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_15_n0_0 (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_15_n0_1 () Bool)
;; Success 

(assert (=> __ic3_clause_15_n0_1 (> (* 1 f147@0) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c351))
;; Success 

(assert (! __ic3_clause_15_n0_0 :named c352))
;; Success 

(assert (! __ic3_clause_15_n0_1 :named c353))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c354))
;; Success 

(assert (! __ic3_clause_11_n0_0 :named c355))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c356))
;; Success 

(assert (! __ic3_clause_13_n0_0 :named c357))
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
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (not (> (* 1 f145@1) 0))
   (not (> (* 1 f146@1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (not (> (* 1 f145@1) 0))
   (not (> (* 1 f146@1) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_6 :named c358))
;; Success 

(assert (! __ic3_frame_0 :named c359))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_6))
;; Success 

;; block: All counterexamples blocked in R_1 

;; block: Check if all successors of frontier R_1 are safe. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c360))
;; Success 

(assert (! __ic3_clause_3_n1_0 :named c361))
;; Success 

(assert (! __ic3_clause_5_p0 :named c362))
;; Success 

(assert (! __ic3_clause_7_p0 :named c363))
;; Success 

(assert (! __ic3_clause_9_p0 :named c364))
;; Success 

(assert (! __ic3_clause_15_p0 :named c365))
;; Success 

(assert (! __ic3_clause_11_p0 :named c366))
;; Success 

(assert (! __ic3_clause_13_p0 :named c367))
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

(assert (! __ic3_clause_3_n0_0 :named c368))
;; Success 

(assert (! __ic3_clause_5_p0 :named c369))
;; Success 

(assert (! __ic3_clause_7_p0 :named c370))
;; Success 

(assert (! __ic3_clause_9_p0 :named c371))
;; Success 

(assert (! __ic3_clause_15_p0 :named c372))
;; Success 

(assert (! __ic3_clause_11_p0 :named c373))
;; Success 

(assert (! __ic3_clause_13_p0 :named c374))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c375))
;; Success 

(assert (! __ic3_clause_5_n0_0 :named c376))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c377))
;; Success 

(assert (! __ic3_clause_7_n0_0 :named c378))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c379))
;; Success 

(assert (! __ic3_clause_9_n0_0 :named c380))
;; Success 

(assert (! __ic3_clause_9_n0_1 :named c381))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c382))
;; Success 

(assert (! __ic3_clause_15_n0_0 :named c383))
;; Success 

(assert (! __ic3_clause_15_n0_1 :named c384))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c385))
;; Success 

(assert (! __ic3_clause_11_n0_0 :named c386))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c387))
;; Success 

(assert (! __ic3_clause_13_n0_0 :named c388))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_0 & T |= R_1 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 7 

(declare-fun __ic3_check_frames_7 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_7
 (not
  (and
   f105@1
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (not (> (* 1 f145@1) 0))
   (not (> (* 1 f146@1) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_7 :named c389))
;; Success 

(assert (! __ic3_frame_0 :named c390))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_7))
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
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (not (> (* 1 f145@1) 0))
   (not (> (* 1 f146@1) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c391))
;; Success 

(assert (! __ic3_fwd_prop_0 :named c392))
;; Success 

(assert (! __ic3_clause_5_p0 :named c393))
;; Success 

(assert (! __ic3_clause_7_p0 :named c394))
;; Success 

(assert (! __ic3_clause_9_p0 :named c395))
;; Success 

(assert (! __ic3_clause_15_p0 :named c396))
;; Success 

(assert (! __ic3_clause_11_p0 :named c397))
;; Success 

(assert (! __ic3_clause_13_p0 :named c398))
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
;;     (f152@1 false) 
;;     (f151@1 false) 
;;     (f150@1 false) 
;;     (f149@1 false) 
;;     (f148@1 1) 
;;     (f147@1 0) 
;;     (f146@1 1) 
;;     (f145@1 1) 
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
;;     (f104@1 0) 
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
;;     (f92@1 true) 
;;     (f154@0 false) 
;;     (f155@0 false) 
;;     (f156@0 false) 
;;     (f157@0 1) 
;;     (f158@0 false) 
;;     (f153@0 2) 
;;     (f152@0 false) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 1) 
;;     (f147@0 1) 
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
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c399))
;; Success 

(assert (! __ic3_fwd_prop_1 :named c400))
;; Success 

(assert (! __ic3_clause_5_p0 :named c401))
;; Success 

(assert (! __ic3_clause_7_p0 :named c402))
;; Success 

(assert (! __ic3_clause_9_p0 :named c403))
;; Success 

(assert (! __ic3_clause_15_p0 :named c404))
;; Success 

(assert (! __ic3_clause_11_p0 :named c405))
;; Success 

(assert (! __ic3_clause_13_p0 :named c406))
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
;;     (f152@1 false) 
;;     (f151@1 false) 
;;     (f150@1 false) 
;;     (f149@1 false) 
;;     (f148@1 2) 
;;     (f147@1 2) 
;;     (f146@1 (- 1)) 
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
;;     (f104@1 0) 
;;     (f103@1 false) 
;;     (f102@1 false) 
;;     (f101@1 false) 
;;     (f100@1 true) 
;;     (f99@1 false) 
;;     (f98@1 false) 
;;     (f97@1 true) 
;;     (f96@1 true) 
;;     (f95@1 true) 
;;     (f94@1 true) 
;;     (f93@1 false) 
;;     (f92@1 false) 
;;     (f154@0 false) 
;;     (f155@0 false) 
;;     (f156@0 false) 
;;     (f157@0 1) 
;;     (f158@0 false) 
;;     (f153@0 2) 
;;     (f152@0 false) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 1) 
;;     (f147@0 1) 
;;     (f146@0 (- 1)) 
;;     (f145@0 0) 
;;     (f144@0 2) 
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
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c407))
;; Success 

(assert (! __ic3_fwd_prop_2 :named c408))
;; Success 

(assert (! __ic3_clause_5_p0 :named c409))
;; Success 

(assert (! __ic3_clause_7_p0 :named c410))
;; Success 

(assert (! __ic3_clause_9_p0 :named c411))
;; Success 

(assert (! __ic3_clause_15_p0 :named c412))
;; Success 

(assert (! __ic3_clause_11_p0 :named c413))
;; Success 

(assert (! __ic3_clause_13_p0 :named c414))
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

(assert (! __ic3_clause_3_n0_0 :named c415))
;; Success 

(assert (! __ic3_clause_5_p0 :named c416))
;; Success 

(assert (! __ic3_clause_7_p0 :named c417))
;; Success 

(assert (! __ic3_clause_9_p0 :named c418))
;; Success 

(assert (! __ic3_clause_15_p0 :named c419))
;; Success 

(assert (! __ic3_clause_11_p0 :named c420))
;; Success 

(assert (! __ic3_clause_13_p0 :named c421))
;; Success 

(assert (! __ic3_clause_5_p0 :named c422))
;; Success 

(assert (! __ic3_clause_7_p0 :named c423))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c424))
;; Success 

(assert (! __ic3_clause_5_n0_0 :named c425))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c426))
;; Success 

(assert (! __ic3_clause_7_n0_0 :named c427))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c428))
;; Success 

(assert (! __ic3_clause_9_n0_0 :named c429))
;; Success 

(assert (! __ic3_clause_9_n0_1 :named c430))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c431))
;; Success 

(assert (! __ic3_clause_15_n0_0 :named c432))
;; Success 

(assert (! __ic3_clause_15_n0_1 :named c433))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c434))
;; Success 

(assert (! __ic3_clause_11_n0_0 :named c435))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c436))
;; Success 

(assert (! __ic3_clause_13_n0_0 :named c437))
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
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (not (> (* 1 f145@1) 0))
   (not (> (* 1 f146@1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_8 :named c438))
;; Success 

(assert (! __ic3_frame_0 :named c439))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_8))
;; Success 

;; fwd_propagate: Checking forward propagation of clauses before generalization in frame 1. 

;; Copied clause #10 in forward propagation: 
;; #16 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_1@0) 0))} 

;; Copied clause #12 in forward propagation: 
;; #17 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_1@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_2@0) 0))} 

;; Copied clause #8 in forward propagation: 
;; #18 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_0@0) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 3) 0))} 

;; Copied clause #14 in forward propagation: 
;; #19 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_1@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_2@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_3@0) 0))} 

(declare-fun __ic3_clause_19_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_19_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0)))))
;; Success 

(declare-fun __ic3_clause_18_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_18_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f144@0) 0))
  (not (> (+ (* (- 1) f144@0) 3) 0)))))
;; Success 

(declare-fun __ic3_clause_17_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_17_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (* 1 f146@0) 0)))))
;; Success 

(declare-fun __ic3_clause_16_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_16_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f145@0) 0)))))
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
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (+ (* (- 1) f146@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0))
    (not (> (+ (* (- 1) f144@1) 3) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c440))
;; Success 

(assert (! __ic3_fwd_prop_3 :named c441))
;; Success 

(assert (! __ic3_clause_11_p0 :named c442))
;; Success 

(assert (! __ic3_clause_13_p0 :named c443))
;; Success 

(assert (! __ic3_clause_9_p0 :named c444))
;; Success 

(assert (! __ic3_clause_15_p0 :named c445))
;; Success 

(assert (! __ic3_clause_5_p0 :named c446))
;; Success 

(assert (! __ic3_clause_7_p0 :named c447))
;; Success 

(assert (! __ic3_clause_19_p0 :named c448))
;; Success 

(assert (! __ic3_clause_18_p0 :named c449))
;; Success 

(assert (! __ic3_clause_17_p0 :named c450))
;; Success 

(assert (! __ic3_clause_16_p0 :named c451))
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
;;     (f157@1 0) 
;;     (f158@1 false) 
;;     (f153@1 2) 
;;     (f152@1 true) 
;;     (f151@1 true) 
;;     (f150@1 true) 
;;     (f149@1 false) 
;;     (f148@1 2) 
;;     (f147@1 1) 
;;     (f146@1 (- 1)) 
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
;;     (f103@1 true) 
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
;;     (f92@1 false) 
;;     (f154@0 false) 
;;     (f155@0 false) 
;;     (f156@0 false) 
;;     (f157@0 0) 
;;     (f158@0 false) 
;;     (f153@0 2) 
;;     (f152@0 true) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 1) 
;;     (f147@0 1) 
;;     (f146@0 (- 1)) 
;;     (f145@0 0) 
;;     (f144@0 1) 
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
  (and
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0))
    (not (> (+ (* (- 1) f144@1) 3) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c452))
;; Success 

(assert (! __ic3_fwd_prop_4 :named c453))
;; Success 

(assert (! __ic3_clause_11_p0 :named c454))
;; Success 

(assert (! __ic3_clause_13_p0 :named c455))
;; Success 

(assert (! __ic3_clause_9_p0 :named c456))
;; Success 

(assert (! __ic3_clause_15_p0 :named c457))
;; Success 

(assert (! __ic3_clause_5_p0 :named c458))
;; Success 

(assert (! __ic3_clause_7_p0 :named c459))
;; Success 

(assert (! __ic3_clause_19_p0 :named c460))
;; Success 

(assert (! __ic3_clause_18_p0 :named c461))
;; Success 

(assert (! __ic3_clause_17_p0 :named c462))
;; Success 

(assert (! __ic3_clause_16_p0 :named c463))
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
;;     (f157@1 0) 
;;     (f158@1 false) 
;;     (f153@1 2) 
;;     (f152@1 true) 
;;     (f151@1 true) 
;;     (f150@1 true) 
;;     (f149@1 false) 
;;     (f148@1 2) 
;;     (f147@1 0) 
;;     (f146@1 (- 1)) 
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
;;     (f103@1 true) 
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
;;     (f92@1 false) 
;;     (f154@0 false) 
;;     (f155@0 false) 
;;     (f156@0 false) 
;;     (f157@0 0) 
;;     (f158@0 false) 
;;     (f153@0 2) 
;;     (f152@0 true) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 1) 
;;     (f147@0 0) 
;;     (f146@0 (- 1)) 
;;     (f145@0 0) 
;;     (f144@0 2) 
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

;; partition_fwd_prop: Checking for forward propagation of clause set 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for fwd_prop 5 

(declare-fun __ic3_fwd_prop_5 () Bool)
;; Success 

(assert
 (=>
 __ic3_fwd_prop_5
 (not
  (and
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c464))
;; Success 

(assert (! __ic3_fwd_prop_5 :named c465))
;; Success 

(assert (! __ic3_clause_11_p0 :named c466))
;; Success 

(assert (! __ic3_clause_13_p0 :named c467))
;; Success 

(assert (! __ic3_clause_9_p0 :named c468))
;; Success 

(assert (! __ic3_clause_15_p0 :named c469))
;; Success 

(assert (! __ic3_clause_5_p0 :named c470))
;; Success 

(assert (! __ic3_clause_7_p0 :named c471))
;; Success 

(assert (! __ic3_clause_19_p0 :named c472))
;; Success 

(assert (! __ic3_clause_18_p0 :named c473))
;; Success 

(assert (! __ic3_clause_17_p0 :named c474))
;; Success 

(assert (! __ic3_clause_16_p0 :named c475))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_fwd_prop_5))
;; Success 

;; Deactivating activation literals for clause 

(assert (not __ic3_clause_19_p0))
;; Success 

;; Deactivating activation literals for clause 

(assert (not __ic3_clause_18_p0))
;; Success 

;; subsume_and_add: clause 11 

;; subsume_and_add: clause 13 

;; subsume_and_add: clause 9 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 63 

(declare-fun __ic3_ind_gen_63 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_63 (> (* 1 f144@1) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 64 

(declare-fun __ic3_ind_gen_64 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_64 (> (* 1 f144@0) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 65 

(declare-fun __ic3_ind_gen_65 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_65 (not (> (* 1 f144@0) 0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_64 :named c476))
;; Success 

(assert (! __ic3_frame_0 :named c477))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c478))
;; Success 

(assert (! __ic3_ind_gen_65 :named c479))
;; Success 

(assert (! __ic3_ind_gen_63 :named c480))
;; Success 

(assert (! __ic3_clause_11_p0 :named c481))
;; Success 

(assert (! __ic3_clause_13_p0 :named c482))
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

(assert (=> __ic3_ind_gen_66 (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 67 

(declare-fun __ic3_ind_gen_67 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_67 (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 68 

(declare-fun __ic3_ind_gen_68 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_68 (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_67 :named c483))
;; Success 

(assert (! __ic3_frame_0 :named c484))
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

;; subsume_and_add: clause 15 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 69 

(declare-fun __ic3_ind_gen_69 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_69 (> (* 1 f147@1) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 70 

(declare-fun __ic3_ind_gen_70 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_70 (> (* 1 f147@0) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 71 

(declare-fun __ic3_ind_gen_71 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_71 (not (> (* 1 f147@0) 0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_70 :named c485))
;; Success 

(assert (! __ic3_frame_0 :named c486))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c487))
;; Success 

(assert (! __ic3_ind_gen_71 :named c488))
;; Success 

(assert (! __ic3_ind_gen_69 :named c489))
;; Success 

(assert (! __ic3_clause_9_p0 :named c490))
;; Success 

(assert (! __ic3_clause_11_p0 :named c491))
;; Success 

(assert (! __ic3_clause_13_p0 :named c492))
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

(assert (=> __ic3_ind_gen_72 (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 73 

(declare-fun __ic3_ind_gen_73 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_73 (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 74 

(declare-fun __ic3_ind_gen_74 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_74 (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_73 :named c493))
;; Success 

(assert (! __ic3_frame_0 :named c494))
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

;; fwd_propagate: Checking for inductiveness of clauses in last frame. 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for is_ind 0 

(declare-fun __ic3_is_ind_0 () Bool)
;; Success 

(assert
 (=>
 __ic3_is_ind_0
 (not
  (and
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))))))
;; Success 

;; Checking for inductiveness of clauses 

(push 1)
;; Success 

(assert (! __ic3_is_ind_0 :named c495))
;; Success 

(assert (! __ic3_clause_5_p0 :named c496))
;; Success 

(assert (! __ic3_clause_7_p0 :named c497))
;; Success 

(assert (! __ic3_clause_17_p0 :named c498))
;; Success 

(assert (! __ic3_clause_16_p0 :named c499))
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
;;     (f152@1 false) 
;;     (f151@1 false) 
;;     (f150@1 false) 
;;     (f149@1 false) 
;;     (f148@1 2) 
;;     (f147@1 2) 
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
;;     (f104@1 0) 
;;     (f103@1 false) 
;;     (f102@1 false) 
;;     (f101@1 false) 
;;     (f100@1 true) 
;;     (f99@1 false) 
;;     (f98@1 false) 
;;     (f97@1 true) 
;;     (f96@1 true) 
;;     (f95@1 true) 
;;     (f94@1 true) 
;;     (f93@1 false) 
;;     (f92@1 false) 
;;     (f154@0 false) 
;;     (f155@0 false) 
;;     (f156@0 false) 
;;     (f157@0 1) 
;;     (f158@0 false) 
;;     (f153@0 1) 
;;     (f152@0 false) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 1) 
;;     (f147@0 1) 
;;     (f146@0 0) 
;;     (f145@0 1) 
;;     (f144@0 1) 
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
  (and
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))))))
;; Success 

;; Checking for inductiveness of clauses 

(push 1)
;; Success 

(assert (! __ic3_is_ind_1 :named c500))
;; Success 

(assert (! __ic3_clause_5_p0 :named c501))
;; Success 

(assert (! __ic3_clause_17_p0 :named c502))
;; Success 

(assert (! __ic3_clause_16_p0 :named c503))
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
;;     (f152@1 false) 
;;     (f151@1 false) 
;;     (f150@1 false) 
;;     (f149@1 false) 
;;     (f148@1 2) 
;;     (f147@1 2) 
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
;;     (f104@1 0) 
;;     (f103@1 false) 
;;     (f102@1 false) 
;;     (f101@1 false) 
;;     (f100@1 true) 
;;     (f99@1 false) 
;;     (f98@1 false) 
;;     (f97@1 true) 
;;     (f96@1 true) 
;;     (f95@1 true) 
;;     (f94@1 true) 
;;     (f93@1 false) 
;;     (f92@1 false) 
;;     (f154@0 false) 
;;     (f155@0 false) 
;;     (f156@0 false) 
;;     (f157@0 1) 
;;     (f158@0 false) 
;;     (f153@0 0) 
;;     (f152@0 false) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 1) 
;;     (f147@0 1) 
;;     (f146@0 0) 
;;     (f145@0 1) 
;;     (f144@0 1) 
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

(assert
 (=>
 __ic3_is_ind_2
 (not
  (and
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))))))
;; Success 

;; Checking for inductiveness of clauses 

(push 1)
;; Success 

(assert (! __ic3_is_ind_2 :named c504))
;; Success 

(assert (! __ic3_clause_17_p0 :named c505))
;; Success 

(assert (! __ic3_clause_16_p0 :named c506))
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
;;     (f147@1 1) 
;;     (f146@1 0) 
;;     (f145@1 1) 
;;     (f144@1 (- 1)) 
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
;;     (f148@0 1) 
;;     (f147@0 1) 
;;     (f146@0 0) 
;;     (f145@0 1) 
;;     (f144@0 (- 1)) 
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

(assert (not __ic3_is_ind_2))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for is_ind 3 

(declare-fun __ic3_is_ind_3 () Bool)
;; Success 

(assert
 (=>
 __ic3_is_ind_3
 (not
  (or
   (not f105@1)
   (not f152@1)
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (* 1 f146@1) 0))))))
;; Success 

;; Checking for inductiveness of clauses 

(push 1)
;; Success 

(assert (! __ic3_is_ind_3 :named c507))
;; Success 

(assert (! __ic3_clause_17_p0 :named c508))
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
;;     (f147@1 1) 
;;     (f146@1 1) 
;;     (f145@1 0) 
;;     (f144@1 (- 1)) 
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
;;     (f148@0 1) 
;;     (f147@0 1) 
;;     (f146@0 1) 
;;     (f145@0 0) 
;;     (f144@0 (- 1)) 
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

(assert (not __ic3_is_ind_3))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for is_ind 4 

(declare-fun __ic3_is_ind_4 () Bool)
;; Success 

(assert (=> __ic3_is_ind_4 (not true)))
;; Success 

;; Checking for inductiveness of clauses 

(push 1)
;; Success 

(assert (! __ic3_is_ind_4 :named c509))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_is_ind_4))
;; Success 

;; subsume_and_add: clause 7 

;; subsume_and_add: clause 5 

;; subsume_and_add: clause 16 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 75 

(declare-fun __ic3_ind_gen_75 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_75
 (not
  (or
   (not f152@1)
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f145@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 76 

(declare-fun __ic3_ind_gen_76 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_76
 (not
  (or
   (not f152@0)
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f145@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 77 

(declare-fun __ic3_ind_gen_77 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_77
 (or
  (not f152@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f145@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_76 :named c510))
;; Success 

(assert (! __ic3_frame_0 :named c511))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c512))
;; Success 

(assert (! __ic3_ind_gen_77 :named c513))
;; Success 

(assert (! __ic3_ind_gen_75 :named c514))
;; Success 

(assert (! __ic3_clause_5_p0 :named c515))
;; Success 

(assert (! __ic3_clause_7_p0 :named c516))
;; Success 

(check-sat)
;; Sat 

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
   (not f105@1)
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f145@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 79 

(declare-fun __ic3_ind_gen_79 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_79
 (not
  (or
   (not f105@0)
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f145@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 80 

(declare-fun __ic3_ind_gen_80 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_80
 (or
  (not f105@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f145@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_79 :named c517))
;; Success 

(assert (! __ic3_frame_0 :named c518))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c519))
;; Success 

(assert (! __ic3_ind_gen_80 :named c520))
;; Success 

(assert (! __ic3_ind_gen_78 :named c521))
;; Success 

(assert (! __ic3_clause_5_p0 :named c522))
;; Success 

(assert (! __ic3_clause_7_p0 :named c523))
;; Success 

(check-sat)
;; Sat 

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
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f145@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 82 

(declare-fun __ic3_ind_gen_82 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_82
 (not
  (or
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f145@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 83 

(declare-fun __ic3_ind_gen_83 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_83
 (or
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f145@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_82 :named c524))
;; Success 

(assert (! __ic3_frame_0 :named c525))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c526))
;; Success 

(assert (! __ic3_ind_gen_83 :named c527))
;; Success 

(assert (! __ic3_ind_gen_81 :named c528))
;; Success 

(assert (! __ic3_clause_5_p0 :named c529))
;; Success 

(assert (! __ic3_clause_7_p0 :named c530))
;; Success 

(check-sat)
;; Sat 

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
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f145@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 85 

(declare-fun __ic3_ind_gen_85 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_85
 (not
  (or
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f145@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 86 

(declare-fun __ic3_ind_gen_86 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_86
 (or
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f145@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_85 :named c531))
;; Success 

(assert (! __ic3_frame_0 :named c532))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c533))
;; Success 

(assert (! __ic3_ind_gen_86 :named c534))
;; Success 

(assert (! __ic3_ind_gen_84 :named c535))
;; Success 

(assert (! __ic3_clause_5_p0 :named c536))
;; Success 

(assert (! __ic3_clause_7_p0 :named c537))
;; Success 

(check-sat)
;; Sat 

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
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f145@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 88 

(declare-fun __ic3_ind_gen_88 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_88
 (not
  (or
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f145@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 89 

(declare-fun __ic3_ind_gen_89 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_89
 (or
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f145@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_88 :named c538))
;; Success 

(assert (! __ic3_frame_0 :named c539))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c540))
;; Success 

(assert (! __ic3_ind_gen_89 :named c541))
;; Success 

(assert (! __ic3_ind_gen_87 :named c542))
;; Success 

(assert (! __ic3_clause_5_p0 :named c543))
;; Success 

(assert (! __ic3_clause_7_p0 :named c544))
;; Success 

(check-sat)
;; Sat 

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
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f145@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 91 

(declare-fun __ic3_ind_gen_91 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_91
 (not
  (or
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f145@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 92 

(declare-fun __ic3_ind_gen_92 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_92
 (or
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f145@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_91 :named c545))
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

(assert (! __ic3_ind_gen_92 :named c548))
;; Success 

(assert (! __ic3_ind_gen_90 :named c549))
;; Success 

(assert (! __ic3_clause_5_p0 :named c550))
;; Success 

(assert (! __ic3_clause_7_p0 :named c551))
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

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 93 

(declare-fun __ic3_ind_gen_93 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_93
 (not
  (or
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (* 1 f145@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 94 

(declare-fun __ic3_ind_gen_94 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_94
 (not
  (or
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (* 1 f145@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 95 

(declare-fun __ic3_ind_gen_95 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_95
 (or
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (* 1 f145@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_94 :named c552))
;; Success 

(assert (! __ic3_frame_0 :named c553))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c554))
;; Success 

(assert (! __ic3_ind_gen_95 :named c555))
;; Success 

(assert (! __ic3_ind_gen_93 :named c556))
;; Success 

(assert (! __ic3_clause_5_p0 :named c557))
;; Success 

(assert (! __ic3_clause_7_p0 :named c558))
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
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 97 

(declare-fun __ic3_ind_gen_97 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_97
 (not
  (or
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 98 

(declare-fun __ic3_ind_gen_98 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_98
 (or
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_97 :named c559))
;; Success 

(assert (! __ic3_frame_0 :named c560))
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

;; subsume_and_add: clause 17 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 99 

(declare-fun __ic3_ind_gen_99 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_99
 (not
  (or
   (not f152@1)
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (* 1 f146@1) 0))))))
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
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (* 1 f146@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 101 

(declare-fun __ic3_ind_gen_101 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_101
 (or
  (not f152@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (* 1 f146@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_100 :named c561))
;; Success 

(assert (! __ic3_frame_0 :named c562))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c563))
;; Success 

(assert (! __ic3_ind_gen_101 :named c564))
;; Success 

(assert (! __ic3_ind_gen_99 :named c565))
;; Success 

(assert (! __ic3_clause_16_p0 :named c566))
;; Success 

(assert (! __ic3_clause_5_p0 :named c567))
;; Success 

(assert (! __ic3_clause_7_p0 :named c568))
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
   (not f105@1)
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (* 1 f146@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 103 

(declare-fun __ic3_ind_gen_103 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_103
 (not
  (or
   (not f105@0)
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (* 1 f146@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 104 

(declare-fun __ic3_ind_gen_104 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_104
 (or
  (not f105@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (* 1 f146@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_103 :named c569))
;; Success 

(assert (! __ic3_frame_0 :named c570))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c571))
;; Success 

(assert (! __ic3_ind_gen_104 :named c572))
;; Success 

(assert (! __ic3_ind_gen_102 :named c573))
;; Success 

(assert (! __ic3_clause_16_p0 :named c574))
;; Success 

(assert (! __ic3_clause_5_p0 :named c575))
;; Success 

(assert (! __ic3_clause_7_p0 :named c576))
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
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (* 1 f146@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 106 

(declare-fun __ic3_ind_gen_106 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_106
 (not
  (or
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (* 1 f146@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 107 

(declare-fun __ic3_ind_gen_107 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_107
 (or
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (* 1 f146@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_106 :named c577))
;; Success 

(assert (! __ic3_frame_0 :named c578))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c579))
;; Success 

(assert (! __ic3_ind_gen_107 :named c580))
;; Success 

(assert (! __ic3_ind_gen_105 :named c581))
;; Success 

(assert (! __ic3_clause_16_p0 :named c582))
;; Success 

(assert (! __ic3_clause_5_p0 :named c583))
;; Success 

(assert (! __ic3_clause_7_p0 :named c584))
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
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (* 1 f146@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 109 

(declare-fun __ic3_ind_gen_109 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_109
 (not
  (or
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (* 1 f146@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 110 

(declare-fun __ic3_ind_gen_110 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_110
 (or
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (* 1 f146@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_109 :named c585))
;; Success 

(assert (! __ic3_frame_0 :named c586))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c587))
;; Success 

(assert (! __ic3_ind_gen_110 :named c588))
;; Success 

(assert (! __ic3_ind_gen_108 :named c589))
;; Success 

(assert (! __ic3_clause_16_p0 :named c590))
;; Success 

(assert (! __ic3_clause_5_p0 :named c591))
;; Success 

(assert (! __ic3_clause_7_p0 :named c592))
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
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (* 1 f146@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 112 

(declare-fun __ic3_ind_gen_112 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_112
 (not
  (or
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (* 1 f146@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 113 

(declare-fun __ic3_ind_gen_113 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_113
 (or
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (* 1 f146@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_112 :named c593))
;; Success 

(assert (! __ic3_frame_0 :named c594))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c595))
;; Success 

(assert (! __ic3_ind_gen_113 :named c596))
;; Success 

(assert (! __ic3_ind_gen_111 :named c597))
;; Success 

(assert (! __ic3_clause_16_p0 :named c598))
;; Success 

(assert (! __ic3_clause_5_p0 :named c599))
;; Success 

(assert (! __ic3_clause_7_p0 :named c600))
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
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (* 1 f146@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 115 

(declare-fun __ic3_ind_gen_115 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_115
 (not
  (or
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (* 1 f146@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 116 

(declare-fun __ic3_ind_gen_116 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_116
 (or
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (* 1 f146@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_115 :named c601))
;; Success 

(assert (! __ic3_frame_0 :named c602))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c603))
;; Success 

(assert (! __ic3_ind_gen_116 :named c604))
;; Success 

(assert (! __ic3_ind_gen_114 :named c605))
;; Success 

(assert (! __ic3_clause_16_p0 :named c606))
;; Success 

(assert (! __ic3_clause_5_p0 :named c607))
;; Success 

(assert (! __ic3_clause_7_p0 :named c608))
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
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (* 1 f146@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 118 

(declare-fun __ic3_ind_gen_118 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_118
 (not
  (or
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (* 1 f146@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 119 

(declare-fun __ic3_ind_gen_119 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_119
 (or
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (* 1 f146@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_118 :named c609))
;; Success 

(assert (! __ic3_frame_0 :named c610))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c611))
;; Success 

(assert (! __ic3_ind_gen_119 :named c612))
;; Success 

(assert (! __ic3_ind_gen_117 :named c613))
;; Success 

(assert (! __ic3_clause_16_p0 :named c614))
;; Success 

(assert (! __ic3_clause_5_p0 :named c615))
;; Success 

(assert (! __ic3_clause_7_p0 :named c616))
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
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (* 1 f146@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 121 

(declare-fun __ic3_ind_gen_121 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_121
 (not
  (or
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (* 1 f146@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 122 

(declare-fun __ic3_ind_gen_122 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_122
 (or
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (* 1 f146@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_121 :named c617))
;; Success 

(assert (! __ic3_frame_0 :named c618))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c619))
;; Success 

(assert (! __ic3_ind_gen_122 :named c620))
;; Success 

(assert (! __ic3_ind_gen_120 :named c621))
;; Success 

(assert (! __ic3_clause_16_p0 :named c622))
;; Success 

(assert (! __ic3_clause_5_p0 :named c623))
;; Success 

(assert (! __ic3_clause_7_p0 :named c624))
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
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 124 

(declare-fun __ic3_ind_gen_124 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_124
 (not
  (or
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 125 

(declare-fun __ic3_ind_gen_125 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_125
 (or
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_124 :named c625))
;; Success 

(assert (! __ic3_frame_0 :named c626))
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

;; check_frames: frames k to 1 
;;  
;; Frame: 
;; 16 
;; 17 
;; 5 
;; 7 
;;  
;; Frame: 
;; 9 
;; 15 
;; 11 
;; 13 

;; check_frames: Does R_2 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c627))
;; Success 

(assert (! __ic3_clause_16_p0 :named c628))
;; Success 

(assert (! __ic3_clause_17_p0 :named c629))
;; Success 

(assert (! __ic3_clause_5_p0 :named c630))
;; Success 

(assert (! __ic3_clause_7_p0 :named c631))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(declare-fun __ic3_clause_16_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_16_n0_0 f105@0))
;; Success 

(declare-fun __ic3_clause_16_n0_1 () Bool)
;; Success 

(assert (=> __ic3_clause_16_n0_1 f152@0))
;; Success 

(declare-fun __ic3_clause_16_n0_2 () Bool)
;; Success 

(assert (=> __ic3_clause_16_n0_2 (> (+ (* (- 1) f144@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_16_n0_3 () Bool)
;; Success 

(assert (=> __ic3_clause_16_n0_3 (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0)))
;; Success 

(declare-fun __ic3_clause_16_n0_4 () Bool)
;; Success 

(assert (=> __ic3_clause_16_n0_4 (> (+ (* (- 1) f144@0) 2) 0)))
;; Success 

(declare-fun __ic3_clause_16_n0_5 () Bool)
;; Success 

(assert (=> __ic3_clause_16_n0_5 (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_16_n0_6 () Bool)
;; Success 

(assert (=> __ic3_clause_16_n0_6 (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_16_n0_7 () Bool)
;; Success 

(assert (=> __ic3_clause_16_n0_7 (> (* 1 f145@0) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c632))
;; Success 

(assert (! __ic3_clause_16_n0_0 :named c633))
;; Success 

(assert (! __ic3_clause_16_n0_1 :named c634))
;; Success 

(assert (! __ic3_clause_16_n0_2 :named c635))
;; Success 

(assert (! __ic3_clause_16_n0_3 :named c636))
;; Success 

(assert (! __ic3_clause_16_n0_4 :named c637))
;; Success 

(assert (! __ic3_clause_16_n0_5 :named c638))
;; Success 

(assert (! __ic3_clause_16_n0_6 :named c639))
;; Success 

(assert (! __ic3_clause_16_n0_7 :named c640))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(declare-fun __ic3_clause_17_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_17_n0_0 f105@0))
;; Success 

(declare-fun __ic3_clause_17_n0_1 () Bool)
;; Success 

(assert (=> __ic3_clause_17_n0_1 f152@0))
;; Success 

(declare-fun __ic3_clause_17_n0_2 () Bool)
;; Success 

(assert (=> __ic3_clause_17_n0_2 (> (+ (* (- 1) f144@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_17_n0_3 () Bool)
;; Success 

(assert (=> __ic3_clause_17_n0_3 (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0)))
;; Success 

(declare-fun __ic3_clause_17_n0_4 () Bool)
;; Success 

(assert (=> __ic3_clause_17_n0_4 (> (+ (* (- 1) f144@0) 2) 0)))
;; Success 

(declare-fun __ic3_clause_17_n0_5 () Bool)
;; Success 

(assert (=> __ic3_clause_17_n0_5 (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_17_n0_6 () Bool)
;; Success 

(assert (=> __ic3_clause_17_n0_6 (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_17_n0_7 () Bool)
;; Success 

(assert (=> __ic3_clause_17_n0_7 (> (+ (* (- 1) f145@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_17_n0_8 () Bool)
;; Success 

(assert (=> __ic3_clause_17_n0_8 (> (* 1 f146@0) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c641))
;; Success 

(assert (! __ic3_clause_17_n0_0 :named c642))
;; Success 

(assert (! __ic3_clause_17_n0_1 :named c643))
;; Success 

(assert (! __ic3_clause_17_n0_2 :named c644))
;; Success 

(assert (! __ic3_clause_17_n0_3 :named c645))
;; Success 

(assert (! __ic3_clause_17_n0_4 :named c646))
;; Success 

(assert (! __ic3_clause_17_n0_5 :named c647))
;; Success 

(assert (! __ic3_clause_17_n0_6 :named c648))
;; Success 

(assert (! __ic3_clause_17_n0_7 :named c649))
;; Success 

(assert (! __ic3_clause_17_n0_8 :named c650))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c651))
;; Success 

(assert (! __ic3_clause_5_n0_0 :named c652))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c653))
;; Success 

(assert (! __ic3_clause_7_n0_0 :named c654))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_1 & T |= R_2 hold? 

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
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_9 :named c655))
;; Success 

(assert (! __ic3_clause_3_p0 :named c656))
;; Success 

(assert (! __ic3_clause_16_p0 :named c657))
;; Success 

(assert (! __ic3_clause_17_p0 :named c658))
;; Success 

(assert (! __ic3_clause_5_p0 :named c659))
;; Success 

(assert (! __ic3_clause_7_p0 :named c660))
;; Success 

(assert (! __ic3_clause_9_p0 :named c661))
;; Success 

(assert (! __ic3_clause_15_p0 :named c662))
;; Success 

(assert (! __ic3_clause_11_p0 :named c663))
;; Success 

(assert (! __ic3_clause_13_p0 :named c664))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_9))
;; Success 

;; check_frames: Does R_1 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c665))
;; Success 

(assert (! __ic3_clause_9_p0 :named c666))
;; Success 

(assert (! __ic3_clause_15_p0 :named c667))
;; Success 

(assert (! __ic3_clause_11_p0 :named c668))
;; Success 

(assert (! __ic3_clause_13_p0 :named c669))
;; Success 

(assert (! __ic3_clause_16_p0 :named c670))
;; Success 

(assert (! __ic3_clause_17_p0 :named c671))
;; Success 

(assert (! __ic3_clause_5_p0 :named c672))
;; Success 

(assert (! __ic3_clause_7_p0 :named c673))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c674))
;; Success 

(assert (! __ic3_clause_9_n0_0 :named c675))
;; Success 

(assert (! __ic3_clause_9_n0_1 :named c676))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c677))
;; Success 

(assert (! __ic3_clause_15_n0_0 :named c678))
;; Success 

(assert (! __ic3_clause_15_n0_1 :named c679))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c680))
;; Success 

(assert (! __ic3_clause_11_n0_0 :named c681))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c682))
;; Success 

(assert (! __ic3_clause_13_n0_0 :named c683))
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
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (not (> (* 1 f145@1) 0))
   (not (> (* 1 f146@1) 0))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_10 :named c684))
;; Success 

(assert (! __ic3_frame_0 :named c685))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_10))
;; Success 

;; block: Check if all successors of frontier R_2 are safe. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c686))
;; Success 

(assert (! __ic3_clause_3_n1_0 :named c687))
;; Success 

(assert (! __ic3_clause_16_p0 :named c688))
;; Success 

(assert (! __ic3_clause_17_p0 :named c689))
;; Success 

(assert (! __ic3_clause_5_p0 :named c690))
;; Success 

(assert (! __ic3_clause_7_p0 :named c691))
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
;;     (f146@1 (- 1)) 
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
;;     (f103@1 true) 
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
;;     (f148@0 1) 
;;     (f147@0 0) 
;;     (f146@0 (- 1)) 
;;     (f145@0 0) 
;;     (f144@0 2) 
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
;; #20 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_0@0) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 3) 0))} 

;; block: Is blocking clause relative inductive to R_1? 

(declare-fun __ic3_clause_20_n1_0 () Bool)
;; Success 

(assert (=> __ic3_clause_20_n1_0 f105@1))
;; Success 

(declare-fun __ic3_clause_20_n1_1 () Bool)
;; Success 

(assert (=> __ic3_clause_20_n1_1 f152@1))
;; Success 

(declare-fun __ic3_clause_20_n1_2 () Bool)
;; Success 

(assert (=> __ic3_clause_20_n1_2 (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0)))
;; Success 

(declare-fun __ic3_clause_20_n1_3 () Bool)
;; Success 

(assert (=> __ic3_clause_20_n1_3 (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_20_n1_4 () Bool)
;; Success 

(assert (=> __ic3_clause_20_n1_4 (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_20_n1_5 () Bool)
;; Success 

(assert (=> __ic3_clause_20_n1_5 (> (* 1 f144@1) 0)))
;; Success 

(declare-fun __ic3_clause_20_n1_6 () Bool)
;; Success 

(assert (=> __ic3_clause_20_n1_6 (> (+ (* (- 1) f144@1) 3) 0)))
;; Success 

(declare-fun __ic3_clause_20_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_20_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f144@0) 0))
  (not (> (+ (* (- 1) f144@0) 3) 0)))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_20_p0 :named c692))
;; Success 

(assert (! __ic3_clause_20_n1_0 :named c693))
;; Success 

(assert (! __ic3_clause_20_n1_1 :named c694))
;; Success 

(assert (! __ic3_clause_20_n1_2 :named c695))
;; Success 

(assert (! __ic3_clause_20_n1_3 :named c696))
;; Success 

(assert (! __ic3_clause_20_n1_4 :named c697))
;; Success 

(assert (! __ic3_clause_20_n1_5 :named c698))
;; Success 

(assert (! __ic3_clause_20_n1_6 :named c699))
;; Success 

(assert (! __ic3_clause_16_p0 :named c700))
;; Success 

(assert (! __ic3_clause_17_p0 :named c701))
;; Success 

(assert (! __ic3_clause_5_p0 :named c702))
;; Success 

(assert (! __ic3_clause_7_p0 :named c703))
;; Success 

(assert (! __ic3_clause_3_p0 :named c704))
;; Success 

(assert (! __ic3_clause_9_p0 :named c705))
;; Success 

(assert (! __ic3_clause_15_p0 :named c706))
;; Success 

(assert (! __ic3_clause_11_p0 :named c707))
;; Success 

(assert (! __ic3_clause_13_p0 :named c708))
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
;;     (f148@1 2) 
;;     (f147@1 0) 
;;     (f146@1 (- 1)) 
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
;;     (f103@1 true) 
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
;;     (f148@0 1) 
;;     (f147@0 0) 
;;     (f146@0 (- 1)) 
;;     (f145@0 0) 
;;     (f144@0 2) 
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

;; New clause at depth 1 to block #20: 
;; #21 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_0@0) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 3) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_1@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_2@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 4) 0)); 
;;      (not (> (+ (* 1 top.res.abs_0@0) (- 1)) 0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 0) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0)) 0))} 

;; block: Is blocking clause relative inductive to R_0? 

(declare-fun __ic3_clause_21_n1_0 () Bool)
;; Success 

(assert (=> __ic3_clause_21_n1_0 f105@1))
;; Success 

(declare-fun __ic3_clause_21_n1_1 () Bool)
;; Success 

(assert (=> __ic3_clause_21_n1_1 f152@1))
;; Success 

(declare-fun __ic3_clause_21_n1_2 () Bool)
;; Success 

(assert (=> __ic3_clause_21_n1_2 (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0)))
;; Success 

(declare-fun __ic3_clause_21_n1_3 () Bool)
;; Success 

(assert (=> __ic3_clause_21_n1_3 (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_21_n1_4 () Bool)
;; Success 

(assert (=> __ic3_clause_21_n1_4 (> (* 1 f144@1) 0)))
;; Success 

(declare-fun __ic3_clause_21_n1_5 () Bool)
;; Success 

(assert (=> __ic3_clause_21_n1_5 (> (+ (* (- 1) f144@1) 3) 0)))
;; Success 

(declare-fun __ic3_clause_21_n1_6 () Bool)
;; Success 

(assert (=> __ic3_clause_21_n1_6 (> (+ (* (- 1) f145@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_21_n1_7 () Bool)
;; Success 

(assert (=> __ic3_clause_21_n1_7 (> (+ (* (- 1) f146@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_21_n1_8 () Bool)
;; Success 

(assert (=> __ic3_clause_21_n1_8 (> (+ (* (- 1) f144@1) 4) 0)))
;; Success 

(declare-fun __ic3_clause_21_n1_9 () Bool)
;; Success 

(assert (=> __ic3_clause_21_n1_9 (> (+ (* 1 f144@1) (- 1)) 0)))
;; Success 

(declare-fun __ic3_clause_21_n1_10 () Bool)
;; Success 

(assert (=> __ic3_clause_21_n1_10 (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0)))
;; Success 

(declare-fun __ic3_clause_21_n1_11 () Bool)
;; Success 

(assert (=> __ic3_clause_21_n1_11 (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0)))
;; Success 

(declare-fun __ic3_clause_21_n1_12 () Bool)
;; Success 

(assert (=> __ic3_clause_21_n1_12 (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0)))
;; Success 

(declare-fun __ic3_clause_21_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_21_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (* 1 f144@0) 0))
  (not (> (+ (* (- 1) f144@0) 3) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 4) 0))
  (not (> (+ (* 1 f144@0) (- 1)) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0)))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_21_p0 :named c709))
;; Success 

(assert (! __ic3_clause_21_n1_0 :named c710))
;; Success 

(assert (! __ic3_clause_21_n1_1 :named c711))
;; Success 

(assert (! __ic3_clause_21_n1_2 :named c712))
;; Success 

(assert (! __ic3_clause_21_n1_3 :named c713))
;; Success 

(assert (! __ic3_clause_21_n1_4 :named c714))
;; Success 

(assert (! __ic3_clause_21_n1_5 :named c715))
;; Success 

(assert (! __ic3_clause_21_n1_6 :named c716))
;; Success 

(assert (! __ic3_clause_21_n1_7 :named c717))
;; Success 

(assert (! __ic3_clause_21_n1_8 :named c718))
;; Success 

(assert (! __ic3_clause_21_n1_9 :named c719))
;; Success 

(assert (! __ic3_clause_21_n1_10 :named c720))
;; Success 

(assert (! __ic3_clause_21_n1_11 :named c721))
;; Success 

(assert (! __ic3_clause_21_n1_12 :named c722))
;; Success 

(assert (! __ic3_frame_0 :named c723))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c711 c714 c719 c723) 

(pop 1)
;; Success 

;; block: Check I |= C to get unsat core. 

(declare-fun __ic3_clause_21_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_21_n0_0 f105@0))
;; Success 

(declare-fun __ic3_clause_21_n0_1 () Bool)
;; Success 

(assert (=> __ic3_clause_21_n0_1 f152@0))
;; Success 

(declare-fun __ic3_clause_21_n0_2 () Bool)
;; Success 

(assert (=> __ic3_clause_21_n0_2 (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0)))
;; Success 

(declare-fun __ic3_clause_21_n0_3 () Bool)
;; Success 

(assert (=> __ic3_clause_21_n0_3 (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_21_n0_4 () Bool)
;; Success 

(assert (=> __ic3_clause_21_n0_4 (> (* 1 f144@0) 0)))
;; Success 

(declare-fun __ic3_clause_21_n0_5 () Bool)
;; Success 

(assert (=> __ic3_clause_21_n0_5 (> (+ (* (- 1) f144@0) 3) 0)))
;; Success 

(declare-fun __ic3_clause_21_n0_6 () Bool)
;; Success 

(assert (=> __ic3_clause_21_n0_6 (> (+ (* (- 1) f145@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_21_n0_7 () Bool)
;; Success 

(assert (=> __ic3_clause_21_n0_7 (> (+ (* (- 1) f146@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_21_n0_8 () Bool)
;; Success 

(assert (=> __ic3_clause_21_n0_8 (> (+ (* (- 1) f144@0) 4) 0)))
;; Success 

(declare-fun __ic3_clause_21_n0_9 () Bool)
;; Success 

(assert (=> __ic3_clause_21_n0_9 (> (+ (* 1 f144@0) (- 1)) 0)))
;; Success 

(declare-fun __ic3_clause_21_n0_10 () Bool)
;; Success 

(assert (=> __ic3_clause_21_n0_10 (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0)))
;; Success 

(declare-fun __ic3_clause_21_n0_11 () Bool)
;; Success 

(assert (=> __ic3_clause_21_n0_11 (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0)))
;; Success 

(declare-fun __ic3_clause_21_n0_12 () Bool)
;; Success 

(assert (=> __ic3_clause_21_n0_12 (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c724))
;; Success 

(assert (! __ic3_clause_21_n0_0 :named c725))
;; Success 

(assert (! __ic3_clause_21_n0_1 :named c726))
;; Success 

(assert (! __ic3_clause_21_n0_2 :named c727))
;; Success 

(assert (! __ic3_clause_21_n0_3 :named c728))
;; Success 

(assert (! __ic3_clause_21_n0_4 :named c729))
;; Success 

(assert (! __ic3_clause_21_n0_5 :named c730))
;; Success 

(assert (! __ic3_clause_21_n0_6 :named c731))
;; Success 

(assert (! __ic3_clause_21_n0_7 :named c732))
;; Success 

(assert (! __ic3_clause_21_n0_8 :named c733))
;; Success 

(assert (! __ic3_clause_21_n0_9 :named c734))
;; Success 

(assert (! __ic3_clause_21_n0_10 :named c735))
;; Success 

(assert (! __ic3_clause_21_n0_11 :named c736))
;; Success 

(assert (! __ic3_clause_21_n0_12 :named c737))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c729 c724) 

(pop 1)
;; Success 

;; block: Reduced clause 
;; (or 
;;  (not top.usr.OK@0) 
;;  (not top.res.abs_8@0) 
;;  (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)) 
;;  (not (> (* 1 top.res.abs_0@0) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_0@0) 3) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_1@0) 1) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_2@0) 1) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_0@0) 4) 0)) 
;;  (not (> (+ (* 1 top.res.abs_0@0) (- 1)) 0)) 
;;  (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 2) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 0) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0)) 0))) 
;; with unsat core to 
;; (or 
;;  (not (> (+ (* 1 top.res.abs_0@0) (- 1)) 0)) 
;;  (not (> (* 1 top.res.abs_0@0) 0)) 
;;  (not top.res.abs_8@0)) 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 126 

(declare-fun __ic3_ind_gen_126 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_126 (not (or (not (> (* 1 f144@1) 0)) (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 127 

(declare-fun __ic3_ind_gen_127 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_127 (not (or (not (> (* 1 f144@0) 0)) (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 128 

(declare-fun __ic3_ind_gen_128 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_128 (or (not (> (* 1 f144@0) 0)) (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_127 :named c738))
;; Success 

(assert (! __ic3_frame_0 :named c739))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c740))
;; Success 

(assert (! __ic3_ind_gen_128 :named c741))
;; Success 

(assert (! __ic3_ind_gen_126 :named c742))
;; Success 

(assert (! __ic3_frame_0 :named c743))
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
 (not (or (not (> (+ (* 1 f144@1) (- 1)) 0)) (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 130 

(declare-fun __ic3_ind_gen_130 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_130
 (not (or (not (> (+ (* 1 f144@0) (- 1)) 0)) (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 131 

(declare-fun __ic3_ind_gen_131 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_131 (or (not (> (+ (* 1 f144@0) (- 1)) 0)) (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_130 :named c744))
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

(assert (! __ic3_ind_gen_131 :named c747))
;; Success 

(assert (! __ic3_ind_gen_129 :named c748))
;; Success 

(assert (! __ic3_frame_0 :named c749))
;; Success 

(check-sat)
;; Unsat 

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

(assert (=> __ic3_ind_gen_132 (> (+ (* 1 f144@1) (- 1)) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 133 

(declare-fun __ic3_ind_gen_133 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_133 (> (+ (* 1 f144@0) (- 1)) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 134 

(declare-fun __ic3_ind_gen_134 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_134 (not (> (+ (* 1 f144@0) (- 1)) 0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_133 :named c750))
;; Success 

(assert (! __ic3_frame_0 :named c751))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c752))
;; Success 

(assert (! __ic3_ind_gen_134 :named c753))
;; Success 

(assert (! __ic3_ind_gen_132 :named c754))
;; Success 

(assert (! __ic3_frame_0 :named c755))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_134))
;; Success 

(assert (not __ic3_ind_gen_133))
;; Success 

(assert (not __ic3_ind_gen_132))
;; Success 

;; ind_generalize: Dropped 12 literals from clause. 

;; Deactivating activation literals for clause 

(assert (not __ic3_clause_21_p0))
;; Success 

(assert (not __ic3_clause_21_n0_0))
;; Success 

(assert (not __ic3_clause_21_n0_1))
;; Success 

(assert (not __ic3_clause_21_n0_2))
;; Success 

(assert (not __ic3_clause_21_n0_3))
;; Success 

(assert (not __ic3_clause_21_n0_4))
;; Success 

(assert (not __ic3_clause_21_n0_5))
;; Success 

(assert (not __ic3_clause_21_n0_6))
;; Success 

(assert (not __ic3_clause_21_n0_7))
;; Success 

(assert (not __ic3_clause_21_n0_8))
;; Success 

(assert (not __ic3_clause_21_n0_9))
;; Success 

(assert (not __ic3_clause_21_n0_10))
;; Success 

(assert (not __ic3_clause_21_n0_11))
;; Success 

(assert (not __ic3_clause_21_n0_12))
;; Success 

(assert (not __ic3_clause_21_n1_0))
;; Success 

(assert (not __ic3_clause_21_n1_1))
;; Success 

(assert (not __ic3_clause_21_n1_2))
;; Success 

(assert (not __ic3_clause_21_n1_3))
;; Success 

(assert (not __ic3_clause_21_n1_4))
;; Success 

(assert (not __ic3_clause_21_n1_5))
;; Success 

(assert (not __ic3_clause_21_n1_6))
;; Success 

(assert (not __ic3_clause_21_n1_7))
;; Success 

(assert (not __ic3_clause_21_n1_8))
;; Success 

(assert (not __ic3_clause_21_n1_9))
;; Success 

(assert (not __ic3_clause_21_n1_10))
;; Success 

(assert (not __ic3_clause_21_n1_11))
;; Success 

(assert (not __ic3_clause_21_n1_12))
;; Success 

;; New clause from inductive generalization of #21: 
;; #22 {(not (> (+ (* 1 top.res.abs_0@0) (- 1)) 0))} 

;; block: Reduced clause 
;; (or 
;;  (not (> (+ (* 1 top.res.abs_0@0) (- 1)) 0)) 
;;  (not (> (* 1 top.res.abs_0@0) 0)) 
;;  (not top.res.abs_8@0)) 
;; with ind. gen. to 
;; (not (> (+ (* 1 top.res.abs_0@0) (- 1)) 0)) 

;; Copied clause #21 for blocking at depth 0: 
;; #23 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_0@0) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 3) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_1@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_2@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 4) 0)); 
;;      (not (> (+ (* 1 top.res.abs_0@0) (- 1)) 0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 0) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0)) 0))} 

(declare-fun __ic3_clause_22_p0 () Bool)
;; Success 

(assert (=> __ic3_clause_22_p0 (not (> (+ (* 1 f144@0) (- 1)) 0))))
;; Success 

;; check_frames: frames k to 1 
;;  
;; Frame: 
;; 9 
;; 15 
;; 11 
;; 13 
;; 22 

;; check_frames: Does R_1 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c756))
;; Success 

(assert (! __ic3_clause_9_p0 :named c757))
;; Success 

(assert (! __ic3_clause_15_p0 :named c758))
;; Success 

(assert (! __ic3_clause_11_p0 :named c759))
;; Success 

(assert (! __ic3_clause_13_p0 :named c760))
;; Success 

(assert (! __ic3_clause_22_p0 :named c761))
;; Success 

(assert (! __ic3_clause_16_p0 :named c762))
;; Success 

(assert (! __ic3_clause_17_p0 :named c763))
;; Success 

(assert (! __ic3_clause_5_p0 :named c764))
;; Success 

(assert (! __ic3_clause_7_p0 :named c765))
;; Success 

(assert (! __ic3_clause_9_p0 :named c766))
;; Success 

(assert (! __ic3_clause_15_p0 :named c767))
;; Success 

(assert (! __ic3_clause_11_p0 :named c768))
;; Success 

(assert (! __ic3_clause_13_p0 :named c769))
;; Success 

(assert (! __ic3_clause_22_p0 :named c770))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c771))
;; Success 

(assert (! __ic3_clause_9_n0_0 :named c772))
;; Success 

(assert (! __ic3_clause_9_n0_1 :named c773))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c774))
;; Success 

(assert (! __ic3_clause_15_n0_0 :named c775))
;; Success 

(assert (! __ic3_clause_15_n0_1 :named c776))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c777))
;; Success 

(assert (! __ic3_clause_11_n0_0 :named c778))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c779))
;; Success 

(assert (! __ic3_clause_13_n0_0 :named c780))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(declare-fun __ic3_clause_22_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_22_n0_0 (> (+ (* 1 f144@0) (- 1)) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c781))
;; Success 

(assert (! __ic3_clause_22_n0_0 :named c782))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_0 & T |= R_1 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 11 

(declare-fun __ic3_check_frames_11 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_11
 (not
  (and
   f105@1
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (not (> (* 1 f145@1) 0))
   (not (> (* 1 f146@1) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (not (> (* 1 f145@1) 0))
   (not (> (* 1 f146@1) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_11 :named c783))
;; Success 

(assert (! __ic3_frame_0 :named c784))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_11))
;; Success 

;; block: All counterexamples blocked in R_1 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 135 

(declare-fun __ic3_ind_gen_135 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_135
 (not
  (or
   (not f152@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (* 1 f144@1) 0))
   (not (> (+ (* (- 1) f144@1) 3) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 4) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 136 

(declare-fun __ic3_ind_gen_136 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_136
 (not
  (or
   (not f152@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (* 1 f144@0) 0))
   (not (> (+ (* (- 1) f144@0) 3) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 4) 0))
   (not (> (+ (* 1 f144@0) (- 1)) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 137 

(declare-fun __ic3_ind_gen_137 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_137
 (or
  (not f152@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (* 1 f144@0) 0))
  (not (> (+ (* (- 1) f144@0) 3) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 4) 0))
  (not (> (+ (* 1 f144@0) (- 1)) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_136 :named c785))
;; Success 

(assert (! __ic3_frame_0 :named c786))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c787))
;; Success 

(assert (! __ic3_ind_gen_137 :named c788))
;; Success 

(assert (! __ic3_ind_gen_135 :named c789))
;; Success 

(assert (! __ic3_clause_16_p0 :named c790))
;; Success 

(assert (! __ic3_clause_17_p0 :named c791))
;; Success 

(assert (! __ic3_clause_5_p0 :named c792))
;; Success 

(assert (! __ic3_clause_7_p0 :named c793))
;; Success 

(assert (! __ic3_clause_3_p0 :named c794))
;; Success 

(assert (! __ic3_clause_9_p0 :named c795))
;; Success 

(assert (! __ic3_clause_15_p0 :named c796))
;; Success 

(assert (! __ic3_clause_11_p0 :named c797))
;; Success 

(assert (! __ic3_clause_13_p0 :named c798))
;; Success 

(assert (! __ic3_clause_22_p0 :named c799))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_137))
;; Success 

(assert (not __ic3_ind_gen_136))
;; Success 

(assert (not __ic3_ind_gen_135))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 138 

(declare-fun __ic3_ind_gen_138 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_138
 (not
  (or
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (* 1 f144@1) 0))
   (not (> (+ (* (- 1) f144@1) 3) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 4) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 139 

(declare-fun __ic3_ind_gen_139 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_139
 (not
  (or
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (* 1 f144@0) 0))
   (not (> (+ (* (- 1) f144@0) 3) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 4) 0))
   (not (> (+ (* 1 f144@0) (- 1)) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 140 

(declare-fun __ic3_ind_gen_140 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_140
 (or
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (* 1 f144@0) 0))
  (not (> (+ (* (- 1) f144@0) 3) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 4) 0))
  (not (> (+ (* 1 f144@0) (- 1)) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_139 :named c800))
;; Success 

(assert (! __ic3_frame_0 :named c801))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c802))
;; Success 

(assert (! __ic3_ind_gen_140 :named c803))
;; Success 

(assert (! __ic3_ind_gen_138 :named c804))
;; Success 

(assert (! __ic3_clause_16_p0 :named c805))
;; Success 

(assert (! __ic3_clause_17_p0 :named c806))
;; Success 

(assert (! __ic3_clause_5_p0 :named c807))
;; Success 

(assert (! __ic3_clause_7_p0 :named c808))
;; Success 

(assert (! __ic3_clause_3_p0 :named c809))
;; Success 

(assert (! __ic3_clause_9_p0 :named c810))
;; Success 

(assert (! __ic3_clause_15_p0 :named c811))
;; Success 

(assert (! __ic3_clause_11_p0 :named c812))
;; Success 

(assert (! __ic3_clause_13_p0 :named c813))
;; Success 

(assert (! __ic3_clause_22_p0 :named c814))
;; Success 

(check-sat)
;; Unsat 

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
 (not
  (or
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (* 1 f144@1) 0))
   (not (> (+ (* (- 1) f144@1) 3) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 4) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 142 

(declare-fun __ic3_ind_gen_142 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_142
 (not
  (or
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (* 1 f144@0) 0))
   (not (> (+ (* (- 1) f144@0) 3) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 4) 0))
   (not (> (+ (* 1 f144@0) (- 1)) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 143 

(declare-fun __ic3_ind_gen_143 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_143
 (or
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (* 1 f144@0) 0))
  (not (> (+ (* (- 1) f144@0) 3) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 4) 0))
  (not (> (+ (* 1 f144@0) (- 1)) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_142 :named c815))
;; Success 

(assert (! __ic3_frame_0 :named c816))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c817))
;; Success 

(assert (! __ic3_ind_gen_143 :named c818))
;; Success 

(assert (! __ic3_ind_gen_141 :named c819))
;; Success 

(assert (! __ic3_clause_16_p0 :named c820))
;; Success 

(assert (! __ic3_clause_17_p0 :named c821))
;; Success 

(assert (! __ic3_clause_5_p0 :named c822))
;; Success 

(assert (! __ic3_clause_7_p0 :named c823))
;; Success 

(assert (! __ic3_clause_3_p0 :named c824))
;; Success 

(assert (! __ic3_clause_9_p0 :named c825))
;; Success 

(assert (! __ic3_clause_15_p0 :named c826))
;; Success 

(assert (! __ic3_clause_11_p0 :named c827))
;; Success 

(assert (! __ic3_clause_13_p0 :named c828))
;; Success 

(assert (! __ic3_clause_22_p0 :named c829))
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

(assert
 (=>
 __ic3_ind_gen_144
 (not
  (or
   (not (> (* 1 f144@1) 0))
   (not (> (+ (* (- 1) f144@1) 3) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 4) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 145 

(declare-fun __ic3_ind_gen_145 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_145
 (not
  (or
   (not (> (* 1 f144@0) 0))
   (not (> (+ (* (- 1) f144@0) 3) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 4) 0))
   (not (> (+ (* 1 f144@0) (- 1)) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 146 

(declare-fun __ic3_ind_gen_146 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_146
 (or
  (not (> (* 1 f144@0) 0))
  (not (> (+ (* (- 1) f144@0) 3) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 4) 0))
  (not (> (+ (* 1 f144@0) (- 1)) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_145 :named c830))
;; Success 

(assert (! __ic3_frame_0 :named c831))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c832))
;; Success 

(assert (! __ic3_ind_gen_146 :named c833))
;; Success 

(assert (! __ic3_ind_gen_144 :named c834))
;; Success 

(assert (! __ic3_clause_16_p0 :named c835))
;; Success 

(assert (! __ic3_clause_17_p0 :named c836))
;; Success 

(assert (! __ic3_clause_5_p0 :named c837))
;; Success 

(assert (! __ic3_clause_7_p0 :named c838))
;; Success 

(assert (! __ic3_clause_3_p0 :named c839))
;; Success 

(assert (! __ic3_clause_9_p0 :named c840))
;; Success 

(assert (! __ic3_clause_15_p0 :named c841))
;; Success 

(assert (! __ic3_clause_11_p0 :named c842))
;; Success 

(assert (! __ic3_clause_13_p0 :named c843))
;; Success 

(assert (! __ic3_clause_22_p0 :named c844))
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

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 147 

(declare-fun __ic3_ind_gen_147 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_147
 (not
  (or
   (not (> (+ (* (- 1) f144@1) 3) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 4) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 148 

(declare-fun __ic3_ind_gen_148 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_148
 (not
  (or
   (not (> (+ (* (- 1) f144@0) 3) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 4) 0))
   (not (> (+ (* 1 f144@0) (- 1)) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 149 

(declare-fun __ic3_ind_gen_149 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_149
 (or
  (not (> (+ (* (- 1) f144@0) 3) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 4) 0))
  (not (> (+ (* 1 f144@0) (- 1)) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_148 :named c845))
;; Success 

(assert (! __ic3_frame_0 :named c846))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c847))
;; Success 

(assert (! __ic3_ind_gen_149 :named c848))
;; Success 

(assert (! __ic3_ind_gen_147 :named c849))
;; Success 

(assert (! __ic3_clause_16_p0 :named c850))
;; Success 

(assert (! __ic3_clause_17_p0 :named c851))
;; Success 

(assert (! __ic3_clause_5_p0 :named c852))
;; Success 

(assert (! __ic3_clause_7_p0 :named c853))
;; Success 

(assert (! __ic3_clause_3_p0 :named c854))
;; Success 

(assert (! __ic3_clause_9_p0 :named c855))
;; Success 

(assert (! __ic3_clause_15_p0 :named c856))
;; Success 

(assert (! __ic3_clause_11_p0 :named c857))
;; Success 

(assert (! __ic3_clause_13_p0 :named c858))
;; Success 

(assert (! __ic3_clause_22_p0 :named c859))
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
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 4) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 151 

(declare-fun __ic3_ind_gen_151 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_151
 (not
  (or
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 4) 0))
   (not (> (+ (* 1 f144@0) (- 1)) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 152 

(declare-fun __ic3_ind_gen_152 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_152
 (or
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 4) 0))
  (not (> (+ (* 1 f144@0) (- 1)) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_151 :named c860))
;; Success 

(assert (! __ic3_frame_0 :named c861))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c862))
;; Success 

(assert (! __ic3_ind_gen_152 :named c863))
;; Success 

(assert (! __ic3_ind_gen_150 :named c864))
;; Success 

(assert (! __ic3_clause_16_p0 :named c865))
;; Success 

(assert (! __ic3_clause_17_p0 :named c866))
;; Success 

(assert (! __ic3_clause_5_p0 :named c867))
;; Success 

(assert (! __ic3_clause_7_p0 :named c868))
;; Success 

(assert (! __ic3_clause_3_p0 :named c869))
;; Success 

(assert (! __ic3_clause_9_p0 :named c870))
;; Success 

(assert (! __ic3_clause_15_p0 :named c871))
;; Success 

(assert (! __ic3_clause_11_p0 :named c872))
;; Success 

(assert (! __ic3_clause_13_p0 :named c873))
;; Success 

(assert (! __ic3_clause_22_p0 :named c874))
;; Success 

(check-sat)
;; Unsat 

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
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 4) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 154 

(declare-fun __ic3_ind_gen_154 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_154
 (not
  (or
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 4) 0))
   (not (> (+ (* 1 f144@0) (- 1)) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 155 

(declare-fun __ic3_ind_gen_155 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_155
 (or
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 4) 0))
  (not (> (+ (* 1 f144@0) (- 1)) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_154 :named c875))
;; Success 

(assert (! __ic3_frame_0 :named c876))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c877))
;; Success 

(assert (! __ic3_ind_gen_155 :named c878))
;; Success 

(assert (! __ic3_ind_gen_153 :named c879))
;; Success 

(assert (! __ic3_clause_16_p0 :named c880))
;; Success 

(assert (! __ic3_clause_17_p0 :named c881))
;; Success 

(assert (! __ic3_clause_5_p0 :named c882))
;; Success 

(assert (! __ic3_clause_7_p0 :named c883))
;; Success 

(assert (! __ic3_clause_3_p0 :named c884))
;; Success 

(assert (! __ic3_clause_9_p0 :named c885))
;; Success 

(assert (! __ic3_clause_15_p0 :named c886))
;; Success 

(assert (! __ic3_clause_11_p0 :named c887))
;; Success 

(assert (! __ic3_clause_13_p0 :named c888))
;; Success 

(assert (! __ic3_clause_22_p0 :named c889))
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
   (not (> (+ (* (- 1) f144@1) 4) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 157 

(declare-fun __ic3_ind_gen_157 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_157
 (not
  (or
   (not (> (+ (* (- 1) f144@0) 4) 0))
   (not (> (+ (* 1 f144@0) (- 1)) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 158 

(declare-fun __ic3_ind_gen_158 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_158
 (or
  (not (> (+ (* (- 1) f144@0) 4) 0))
  (not (> (+ (* 1 f144@0) (- 1)) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_157 :named c890))
;; Success 

(assert (! __ic3_frame_0 :named c891))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c892))
;; Success 

(assert (! __ic3_ind_gen_158 :named c893))
;; Success 

(assert (! __ic3_ind_gen_156 :named c894))
;; Success 

(assert (! __ic3_clause_16_p0 :named c895))
;; Success 

(assert (! __ic3_clause_17_p0 :named c896))
;; Success 

(assert (! __ic3_clause_5_p0 :named c897))
;; Success 

(assert (! __ic3_clause_7_p0 :named c898))
;; Success 

(assert (! __ic3_clause_3_p0 :named c899))
;; Success 

(assert (! __ic3_clause_9_p0 :named c900))
;; Success 

(assert (! __ic3_clause_15_p0 :named c901))
;; Success 

(assert (! __ic3_clause_11_p0 :named c902))
;; Success 

(assert (! __ic3_clause_13_p0 :named c903))
;; Success 

(assert (! __ic3_clause_22_p0 :named c904))
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
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 160 

(declare-fun __ic3_ind_gen_160 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_160
 (not
  (or
   (not (> (+ (* 1 f144@0) (- 1)) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 161 

(declare-fun __ic3_ind_gen_161 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_161
 (or
  (not (> (+ (* 1 f144@0) (- 1)) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_160 :named c905))
;; Success 

(assert (! __ic3_frame_0 :named c906))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c907))
;; Success 

(assert (! __ic3_ind_gen_161 :named c908))
;; Success 

(assert (! __ic3_ind_gen_159 :named c909))
;; Success 

(assert (! __ic3_clause_16_p0 :named c910))
;; Success 

(assert (! __ic3_clause_17_p0 :named c911))
;; Success 

(assert (! __ic3_clause_5_p0 :named c912))
;; Success 

(assert (! __ic3_clause_7_p0 :named c913))
;; Success 

(assert (! __ic3_clause_3_p0 :named c914))
;; Success 

(assert (! __ic3_clause_9_p0 :named c915))
;; Success 

(assert (! __ic3_clause_15_p0 :named c916))
;; Success 

(assert (! __ic3_clause_11_p0 :named c917))
;; Success 

(assert (! __ic3_clause_13_p0 :named c918))
;; Success 

(assert (! __ic3_clause_22_p0 :named c919))
;; Success 

(check-sat)
;; Unsat 

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
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 163 

(declare-fun __ic3_ind_gen_163 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_163
 (not
  (or
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 164 

(declare-fun __ic3_ind_gen_164 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_164
 (or
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_163 :named c920))
;; Success 

(assert (! __ic3_frame_0 :named c921))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c922))
;; Success 

(assert (! __ic3_ind_gen_164 :named c923))
;; Success 

(assert (! __ic3_ind_gen_162 :named c924))
;; Success 

(assert (! __ic3_clause_16_p0 :named c925))
;; Success 

(assert (! __ic3_clause_17_p0 :named c926))
;; Success 

(assert (! __ic3_clause_5_p0 :named c927))
;; Success 

(assert (! __ic3_clause_7_p0 :named c928))
;; Success 

(assert (! __ic3_clause_3_p0 :named c929))
;; Success 

(assert (! __ic3_clause_9_p0 :named c930))
;; Success 

(assert (! __ic3_clause_15_p0 :named c931))
;; Success 

(assert (! __ic3_clause_11_p0 :named c932))
;; Success 

(assert (! __ic3_clause_13_p0 :named c933))
;; Success 

(assert (! __ic3_clause_22_p0 :named c934))
;; Success 

(check-sat)
;; Sat 

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
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 166 

(declare-fun __ic3_ind_gen_166 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_166
 (not
  (or
   (not (> (+ (* 1 f144@0) (- 1)) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 167 

(declare-fun __ic3_ind_gen_167 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_167
 (or
  (not (> (+ (* 1 f144@0) (- 1)) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_166 :named c935))
;; Success 

(assert (! __ic3_frame_0 :named c936))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c937))
;; Success 

(assert (! __ic3_ind_gen_167 :named c938))
;; Success 

(assert (! __ic3_ind_gen_165 :named c939))
;; Success 

(assert (! __ic3_clause_16_p0 :named c940))
;; Success 

(assert (! __ic3_clause_17_p0 :named c941))
;; Success 

(assert (! __ic3_clause_5_p0 :named c942))
;; Success 

(assert (! __ic3_clause_7_p0 :named c943))
;; Success 

(assert (! __ic3_clause_3_p0 :named c944))
;; Success 

(assert (! __ic3_clause_9_p0 :named c945))
;; Success 

(assert (! __ic3_clause_15_p0 :named c946))
;; Success 

(assert (! __ic3_clause_11_p0 :named c947))
;; Success 

(assert (! __ic3_clause_13_p0 :named c948))
;; Success 

(assert (! __ic3_clause_22_p0 :named c949))
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
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 169 

(declare-fun __ic3_ind_gen_169 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_169
 (not
  (or
   (not (> (+ (* 1 f144@0) (- 1)) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 170 

(declare-fun __ic3_ind_gen_170 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_170
 (or
  (not (> (+ (* 1 f144@0) (- 1)) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_169 :named c950))
;; Success 

(assert (! __ic3_frame_0 :named c951))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c952))
;; Success 

(assert (! __ic3_ind_gen_170 :named c953))
;; Success 

(assert (! __ic3_ind_gen_168 :named c954))
;; Success 

(assert (! __ic3_clause_16_p0 :named c955))
;; Success 

(assert (! __ic3_clause_17_p0 :named c956))
;; Success 

(assert (! __ic3_clause_5_p0 :named c957))
;; Success 

(assert (! __ic3_clause_7_p0 :named c958))
;; Success 

(assert (! __ic3_clause_3_p0 :named c959))
;; Success 

(assert (! __ic3_clause_9_p0 :named c960))
;; Success 

(assert (! __ic3_clause_15_p0 :named c961))
;; Success 

(assert (! __ic3_clause_11_p0 :named c962))
;; Success 

(assert (! __ic3_clause_13_p0 :named c963))
;; Success 

(assert (! __ic3_clause_22_p0 :named c964))
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

(assert (=> __ic3_ind_gen_171 (> (+ (* 1 f144@1) (- 1)) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 172 

(declare-fun __ic3_ind_gen_172 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_172 (> (+ (* 1 f144@0) (- 1)) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 173 

(declare-fun __ic3_ind_gen_173 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_173 (not (> (+ (* 1 f144@0) (- 1)) 0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_172 :named c965))
;; Success 

(assert (! __ic3_frame_0 :named c966))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c967))
;; Success 

(assert (! __ic3_ind_gen_173 :named c968))
;; Success 

(assert (! __ic3_ind_gen_171 :named c969))
;; Success 

(assert (! __ic3_clause_16_p0 :named c970))
;; Success 

(assert (! __ic3_clause_17_p0 :named c971))
;; Success 

(assert (! __ic3_clause_5_p0 :named c972))
;; Success 

(assert (! __ic3_clause_7_p0 :named c973))
;; Success 

(assert (! __ic3_clause_3_p0 :named c974))
;; Success 

(assert (! __ic3_clause_9_p0 :named c975))
;; Success 

(assert (! __ic3_clause_15_p0 :named c976))
;; Success 

(assert (! __ic3_clause_11_p0 :named c977))
;; Success 

(assert (! __ic3_clause_13_p0 :named c978))
;; Success 

(assert (! __ic3_clause_22_p0 :named c979))
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

;; ind_generalize: Dropped 12 literals from clause. 

;; Deactivating activation literals for clause 

;; New clause from inductive generalization of #23: 
;; #24 {(not (> (+ (* 1 top.res.abs_0@0) (- 1)) 0))} 

;; block: Is blocking clause relative inductive to R_1? 

(declare-fun __ic3_clause_24_n1_0 () Bool)
;; Success 

(assert (=> __ic3_clause_24_n1_0 (> (+ (* 1 f144@1) (- 1)) 0)))
;; Success 

(declare-fun __ic3_clause_24_p0 () Bool)
;; Success 

(assert (=> __ic3_clause_24_p0 (not (> (+ (* 1 f144@0) (- 1)) 0))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_24_p0 :named c980))
;; Success 

(assert (! __ic3_clause_24_n1_0 :named c981))
;; Success 

(assert (! __ic3_clause_16_p0 :named c982))
;; Success 

(assert (! __ic3_clause_17_p0 :named c983))
;; Success 

(assert (! __ic3_clause_5_p0 :named c984))
;; Success 

(assert (! __ic3_clause_7_p0 :named c985))
;; Success 

(assert (! __ic3_clause_3_p0 :named c986))
;; Success 

(assert (! __ic3_clause_9_p0 :named c987))
;; Success 

(assert (! __ic3_clause_15_p0 :named c988))
;; Success 

(assert (! __ic3_clause_11_p0 :named c989))
;; Success 

(assert (! __ic3_clause_13_p0 :named c990))
;; Success 

(assert (! __ic3_clause_22_p0 :named c991))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c981 c980) 

(pop 1)
;; Success 

;; block: Check I |= C to get unsat core. 

(declare-fun __ic3_clause_24_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_24_n0_0 (> (+ (* 1 f144@0) (- 1)) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c992))
;; Success 

(assert (! __ic3_clause_24_n0_0 :named c993))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c992 c993) 

(pop 1)
;; Success 

;; block: Reduced clause 
;; (not (> (+ (* 1 top.res.abs_0@0) (- 1)) 0)) 
;; with unsat core to 
;; (not (> (+ (* 1 top.res.abs_0@0) (- 1)) 0)) 

;; block: Reduced clause 
;; (not (> (+ (* 1 top.res.abs_0@0) (- 1)) 0)) 
;; with ind. gen. to 
;; (not (> (+ (* 1 top.res.abs_0@0) (- 1)) 0)) 

;; check_frames: frames k to 1 
;;  
;; Frame: 
;; 16 
;; 17 
;; 5 
;; 7 
;; 24 
;;  
;; Frame: 
;; 9 
;; 15 
;; 11 
;; 13 
;; 22 

;; check_frames: Does R_2 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c994))
;; Success 

(assert (! __ic3_clause_16_p0 :named c995))
;; Success 

(assert (! __ic3_clause_17_p0 :named c996))
;; Success 

(assert (! __ic3_clause_5_p0 :named c997))
;; Success 

(assert (! __ic3_clause_7_p0 :named c998))
;; Success 

(assert (! __ic3_clause_24_p0 :named c999))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1000))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1001))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1002))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1003))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1004))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1005))
;; Success 

(assert (! __ic3_clause_16_n0_0 :named c1006))
;; Success 

(assert (! __ic3_clause_16_n0_1 :named c1007))
;; Success 

(assert (! __ic3_clause_16_n0_2 :named c1008))
;; Success 

(assert (! __ic3_clause_16_n0_3 :named c1009))
;; Success 

(assert (! __ic3_clause_16_n0_4 :named c1010))
;; Success 

(assert (! __ic3_clause_16_n0_5 :named c1011))
;; Success 

(assert (! __ic3_clause_16_n0_6 :named c1012))
;; Success 

(assert (! __ic3_clause_16_n0_7 :named c1013))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1014))
;; Success 

(assert (! __ic3_clause_17_n0_0 :named c1015))
;; Success 

(assert (! __ic3_clause_17_n0_1 :named c1016))
;; Success 

(assert (! __ic3_clause_17_n0_2 :named c1017))
;; Success 

(assert (! __ic3_clause_17_n0_3 :named c1018))
;; Success 

(assert (! __ic3_clause_17_n0_4 :named c1019))
;; Success 

(assert (! __ic3_clause_17_n0_5 :named c1020))
;; Success 

(assert (! __ic3_clause_17_n0_6 :named c1021))
;; Success 

(assert (! __ic3_clause_17_n0_7 :named c1022))
;; Success 

(assert (! __ic3_clause_17_n0_8 :named c1023))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1024))
;; Success 

(assert (! __ic3_clause_5_n0_0 :named c1025))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1026))
;; Success 

(assert (! __ic3_clause_7_n0_0 :named c1027))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1028))
;; Success 

(assert (! __ic3_clause_24_n0_0 :named c1029))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_1 & T |= R_2 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 12 

(declare-fun __ic3_check_frames_12 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_12
 (not
  (and
   f105@1
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_12 :named c1030))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1031))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1032))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1033))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1034))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1035))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1036))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1037))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1038))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1039))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1040))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1041))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1042))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1043))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1044))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1045))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1046))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_12))
;; Success 

;; check_frames: Does R_1 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c1047))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1048))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1049))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1050))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1051))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1052))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1053))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1054))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1055))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1056))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1057))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1058))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1059))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1060))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1061))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1062))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1063))
;; Success 

(assert (! __ic3_clause_9_n0_0 :named c1064))
;; Success 

(assert (! __ic3_clause_9_n0_1 :named c1065))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1066))
;; Success 

(assert (! __ic3_clause_15_n0_0 :named c1067))
;; Success 

(assert (! __ic3_clause_15_n0_1 :named c1068))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1069))
;; Success 

(assert (! __ic3_clause_11_n0_0 :named c1070))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1071))
;; Success 

(assert (! __ic3_clause_13_n0_0 :named c1072))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1073))
;; Success 

(assert (! __ic3_clause_22_n0_0 :named c1074))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_0 & T |= R_1 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 13 

(declare-fun __ic3_check_frames_13 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_13
 (not
  (and
   f105@1
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (not (> (* 1 f145@1) 0))
   (not (> (* 1 f146@1) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_13 :named c1075))
;; Success 

(assert (! __ic3_frame_0 :named c1076))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_13))
;; Success 

;; block: Is blocking clause relative inductive to R_1? 

(push 1)
;; Success 

(assert (! __ic3_clause_20_p0 :named c1077))
;; Success 

(assert (! __ic3_clause_20_n1_0 :named c1078))
;; Success 

(assert (! __ic3_clause_20_n1_1 :named c1079))
;; Success 

(assert (! __ic3_clause_20_n1_2 :named c1080))
;; Success 

(assert (! __ic3_clause_20_n1_3 :named c1081))
;; Success 

(assert (! __ic3_clause_20_n1_4 :named c1082))
;; Success 

(assert (! __ic3_clause_20_n1_5 :named c1083))
;; Success 

(assert (! __ic3_clause_20_n1_6 :named c1084))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1085))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1086))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1087))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1088))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1089))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1090))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1091))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1092))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1093))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1094))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1095))
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
;;     (f148@1 2) 
;;     (f147@1 0) 
;;     (f146@1 (- 1)) 
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
;;     (f100@1 true) 
;;     (f99@1 false) 
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
;;     (f153@0 2) 
;;     (f152@0 true) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 1) 
;;     (f147@0 1) 
;;     (f146@0 (- 1)) 
;;     (f145@0 0) 
;;     (f144@0 1) 
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

;; New clause at depth 1 to block #20: 
;; #25 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_0@0) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 3) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_1@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_2@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_3@0) 0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 0) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0)) 0)); 
;;      (not (> (+ (* 1 top.res.abs_0@0) 0) 0))} 

;; block: Is blocking clause relative inductive to R_0? 

(declare-fun __ic3_clause_25_n1_0 () Bool)
;; Success 

(assert (=> __ic3_clause_25_n1_0 f105@1))
;; Success 

(declare-fun __ic3_clause_25_n1_1 () Bool)
;; Success 

(assert (=> __ic3_clause_25_n1_1 f152@1))
;; Success 

(declare-fun __ic3_clause_25_n1_2 () Bool)
;; Success 

(assert (=> __ic3_clause_25_n1_2 (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0)))
;; Success 

(declare-fun __ic3_clause_25_n1_3 () Bool)
;; Success 

(assert (=> __ic3_clause_25_n1_3 (> (+ (* (- 1) f144@1) 2) 0)))
;; Success 

(declare-fun __ic3_clause_25_n1_4 () Bool)
;; Success 

(assert (=> __ic3_clause_25_n1_4 (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_25_n1_5 () Bool)
;; Success 

(assert (=> __ic3_clause_25_n1_5 (> (* 1 f144@1) 0)))
;; Success 

(declare-fun __ic3_clause_25_n1_6 () Bool)
;; Success 

(assert (=> __ic3_clause_25_n1_6 (> (+ (* (- 1) f144@1) 3) 0)))
;; Success 

(declare-fun __ic3_clause_25_n1_7 () Bool)
;; Success 

(assert (=> __ic3_clause_25_n1_7 (> (+ (* (- 1) f145@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_25_n1_8 () Bool)
;; Success 

(assert (=> __ic3_clause_25_n1_8 (> (+ (* (- 1) f146@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_25_n1_9 () Bool)
;; Success 

(assert (=> __ic3_clause_25_n1_9 (> (* 1 f147@1) 0)))
;; Success 

(declare-fun __ic3_clause_25_n1_10 () Bool)
;; Success 

(assert (=> __ic3_clause_25_n1_10 (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0)))
;; Success 

(declare-fun __ic3_clause_25_n1_11 () Bool)
;; Success 

(assert (=> __ic3_clause_25_n1_11 (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0)))
;; Success 

(declare-fun __ic3_clause_25_n1_12 () Bool)
;; Success 

(assert (=> __ic3_clause_25_n1_12 (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0)))
;; Success 

(declare-fun __ic3_clause_25_n1_13 () Bool)
;; Success 

(assert (=> __ic3_clause_25_n1_13 (> (+ (* 1 f144@1) 0) 0)))
;; Success 

(declare-fun __ic3_clause_25_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_25_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (* 1 f144@0) 0))
  (not (> (+ (* (- 1) f144@0) 3) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f144@0) 0) 0)))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_25_p0 :named c1096))
;; Success 

(assert (! __ic3_clause_25_n1_0 :named c1097))
;; Success 

(assert (! __ic3_clause_25_n1_1 :named c1098))
;; Success 

(assert (! __ic3_clause_25_n1_2 :named c1099))
;; Success 

(assert (! __ic3_clause_25_n1_3 :named c1100))
;; Success 

(assert (! __ic3_clause_25_n1_4 :named c1101))
;; Success 

(assert (! __ic3_clause_25_n1_5 :named c1102))
;; Success 

(assert (! __ic3_clause_25_n1_6 :named c1103))
;; Success 

(assert (! __ic3_clause_25_n1_7 :named c1104))
;; Success 

(assert (! __ic3_clause_25_n1_8 :named c1105))
;; Success 

(assert (! __ic3_clause_25_n1_9 :named c1106))
;; Success 

(assert (! __ic3_clause_25_n1_10 :named c1107))
;; Success 

(assert (! __ic3_clause_25_n1_11 :named c1108))
;; Success 

(assert (! __ic3_clause_25_n1_12 :named c1109))
;; Success 

(assert (! __ic3_clause_25_n1_13 :named c1110))
;; Success 

(assert (! __ic3_frame_0 :named c1111))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c1098 c1102 c1106 c1111) 

(pop 1)
;; Success 

;; block: Check I |= C to get unsat core. 

(declare-fun __ic3_clause_25_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_25_n0_0 f105@0))
;; Success 

(declare-fun __ic3_clause_25_n0_1 () Bool)
;; Success 

(assert (=> __ic3_clause_25_n0_1 f152@0))
;; Success 

(declare-fun __ic3_clause_25_n0_2 () Bool)
;; Success 

(assert (=> __ic3_clause_25_n0_2 (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0)))
;; Success 

(declare-fun __ic3_clause_25_n0_3 () Bool)
;; Success 

(assert (=> __ic3_clause_25_n0_3 (> (+ (* (- 1) f144@0) 2) 0)))
;; Success 

(declare-fun __ic3_clause_25_n0_4 () Bool)
;; Success 

(assert (=> __ic3_clause_25_n0_4 (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_25_n0_5 () Bool)
;; Success 

(assert (=> __ic3_clause_25_n0_5 (> (* 1 f144@0) 0)))
;; Success 

(declare-fun __ic3_clause_25_n0_6 () Bool)
;; Success 

(assert (=> __ic3_clause_25_n0_6 (> (+ (* (- 1) f144@0) 3) 0)))
;; Success 

(declare-fun __ic3_clause_25_n0_7 () Bool)
;; Success 

(assert (=> __ic3_clause_25_n0_7 (> (+ (* (- 1) f145@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_25_n0_8 () Bool)
;; Success 

(assert (=> __ic3_clause_25_n0_8 (> (+ (* (- 1) f146@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_25_n0_9 () Bool)
;; Success 

(assert (=> __ic3_clause_25_n0_9 (> (* 1 f147@0) 0)))
;; Success 

(declare-fun __ic3_clause_25_n0_10 () Bool)
;; Success 

(assert (=> __ic3_clause_25_n0_10 (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0)))
;; Success 

(declare-fun __ic3_clause_25_n0_11 () Bool)
;; Success 

(assert (=> __ic3_clause_25_n0_11 (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0)))
;; Success 

(declare-fun __ic3_clause_25_n0_12 () Bool)
;; Success 

(assert (=> __ic3_clause_25_n0_12 (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0)))
;; Success 

(declare-fun __ic3_clause_25_n0_13 () Bool)
;; Success 

(assert (=> __ic3_clause_25_n0_13 (> (+ (* 1 f144@0) 0) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1112))
;; Success 

(assert (! __ic3_clause_25_n0_0 :named c1113))
;; Success 

(assert (! __ic3_clause_25_n0_1 :named c1114))
;; Success 

(assert (! __ic3_clause_25_n0_2 :named c1115))
;; Success 

(assert (! __ic3_clause_25_n0_3 :named c1116))
;; Success 

(assert (! __ic3_clause_25_n0_4 :named c1117))
;; Success 

(assert (! __ic3_clause_25_n0_5 :named c1118))
;; Success 

(assert (! __ic3_clause_25_n0_6 :named c1119))
;; Success 

(assert (! __ic3_clause_25_n0_7 :named c1120))
;; Success 

(assert (! __ic3_clause_25_n0_8 :named c1121))
;; Success 

(assert (! __ic3_clause_25_n0_9 :named c1122))
;; Success 

(assert (! __ic3_clause_25_n0_10 :named c1123))
;; Success 

(assert (! __ic3_clause_25_n0_11 :named c1124))
;; Success 

(assert (! __ic3_clause_25_n0_12 :named c1125))
;; Success 

(assert (! __ic3_clause_25_n0_13 :named c1126))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c1118 c1112) 

(pop 1)
;; Success 

;; block: Reduced clause 
;; (or 
;;  (not top.usr.OK@0) 
;;  (not top.res.abs_8@0) 
;;  (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_0@0) 2) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)) 
;;  (not (> (* 1 top.res.abs_0@0) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_0@0) 3) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_1@0) 1) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_2@0) 1) 0)) 
;;  (not (> (* 1 top.res.abs_3@0) 0)) 
;;  (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 2) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 0) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0)) 0)) 
;;  (not (> (+ (* 1 top.res.abs_0@0) 0) 0))) 
;; with unsat core to 
;; (or 
;;  (not (> (* 1 top.res.abs_3@0) 0)) 
;;  (not (> (* 1 top.res.abs_0@0) 0)) 
;;  (not top.res.abs_8@0)) 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 174 

(declare-fun __ic3_ind_gen_174 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_174 (not (or (not (> (* 1 f144@1) 0)) (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 175 

(declare-fun __ic3_ind_gen_175 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_175 (not (or (not (> (* 1 f144@0) 0)) (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 176 

(declare-fun __ic3_ind_gen_176 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_176 (or (not (> (* 1 f144@0) 0)) (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_175 :named c1127))
;; Success 

(assert (! __ic3_frame_0 :named c1128))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1129))
;; Success 

(assert (! __ic3_ind_gen_176 :named c1130))
;; Success 

(assert (! __ic3_ind_gen_174 :named c1131))
;; Success 

(assert (! __ic3_frame_0 :named c1132))
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
 (=> __ic3_ind_gen_177 (not (or (not (> (* 1 f147@1) 0)) (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 178 

(declare-fun __ic3_ind_gen_178 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_178 (not (or (not (> (* 1 f147@0) 0)) (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 179 

(declare-fun __ic3_ind_gen_179 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_179 (or (not (> (* 1 f147@0) 0)) (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_178 :named c1133))
;; Success 

(assert (! __ic3_frame_0 :named c1134))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1135))
;; Success 

(assert (! __ic3_ind_gen_179 :named c1136))
;; Success 

(assert (! __ic3_ind_gen_177 :named c1137))
;; Success 

(assert (! __ic3_frame_0 :named c1138))
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
 (not (or (not (> (* 1 f144@1) 0)) (not (> (* 1 f147@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 181 

(declare-fun __ic3_ind_gen_181 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_181
 (not (or (not (> (* 1 f144@0) 0)) (not (> (* 1 f147@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 182 

(declare-fun __ic3_ind_gen_182 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_182 (or (not (> (* 1 f144@0) 0)) (not (> (* 1 f147@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_181 :named c1139))
;; Success 

(assert (! __ic3_frame_0 :named c1140))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1141))
;; Success 

(assert (! __ic3_ind_gen_182 :named c1142))
;; Success 

(assert (! __ic3_ind_gen_180 :named c1143))
;; Success 

(assert (! __ic3_frame_0 :named c1144))
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

;; ind_generalize: Dropped 11 literals from clause. 

;; Deactivating activation literals for clause 

(assert (not __ic3_clause_25_p0))
;; Success 

(assert (not __ic3_clause_25_n0_0))
;; Success 

(assert (not __ic3_clause_25_n0_1))
;; Success 

(assert (not __ic3_clause_25_n0_2))
;; Success 

(assert (not __ic3_clause_25_n0_3))
;; Success 

(assert (not __ic3_clause_25_n0_4))
;; Success 

(assert (not __ic3_clause_25_n0_5))
;; Success 

(assert (not __ic3_clause_25_n0_6))
;; Success 

(assert (not __ic3_clause_25_n0_7))
;; Success 

(assert (not __ic3_clause_25_n0_8))
;; Success 

(assert (not __ic3_clause_25_n0_9))
;; Success 

(assert (not __ic3_clause_25_n0_10))
;; Success 

(assert (not __ic3_clause_25_n0_11))
;; Success 

(assert (not __ic3_clause_25_n0_12))
;; Success 

(assert (not __ic3_clause_25_n0_13))
;; Success 

(assert (not __ic3_clause_25_n1_0))
;; Success 

(assert (not __ic3_clause_25_n1_1))
;; Success 

(assert (not __ic3_clause_25_n1_2))
;; Success 

(assert (not __ic3_clause_25_n1_3))
;; Success 

(assert (not __ic3_clause_25_n1_4))
;; Success 

(assert (not __ic3_clause_25_n1_5))
;; Success 

(assert (not __ic3_clause_25_n1_6))
;; Success 

(assert (not __ic3_clause_25_n1_7))
;; Success 

(assert (not __ic3_clause_25_n1_8))
;; Success 

(assert (not __ic3_clause_25_n1_9))
;; Success 

(assert (not __ic3_clause_25_n1_10))
;; Success 

(assert (not __ic3_clause_25_n1_11))
;; Success 

(assert (not __ic3_clause_25_n1_12))
;; Success 

(assert (not __ic3_clause_25_n1_13))
;; Success 

;; New clause from inductive generalization of #25: 
;; #26 {(not top.res.abs_8@0); 
;;      (not (> (* 1 top.res.abs_0@0) 0)); 
;;      (not (> (* 1 top.res.abs_3@0) 0))} 

;; block: Reduced clause 
;; (or 
;;  (not (> (* 1 top.res.abs_3@0) 0)) 
;;  (not (> (* 1 top.res.abs_0@0) 0)) 
;;  (not top.res.abs_8@0)) 
;; with ind. gen. to 
;; (or 
;;  (not top.res.abs_8@0) 
;;  (not (> (* 1 top.res.abs_0@0) 0)) 
;;  (not (> (* 1 top.res.abs_3@0) 0))) 

;; Copied clause #25 for blocking at depth 0: 
;; #27 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_0@0) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 3) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_1@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_2@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_3@0) 0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 0) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0)) 0)); 
;;      (not (> (+ (* 1 top.res.abs_0@0) 0) 0))} 

(declare-fun __ic3_clause_26_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_26_p0
 (or (not f152@0) (not (> (* 1 f144@0) 0)) (not (> (* 1 f147@0) 0)))))
;; Success 

;; check_frames: frames k to 1 
;;  
;; Frame: 
;; 26 
;; 9 
;; 15 
;; 11 
;; 13 
;; 22 

;; check_frames: Does R_1 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c1145))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1146))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1147))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1148))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1149))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1150))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1151))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1152))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1153))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1154))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1155))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1156))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1157))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1158))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1159))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1160))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1161))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1162))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(declare-fun __ic3_clause_26_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_26_n0_0 f152@0))
;; Success 

(declare-fun __ic3_clause_26_n0_1 () Bool)
;; Success 

(assert (=> __ic3_clause_26_n0_1 (> (* 1 f144@0) 0)))
;; Success 

(declare-fun __ic3_clause_26_n0_2 () Bool)
;; Success 

(assert (=> __ic3_clause_26_n0_2 (> (* 1 f147@0) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1163))
;; Success 

(assert (! __ic3_clause_26_n0_0 :named c1164))
;; Success 

(assert (! __ic3_clause_26_n0_1 :named c1165))
;; Success 

(assert (! __ic3_clause_26_n0_2 :named c1166))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1167))
;; Success 

(assert (! __ic3_clause_9_n0_0 :named c1168))
;; Success 

(assert (! __ic3_clause_9_n0_1 :named c1169))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1170))
;; Success 

(assert (! __ic3_clause_15_n0_0 :named c1171))
;; Success 

(assert (! __ic3_clause_15_n0_1 :named c1172))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1173))
;; Success 

(assert (! __ic3_clause_11_n0_0 :named c1174))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1175))
;; Success 

(assert (! __ic3_clause_13_n0_0 :named c1176))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1177))
;; Success 

(assert (! __ic3_clause_22_n0_0 :named c1178))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_0 & T |= R_1 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 14 

(declare-fun __ic3_check_frames_14 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_14
 (not
  (and
   f105@1
   (or (not f152@1) (not (> (* 1 f144@1) 0)) (not (> (* 1 f147@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (not (> (* 1 f145@1) 0))
   (not (> (* 1 f146@1) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (or (not f152@1) (not (> (* 1 f144@1) 0)) (not (> (* 1 f147@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (not (> (* 1 f145@1) 0))
   (not (> (* 1 f146@1) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_14 :named c1179))
;; Success 

(assert (! __ic3_frame_0 :named c1180))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_14))
;; Success 

;; block: All counterexamples blocked in R_1 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 183 

(declare-fun __ic3_ind_gen_183 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_183
 (not
  (or
   (not f152@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (* 1 f144@1) 0))
   (not (> (+ (* (- 1) f144@1) 3) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (* 1 f147@1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f144@1) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 184 

(declare-fun __ic3_ind_gen_184 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_184
 (not
  (or
   (not f152@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (* 1 f144@0) 0))
   (not (> (+ (* (- 1) f144@0) 3) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (* 1 f147@0) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f144@0) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 185 

(declare-fun __ic3_ind_gen_185 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_185
 (or
  (not f152@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (* 1 f144@0) 0))
  (not (> (+ (* (- 1) f144@0) 3) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f144@0) 0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_184 :named c1181))
;; Success 

(assert (! __ic3_frame_0 :named c1182))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1183))
;; Success 

(assert (! __ic3_ind_gen_185 :named c1184))
;; Success 

(assert (! __ic3_ind_gen_183 :named c1185))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1186))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1187))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1188))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1189))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1190))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1191))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1192))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1193))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1194))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1195))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1196))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1197))
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
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (* 1 f144@1) 0))
   (not (> (+ (* (- 1) f144@1) 3) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (* 1 f147@1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f144@1) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 187 

(declare-fun __ic3_ind_gen_187 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_187
 (not
  (or
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (* 1 f144@0) 0))
   (not (> (+ (* (- 1) f144@0) 3) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (* 1 f147@0) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f144@0) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 188 

(declare-fun __ic3_ind_gen_188 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_188
 (or
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (* 1 f144@0) 0))
  (not (> (+ (* (- 1) f144@0) 3) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f144@0) 0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_187 :named c1198))
;; Success 

(assert (! __ic3_frame_0 :named c1199))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1200))
;; Success 

(assert (! __ic3_ind_gen_188 :named c1201))
;; Success 

(assert (! __ic3_ind_gen_186 :named c1202))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1203))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1204))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1205))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1206))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1207))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1208))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1209))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1210))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1211))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1212))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1213))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1214))
;; Success 

(check-sat)
;; Sat 

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
   (not f152@1)
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (* 1 f144@1) 0))
   (not (> (+ (* (- 1) f144@1) 3) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (* 1 f147@1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f144@1) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 190 

(declare-fun __ic3_ind_gen_190 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_190
 (not
  (or
   (not f152@0)
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (* 1 f144@0) 0))
   (not (> (+ (* (- 1) f144@0) 3) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (* 1 f147@0) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f144@0) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 191 

(declare-fun __ic3_ind_gen_191 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_191
 (or
  (not f152@0)
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (* 1 f144@0) 0))
  (not (> (+ (* (- 1) f144@0) 3) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f144@0) 0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_190 :named c1215))
;; Success 

(assert (! __ic3_frame_0 :named c1216))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1217))
;; Success 

(assert (! __ic3_ind_gen_191 :named c1218))
;; Success 

(assert (! __ic3_ind_gen_189 :named c1219))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1220))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1221))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1222))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1223))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1224))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1225))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1226))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1227))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1228))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1229))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1230))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1231))
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
   (not f152@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (* 1 f144@1) 0))
   (not (> (+ (* (- 1) f144@1) 3) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (* 1 f147@1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f144@1) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 193 

(declare-fun __ic3_ind_gen_193 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_193
 (not
  (or
   (not f152@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (* 1 f144@0) 0))
   (not (> (+ (* (- 1) f144@0) 3) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (* 1 f147@0) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f144@0) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 194 

(declare-fun __ic3_ind_gen_194 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_194
 (or
  (not f152@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (* 1 f144@0) 0))
  (not (> (+ (* (- 1) f144@0) 3) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f144@0) 0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_193 :named c1232))
;; Success 

(assert (! __ic3_frame_0 :named c1233))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1234))
;; Success 

(assert (! __ic3_ind_gen_194 :named c1235))
;; Success 

(assert (! __ic3_ind_gen_192 :named c1236))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1237))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1238))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1239))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1240))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1241))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1242))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1243))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1244))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1245))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1246))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1247))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1248))
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
   (not f152@1)
   (not (> (* 1 f144@1) 0))
   (not (> (+ (* (- 1) f144@1) 3) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (* 1 f147@1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f144@1) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 196 

(declare-fun __ic3_ind_gen_196 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_196
 (not
  (or
   (not f152@0)
   (not (> (* 1 f144@0) 0))
   (not (> (+ (* (- 1) f144@0) 3) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (* 1 f147@0) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f144@0) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 197 

(declare-fun __ic3_ind_gen_197 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_197
 (or
  (not f152@0)
  (not (> (* 1 f144@0) 0))
  (not (> (+ (* (- 1) f144@0) 3) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f144@0) 0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_196 :named c1249))
;; Success 

(assert (! __ic3_frame_0 :named c1250))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1251))
;; Success 

(assert (! __ic3_ind_gen_197 :named c1252))
;; Success 

(assert (! __ic3_ind_gen_195 :named c1253))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1254))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1255))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1256))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1257))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1258))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1259))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1260))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1261))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1262))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1263))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1264))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1265))
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
   (not f152@1)
   (not (> (+ (* (- 1) f144@1) 3) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (* 1 f147@1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f144@1) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 199 

(declare-fun __ic3_ind_gen_199 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_199
 (not
  (or
   (not f152@0)
   (not (> (+ (* (- 1) f144@0) 3) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (* 1 f147@0) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f144@0) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 200 

(declare-fun __ic3_ind_gen_200 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_200
 (or
  (not f152@0)
  (not (> (+ (* (- 1) f144@0) 3) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f144@0) 0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_199 :named c1266))
;; Success 

(assert (! __ic3_frame_0 :named c1267))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1268))
;; Success 

(assert (! __ic3_ind_gen_200 :named c1269))
;; Success 

(assert (! __ic3_ind_gen_198 :named c1270))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1271))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1272))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1273))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1274))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1275))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1276))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1277))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1278))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1279))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1280))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1281))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1282))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_200))
;; Success 

(assert (not __ic3_ind_gen_199))
;; Success 

(assert (not __ic3_ind_gen_198))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 201 

(declare-fun __ic3_ind_gen_201 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_201
 (not
  (or
   (not f152@1)
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (* 1 f147@1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f144@1) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 202 

(declare-fun __ic3_ind_gen_202 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_202
 (not
  (or
   (not f152@0)
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (* 1 f147@0) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f144@0) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 203 

(declare-fun __ic3_ind_gen_203 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_203
 (or
  (not f152@0)
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f144@0) 0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_202 :named c1283))
;; Success 

(assert (! __ic3_frame_0 :named c1284))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1285))
;; Success 

(assert (! __ic3_ind_gen_203 :named c1286))
;; Success 

(assert (! __ic3_ind_gen_201 :named c1287))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1288))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1289))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1290))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1291))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1292))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1293))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1294))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1295))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1296))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1297))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1298))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1299))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_203))
;; Success 

(assert (not __ic3_ind_gen_202))
;; Success 

(assert (not __ic3_ind_gen_201))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 204 

(declare-fun __ic3_ind_gen_204 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_204
 (not
  (or
   (not f152@1)
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (* 1 f147@1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f144@1) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 205 

(declare-fun __ic3_ind_gen_205 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_205
 (not
  (or
   (not f152@0)
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (* 1 f147@0) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f144@0) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 206 

(declare-fun __ic3_ind_gen_206 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_206
 (or
  (not f152@0)
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f144@0) 0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_205 :named c1300))
;; Success 

(assert (! __ic3_frame_0 :named c1301))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1302))
;; Success 

(assert (! __ic3_ind_gen_206 :named c1303))
;; Success 

(assert (! __ic3_ind_gen_204 :named c1304))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1305))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1306))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1307))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1308))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1309))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1310))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1311))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1312))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1313))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1314))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1315))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1316))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_206))
;; Success 

(assert (not __ic3_ind_gen_205))
;; Success 

(assert (not __ic3_ind_gen_204))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 207 

(declare-fun __ic3_ind_gen_207 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_207
 (not
  (or
   (not f152@1)
   (not (> (* 1 f147@1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f144@1) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 208 

(declare-fun __ic3_ind_gen_208 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_208
 (not
  (or
   (not f152@0)
   (not (> (* 1 f147@0) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f144@0) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 209 

(declare-fun __ic3_ind_gen_209 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_209
 (or
  (not f152@0)
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f144@0) 0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_208 :named c1317))
;; Success 

(assert (! __ic3_frame_0 :named c1318))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1319))
;; Success 

(assert (! __ic3_ind_gen_209 :named c1320))
;; Success 

(assert (! __ic3_ind_gen_207 :named c1321))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1322))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1323))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1324))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1325))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1326))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1327))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1328))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1329))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1330))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1331))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1332))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1333))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_209))
;; Success 

(assert (not __ic3_ind_gen_208))
;; Success 

(assert (not __ic3_ind_gen_207))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 210 

(declare-fun __ic3_ind_gen_210 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_210
 (not
  (or
   (not f152@1)
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f144@1) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 211 

(declare-fun __ic3_ind_gen_211 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_211
 (not
  (or
   (not f152@0)
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f144@0) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 212 

(declare-fun __ic3_ind_gen_212 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_212
 (or
  (not f152@0)
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f144@0) 0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_211 :named c1334))
;; Success 

(assert (! __ic3_frame_0 :named c1335))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1336))
;; Success 

(assert (! __ic3_ind_gen_212 :named c1337))
;; Success 

(assert (! __ic3_ind_gen_210 :named c1338))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1339))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1340))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1341))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1342))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1343))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1344))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1345))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1346))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1347))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1348))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1349))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1350))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_212))
;; Success 

(assert (not __ic3_ind_gen_211))
;; Success 

(assert (not __ic3_ind_gen_210))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 213 

(declare-fun __ic3_ind_gen_213 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_213
 (not
  (or
   (not (> (* 1 f147@1) 0))
   (not f152@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f144@1) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 214 

(declare-fun __ic3_ind_gen_214 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_214
 (not
  (or
   (not (> (* 1 f147@0) 0))
   (not f152@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f144@0) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 215 

(declare-fun __ic3_ind_gen_215 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_215
 (or
  (not (> (* 1 f147@0) 0))
  (not f152@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f144@0) 0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_214 :named c1351))
;; Success 

(assert (! __ic3_frame_0 :named c1352))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1353))
;; Success 

(assert (! __ic3_ind_gen_215 :named c1354))
;; Success 

(assert (! __ic3_ind_gen_213 :named c1355))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1356))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1357))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1358))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1359))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1360))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1361))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1362))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1363))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1364))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1365))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1366))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1367))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_215))
;; Success 

(assert (not __ic3_ind_gen_214))
;; Success 

(assert (not __ic3_ind_gen_213))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 216 

(declare-fun __ic3_ind_gen_216 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_216
 (not
  (or
   (not (> (* 1 f147@1) 0))
   (not f152@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f144@1) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 217 

(declare-fun __ic3_ind_gen_217 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_217
 (not
  (or
   (not (> (* 1 f147@0) 0))
   (not f152@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f144@0) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 218 

(declare-fun __ic3_ind_gen_218 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_218
 (or
  (not (> (* 1 f147@0) 0))
  (not f152@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f144@0) 0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_217 :named c1368))
;; Success 

(assert (! __ic3_frame_0 :named c1369))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1370))
;; Success 

(assert (! __ic3_ind_gen_218 :named c1371))
;; Success 

(assert (! __ic3_ind_gen_216 :named c1372))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1373))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1374))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1375))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1376))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1377))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1378))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1379))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1380))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1381))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1382))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1383))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1384))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_218))
;; Success 

(assert (not __ic3_ind_gen_217))
;; Success 

(assert (not __ic3_ind_gen_216))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 219 

(declare-fun __ic3_ind_gen_219 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_219
 (not
  (or (not (> (* 1 f147@1) 0)) (not f152@1) (not (> (+ (* 1 f144@1) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 220 

(declare-fun __ic3_ind_gen_220 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_220
 (not
  (or (not (> (* 1 f147@0) 0)) (not f152@0) (not (> (+ (* 1 f144@0) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 221 

(declare-fun __ic3_ind_gen_221 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_221
 (or (not (> (* 1 f147@0) 0)) (not f152@0) (not (> (+ (* 1 f144@0) 0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_220 :named c1385))
;; Success 

(assert (! __ic3_frame_0 :named c1386))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1387))
;; Success 

(assert (! __ic3_ind_gen_221 :named c1388))
;; Success 

(assert (! __ic3_ind_gen_219 :named c1389))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1390))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1391))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1392))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1393))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1394))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1395))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1396))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1397))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1398))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1399))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1400))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1401))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_221))
;; Success 

(assert (not __ic3_ind_gen_220))
;; Success 

(assert (not __ic3_ind_gen_219))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 222 

(declare-fun __ic3_ind_gen_222 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_222 (not (or (not (> (* 1 f147@1) 0)) (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 223 

(declare-fun __ic3_ind_gen_223 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_223 (not (or (not (> (* 1 f147@0) 0)) (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 224 

(declare-fun __ic3_ind_gen_224 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_224 (or (not (> (* 1 f147@0) 0)) (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_223 :named c1402))
;; Success 

(assert (! __ic3_frame_0 :named c1403))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1404))
;; Success 

(assert (! __ic3_ind_gen_224 :named c1405))
;; Success 

(assert (! __ic3_ind_gen_222 :named c1406))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1407))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1408))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1409))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1410))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1411))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1412))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1413))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1414))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1415))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1416))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1417))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1418))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_224))
;; Success 

(assert (not __ic3_ind_gen_223))
;; Success 

(assert (not __ic3_ind_gen_222))
;; Success 

;; ind_generalize: Dropped 11 literals from clause. 

;; Deactivating activation literals for clause 

;; New clause from inductive generalization of #27: 
;; #28 {(not top.res.abs_8@0); 
;;      (not (> (* 1 top.res.abs_3@0) 0)); 
;;      (not (> (+ (* 1 top.res.abs_0@0) 0) 0))} 

;; block: Is blocking clause relative inductive to R_1? 

(declare-fun __ic3_clause_28_n1_0 () Bool)
;; Success 

(assert (=> __ic3_clause_28_n1_0 f152@1))
;; Success 

(declare-fun __ic3_clause_28_n1_1 () Bool)
;; Success 

(assert (=> __ic3_clause_28_n1_1 (> (* 1 f147@1) 0)))
;; Success 

(declare-fun __ic3_clause_28_n1_2 () Bool)
;; Success 

(assert (=> __ic3_clause_28_n1_2 (> (+ (* 1 f144@1) 0) 0)))
;; Success 

(declare-fun __ic3_clause_28_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_28_p0
 (or (not f152@0) (not (> (* 1 f147@0) 0)) (not (> (+ (* 1 f144@0) 0) 0)))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_28_p0 :named c1419))
;; Success 

(assert (! __ic3_clause_28_n1_0 :named c1420))
;; Success 

(assert (! __ic3_clause_28_n1_1 :named c1421))
;; Success 

(assert (! __ic3_clause_28_n1_2 :named c1422))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1423))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1424))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1425))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1426))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1427))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1428))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1429))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1430))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1431))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1432))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1433))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1434))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c1429 c1420 c1421 c1422 c1427 c1432 c1433) 

(pop 1)
;; Success 

;; block: Check I |= C to get unsat core. 

(declare-fun __ic3_clause_28_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_28_n0_0 f152@0))
;; Success 

(declare-fun __ic3_clause_28_n0_1 () Bool)
;; Success 

(assert (=> __ic3_clause_28_n0_1 (> (* 1 f147@0) 0)))
;; Success 

(declare-fun __ic3_clause_28_n0_2 () Bool)
;; Success 

(assert (=> __ic3_clause_28_n0_2 (> (+ (* 1 f144@0) 0) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1435))
;; Success 

(assert (! __ic3_clause_28_n0_0 :named c1436))
;; Success 

(assert (! __ic3_clause_28_n0_1 :named c1437))
;; Success 

(assert (! __ic3_clause_28_n0_2 :named c1438))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c1437 c1435) 

(pop 1)
;; Success 

;; block: Reduced clause 
;; (or 
;;  (not top.res.abs_8@0) 
;;  (not (> (* 1 top.res.abs_3@0) 0)) 
;;  (not (> (+ (* 1 top.res.abs_0@0) 0) 0))) 
;; with unsat core to 
;; (or 
;;  (not (> (+ (* 1 top.res.abs_0@0) 0) 0)) 
;;  (not (> (* 1 top.res.abs_3@0) 0)) 
;;  (not top.res.abs_8@0)) 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 225 

(declare-fun __ic3_ind_gen_225 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_225 (not (or (not (> (* 1 f147@1) 0)) (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 226 

(declare-fun __ic3_ind_gen_226 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_226 (not (or (not (> (* 1 f147@0) 0)) (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 227 

(declare-fun __ic3_ind_gen_227 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_227 (or (not (> (* 1 f147@0) 0)) (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_226 :named c1439))
;; Success 

(assert (! __ic3_frame_0 :named c1440))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1441))
;; Success 

(assert (! __ic3_ind_gen_227 :named c1442))
;; Success 

(assert (! __ic3_ind_gen_225 :named c1443))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1444))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1445))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1446))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1447))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1448))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1449))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1450))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1451))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1452))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1453))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1454))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1455))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_227))
;; Success 

(assert (not __ic3_ind_gen_226))
;; Success 

(assert (not __ic3_ind_gen_225))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 228 

(declare-fun __ic3_ind_gen_228 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_228 (not (or (not (> (+ (* 1 f144@1) 0) 0)) (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 229 

(declare-fun __ic3_ind_gen_229 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_229 (not (or (not (> (+ (* 1 f144@0) 0) 0)) (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 230 

(declare-fun __ic3_ind_gen_230 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_230 (or (not (> (+ (* 1 f144@0) 0) 0)) (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_229 :named c1456))
;; Success 

(assert (! __ic3_frame_0 :named c1457))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1458))
;; Success 

(assert (! __ic3_ind_gen_230 :named c1459))
;; Success 

(assert (! __ic3_ind_gen_228 :named c1460))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1461))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1462))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1463))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1464))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1465))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1466))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1467))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1468))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1469))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1470))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1471))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1472))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_230))
;; Success 

(assert (not __ic3_ind_gen_229))
;; Success 

(assert (not __ic3_ind_gen_228))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 231 

(declare-fun __ic3_ind_gen_231 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_231
 (not (or (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 232 

(declare-fun __ic3_ind_gen_232 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_232
 (not (or (not (> (* 1 f147@0) 0)) (not (> (+ (* 1 f144@0) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 233 

(declare-fun __ic3_ind_gen_233 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_233
 (or (not (> (* 1 f147@0) 0)) (not (> (+ (* 1 f144@0) 0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_232 :named c1473))
;; Success 

(assert (! __ic3_frame_0 :named c1474))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1475))
;; Success 

(assert (! __ic3_ind_gen_233 :named c1476))
;; Success 

(assert (! __ic3_ind_gen_231 :named c1477))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1478))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1479))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1480))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1481))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1482))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1483))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1484))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1485))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1486))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1487))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1488))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1489))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_233))
;; Success 

(assert (not __ic3_ind_gen_232))
;; Success 

(assert (not __ic3_ind_gen_231))
;; Success 

;; block: Reduced clause 
;; (or 
;;  (not (> (+ (* 1 top.res.abs_0@0) 0) 0)) 
;;  (not (> (* 1 top.res.abs_3@0) 0)) 
;;  (not top.res.abs_8@0)) 
;; with ind. gen. to 
;; (or 
;;  (not top.res.abs_8@0) 
;;  (not (> (* 1 top.res.abs_3@0) 0)) 
;;  (not (> (+ (* 1 top.res.abs_0@0) 0) 0))) 

;; check_frames: frames k to 1 
;;  
;; Frame: 
;; 16 
;; 17 
;; 28 
;; 5 
;; 7 
;; 24 
;;  
;; Frame: 
;; 26 
;; 9 
;; 15 
;; 11 
;; 13 
;; 22 

;; check_frames: Does R_2 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c1490))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1491))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1492))
;; Success 

(assert (! __ic3_clause_28_p0 :named c1493))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1494))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1495))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1496))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1497))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1498))
;; Success 

(assert (! __ic3_clause_28_p0 :named c1499))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1500))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1501))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1502))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1503))
;; Success 

(assert (! __ic3_clause_16_n0_0 :named c1504))
;; Success 

(assert (! __ic3_clause_16_n0_1 :named c1505))
;; Success 

(assert (! __ic3_clause_16_n0_2 :named c1506))
;; Success 

(assert (! __ic3_clause_16_n0_3 :named c1507))
;; Success 

(assert (! __ic3_clause_16_n0_4 :named c1508))
;; Success 

(assert (! __ic3_clause_16_n0_5 :named c1509))
;; Success 

(assert (! __ic3_clause_16_n0_6 :named c1510))
;; Success 

(assert (! __ic3_clause_16_n0_7 :named c1511))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1512))
;; Success 

(assert (! __ic3_clause_17_n0_0 :named c1513))
;; Success 

(assert (! __ic3_clause_17_n0_1 :named c1514))
;; Success 

(assert (! __ic3_clause_17_n0_2 :named c1515))
;; Success 

(assert (! __ic3_clause_17_n0_3 :named c1516))
;; Success 

(assert (! __ic3_clause_17_n0_4 :named c1517))
;; Success 

(assert (! __ic3_clause_17_n0_5 :named c1518))
;; Success 

(assert (! __ic3_clause_17_n0_6 :named c1519))
;; Success 

(assert (! __ic3_clause_17_n0_7 :named c1520))
;; Success 

(assert (! __ic3_clause_17_n0_8 :named c1521))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1522))
;; Success 

(assert (! __ic3_clause_28_n0_0 :named c1523))
;; Success 

(assert (! __ic3_clause_28_n0_1 :named c1524))
;; Success 

(assert (! __ic3_clause_28_n0_2 :named c1525))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1526))
;; Success 

(assert (! __ic3_clause_5_n0_0 :named c1527))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1528))
;; Success 

(assert (! __ic3_clause_7_n0_0 :named c1529))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1530))
;; Success 

(assert (! __ic3_clause_24_n0_0 :named c1531))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_1 & T |= R_2 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 15 

(declare-fun __ic3_check_frames_15 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_15
 (not
  (and
   f105@1
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or (not f152@1) (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or (not f152@1) (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_15 :named c1532))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1533))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1534))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1535))
;; Success 

(assert (! __ic3_clause_28_p0 :named c1536))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1537))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1538))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1539))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1540))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1541))
;; Success 

(assert (! __ic3_clause_28_p0 :named c1542))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1543))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1544))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1545))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1546))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1547))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1548))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1549))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1550))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1551))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_15))
;; Success 

;; check_frames: Does R_1 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c1552))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1553))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1554))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1555))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1556))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1557))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1558))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1559))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1560))
;; Success 

(assert (! __ic3_clause_28_p0 :named c1561))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1562))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1563))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1564))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1565))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1566))
;; Success 

(assert (! __ic3_clause_28_p0 :named c1567))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1568))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1569))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1570))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1571))
;; Success 

(assert (! __ic3_clause_26_n0_0 :named c1572))
;; Success 

(assert (! __ic3_clause_26_n0_1 :named c1573))
;; Success 

(assert (! __ic3_clause_26_n0_2 :named c1574))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1575))
;; Success 

(assert (! __ic3_clause_9_n0_0 :named c1576))
;; Success 

(assert (! __ic3_clause_9_n0_1 :named c1577))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1578))
;; Success 

(assert (! __ic3_clause_15_n0_0 :named c1579))
;; Success 

(assert (! __ic3_clause_15_n0_1 :named c1580))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1581))
;; Success 

(assert (! __ic3_clause_11_n0_0 :named c1582))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1583))
;; Success 

(assert (! __ic3_clause_13_n0_0 :named c1584))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1585))
;; Success 

(assert (! __ic3_clause_22_n0_0 :named c1586))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_0 & T |= R_1 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 16 

(declare-fun __ic3_check_frames_16 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_16
 (not
  (and
   f105@1
   (or (not f152@1) (not (> (* 1 f144@1) 0)) (not (> (* 1 f147@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (not (> (* 1 f145@1) 0))
   (not (> (* 1 f146@1) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or (not f152@1) (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or (not f152@1) (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_16 :named c1587))
;; Success 

(assert (! __ic3_frame_0 :named c1588))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_16))
;; Success 

;; block: Is blocking clause relative inductive to R_1? 

(push 1)
;; Success 

(assert (! __ic3_clause_20_p0 :named c1589))
;; Success 

(assert (! __ic3_clause_20_n1_0 :named c1590))
;; Success 

(assert (! __ic3_clause_20_n1_1 :named c1591))
;; Success 

(assert (! __ic3_clause_20_n1_2 :named c1592))
;; Success 

(assert (! __ic3_clause_20_n1_3 :named c1593))
;; Success 

(assert (! __ic3_clause_20_n1_4 :named c1594))
;; Success 

(assert (! __ic3_clause_20_n1_5 :named c1595))
;; Success 

(assert (! __ic3_clause_20_n1_6 :named c1596))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1597))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1598))
;; Success 

(assert (! __ic3_clause_28_p0 :named c1599))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1600))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1601))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1602))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1603))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1604))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1605))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1606))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1607))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1608))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1609))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c1604 c1605 c1591 c1594 c1595 c1601 c1602 c1607 c1608) 

(pop 1)
;; Success 

;; block: Check I |= C to get unsat core. 

(declare-fun __ic3_clause_20_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_20_n0_0 f105@0))
;; Success 

(declare-fun __ic3_clause_20_n0_1 () Bool)
;; Success 

(assert (=> __ic3_clause_20_n0_1 f152@0))
;; Success 

(declare-fun __ic3_clause_20_n0_2 () Bool)
;; Success 

(assert (=> __ic3_clause_20_n0_2 (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0)))
;; Success 

(declare-fun __ic3_clause_20_n0_3 () Bool)
;; Success 

(assert (=> __ic3_clause_20_n0_3 (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_20_n0_4 () Bool)
;; Success 

(assert (=> __ic3_clause_20_n0_4 (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_20_n0_5 () Bool)
;; Success 

(assert (=> __ic3_clause_20_n0_5 (> (* 1 f144@0) 0)))
;; Success 

(declare-fun __ic3_clause_20_n0_6 () Bool)
;; Success 

(assert (=> __ic3_clause_20_n0_6 (> (+ (* (- 1) f144@0) 3) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1610))
;; Success 

(assert (! __ic3_clause_20_n0_0 :named c1611))
;; Success 

(assert (! __ic3_clause_20_n0_1 :named c1612))
;; Success 

(assert (! __ic3_clause_20_n0_2 :named c1613))
;; Success 

(assert (! __ic3_clause_20_n0_3 :named c1614))
;; Success 

(assert (! __ic3_clause_20_n0_4 :named c1615))
;; Success 

(assert (! __ic3_clause_20_n0_5 :named c1616))
;; Success 

(assert (! __ic3_clause_20_n0_6 :named c1617))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c1610 c1616) 

(pop 1)
;; Success 

;; block: Reduced clause 
;; (or 
;;  (not top.usr.OK@0) 
;;  (not top.res.abs_8@0) 
;;  (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)) 
;;  (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)) 
;;  (not (> (* 1 top.res.abs_0@0) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_0@0) 3) 0))) 
;; with unsat core to 
;; (or 
;;  (not (> (* 1 top.res.abs_0@0) 0)) 
;;  (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)) 
;;  (not top.res.abs_8@0)) 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 234 

(declare-fun __ic3_ind_gen_234 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_234
 (not (or (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0)) (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 235 

(declare-fun __ic3_ind_gen_235 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_235
 (not (or (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0)) (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 236 

(declare-fun __ic3_ind_gen_236 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_236
 (or (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0)) (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_235 :named c1618))
;; Success 

(assert (! __ic3_frame_0 :named c1619))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_236))
;; Success 

(assert (not __ic3_ind_gen_235))
;; Success 

(assert (not __ic3_ind_gen_234))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 237 

(declare-fun __ic3_ind_gen_237 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_237 (not (or (not (> (* 1 f144@1) 0)) (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 238 

(declare-fun __ic3_ind_gen_238 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_238 (not (or (not (> (* 1 f144@0) 0)) (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 239 

(declare-fun __ic3_ind_gen_239 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_239 (or (not (> (* 1 f144@0) 0)) (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_238 :named c1620))
;; Success 

(assert (! __ic3_frame_0 :named c1621))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1622))
;; Success 

(assert (! __ic3_ind_gen_239 :named c1623))
;; Success 

(assert (! __ic3_ind_gen_237 :named c1624))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1625))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1626))
;; Success 

(assert (! __ic3_clause_28_p0 :named c1627))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1628))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1629))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1630))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1631))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1632))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1633))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1634))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1635))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1636))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1637))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_239))
;; Success 

(assert (not __ic3_ind_gen_238))
;; Success 

(assert (not __ic3_ind_gen_237))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 240 

(declare-fun __ic3_ind_gen_240 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_240
 (not
  (or
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f144@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 241 

(declare-fun __ic3_ind_gen_241 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_241
 (not
  (or
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f144@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 242 

(declare-fun __ic3_ind_gen_242 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_242
 (or
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f144@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_241 :named c1638))
;; Success 

(assert (! __ic3_frame_0 :named c1639))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1640))
;; Success 

(assert (! __ic3_ind_gen_242 :named c1641))
;; Success 

(assert (! __ic3_ind_gen_240 :named c1642))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1643))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1644))
;; Success 

(assert (! __ic3_clause_28_p0 :named c1645))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1646))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1647))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1648))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1649))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1650))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1651))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1652))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1653))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1654))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1655))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_242))
;; Success 

(assert (not __ic3_ind_gen_241))
;; Success 

(assert (not __ic3_ind_gen_240))
;; Success 

;; ind_generalize: Dropped 4 literals from clause. 

;; Deactivating activation literals for clause 

(assert (not __ic3_clause_20_p0))
;; Success 

(assert (not __ic3_clause_20_n0_0))
;; Success 

(assert (not __ic3_clause_20_n0_1))
;; Success 

(assert (not __ic3_clause_20_n0_2))
;; Success 

(assert (not __ic3_clause_20_n0_3))
;; Success 

(assert (not __ic3_clause_20_n0_4))
;; Success 

(assert (not __ic3_clause_20_n0_5))
;; Success 

(assert (not __ic3_clause_20_n0_6))
;; Success 

(assert (not __ic3_clause_20_n1_0))
;; Success 

(assert (not __ic3_clause_20_n1_1))
;; Success 

(assert (not __ic3_clause_20_n1_2))
;; Success 

(assert (not __ic3_clause_20_n1_3))
;; Success 

(assert (not __ic3_clause_20_n1_4))
;; Success 

(assert (not __ic3_clause_20_n1_5))
;; Success 

(assert (not __ic3_clause_20_n1_6))
;; Success 

;; New clause from inductive generalization of #20: 
;; #29 {(not top.res.abs_8@0); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_0@0) 0))} 

;; block: Reduced clause 
;; (or 
;;  (not (> (* 1 top.res.abs_0@0) 0)) 
;;  (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)) 
;;  (not top.res.abs_8@0)) 
;; with ind. gen. to 
;; (or 
;;  (not top.res.abs_8@0) 
;;  (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)) 
;;  (not (> (* 1 top.res.abs_0@0) 0))) 

(declare-fun __ic3_clause_29_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_29_p0
 (or
  (not f152@0)
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f144@0) 0)))))
;; Success 

;; check_frames: frames k to 1 
;;  
;; Frame: 
;; 16 
;; 17 
;; 29 
;; 28 
;; 5 
;; 7 
;; 24 
;;  
;; Frame: 
;; 26 
;; 9 
;; 15 
;; 11 
;; 13 
;; 22 

;; check_frames: Does R_2 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c1656))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1657))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1658))
;; Success 

(assert (! __ic3_clause_29_p0 :named c1659))
;; Success 

(assert (! __ic3_clause_28_p0 :named c1660))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1661))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1662))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1663))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1664))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1665))
;; Success 

(assert (! __ic3_clause_29_p0 :named c1666))
;; Success 

(assert (! __ic3_clause_28_p0 :named c1667))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1668))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1669))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1670))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1671))
;; Success 

(assert (! __ic3_clause_16_n0_0 :named c1672))
;; Success 

(assert (! __ic3_clause_16_n0_1 :named c1673))
;; Success 

(assert (! __ic3_clause_16_n0_2 :named c1674))
;; Success 

(assert (! __ic3_clause_16_n0_3 :named c1675))
;; Success 

(assert (! __ic3_clause_16_n0_4 :named c1676))
;; Success 

(assert (! __ic3_clause_16_n0_5 :named c1677))
;; Success 

(assert (! __ic3_clause_16_n0_6 :named c1678))
;; Success 

(assert (! __ic3_clause_16_n0_7 :named c1679))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1680))
;; Success 

(assert (! __ic3_clause_17_n0_0 :named c1681))
;; Success 

(assert (! __ic3_clause_17_n0_1 :named c1682))
;; Success 

(assert (! __ic3_clause_17_n0_2 :named c1683))
;; Success 

(assert (! __ic3_clause_17_n0_3 :named c1684))
;; Success 

(assert (! __ic3_clause_17_n0_4 :named c1685))
;; Success 

(assert (! __ic3_clause_17_n0_5 :named c1686))
;; Success 

(assert (! __ic3_clause_17_n0_6 :named c1687))
;; Success 

(assert (! __ic3_clause_17_n0_7 :named c1688))
;; Success 

(assert (! __ic3_clause_17_n0_8 :named c1689))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(declare-fun __ic3_clause_29_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_29_n0_0 f152@0))
;; Success 

(declare-fun __ic3_clause_29_n0_1 () Bool)
;; Success 

(assert (=> __ic3_clause_29_n0_1 (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_29_n0_2 () Bool)
;; Success 

(assert (=> __ic3_clause_29_n0_2 (> (* 1 f144@0) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1690))
;; Success 

(assert (! __ic3_clause_29_n0_0 :named c1691))
;; Success 

(assert (! __ic3_clause_29_n0_1 :named c1692))
;; Success 

(assert (! __ic3_clause_29_n0_2 :named c1693))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1694))
;; Success 

(assert (! __ic3_clause_28_n0_0 :named c1695))
;; Success 

(assert (! __ic3_clause_28_n0_1 :named c1696))
;; Success 

(assert (! __ic3_clause_28_n0_2 :named c1697))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1698))
;; Success 

(assert (! __ic3_clause_5_n0_0 :named c1699))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1700))
;; Success 

(assert (! __ic3_clause_7_n0_0 :named c1701))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1702))
;; Success 

(assert (! __ic3_clause_24_n0_0 :named c1703))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_1 & T |= R_2 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 17 

(declare-fun __ic3_check_frames_17 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_17
 (not
  (and
   f105@1
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or (not f152@1) (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or (not f152@1) (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_17 :named c1704))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1705))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1706))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1707))
;; Success 

(assert (! __ic3_clause_29_p0 :named c1708))
;; Success 

(assert (! __ic3_clause_28_p0 :named c1709))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1710))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1711))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1712))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1713))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1714))
;; Success 

(assert (! __ic3_clause_29_p0 :named c1715))
;; Success 

(assert (! __ic3_clause_28_p0 :named c1716))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1717))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1718))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1719))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1720))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1721))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1722))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1723))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1724))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1725))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_17))
;; Success 

;; check_frames: Does R_1 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c1726))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1727))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1728))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1729))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1730))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1731))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1732))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1733))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1734))
;; Success 

(assert (! __ic3_clause_29_p0 :named c1735))
;; Success 

(assert (! __ic3_clause_28_p0 :named c1736))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1737))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1738))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1739))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1740))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1741))
;; Success 

(assert (! __ic3_clause_29_p0 :named c1742))
;; Success 

(assert (! __ic3_clause_28_p0 :named c1743))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1744))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1745))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1746))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1747))
;; Success 

(assert (! __ic3_clause_26_n0_0 :named c1748))
;; Success 

(assert (! __ic3_clause_26_n0_1 :named c1749))
;; Success 

(assert (! __ic3_clause_26_n0_2 :named c1750))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1751))
;; Success 

(assert (! __ic3_clause_9_n0_0 :named c1752))
;; Success 

(assert (! __ic3_clause_9_n0_1 :named c1753))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1754))
;; Success 

(assert (! __ic3_clause_15_n0_0 :named c1755))
;; Success 

(assert (! __ic3_clause_15_n0_1 :named c1756))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1757))
;; Success 

(assert (! __ic3_clause_11_n0_0 :named c1758))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1759))
;; Success 

(assert (! __ic3_clause_13_n0_0 :named c1760))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1761))
;; Success 

(assert (! __ic3_clause_22_n0_0 :named c1762))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_0 & T |= R_1 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 18 

(declare-fun __ic3_check_frames_18 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_18
 (not
  (and
   f105@1
   (or (not f152@1) (not (> (* 1 f144@1) 0)) (not (> (* 1 f147@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (not (> (* 1 f145@1) 0))
   (not (> (* 1 f146@1) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or (not f152@1) (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or (not f152@1) (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_18 :named c1763))
;; Success 

(assert (! __ic3_frame_0 :named c1764))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_18))
;; Success 

;; block: All counterexamples blocked in R_2 

;; block: Check if all successors of frontier R_2 are safe. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1765))
;; Success 

(assert (! __ic3_clause_3_n1_0 :named c1766))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1767))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1768))
;; Success 

(assert (! __ic3_clause_29_p0 :named c1769))
;; Success 

(assert (! __ic3_clause_28_p0 :named c1770))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1771))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1772))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1773))
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
;;     (f147@1 1) 
;;     (f146@1 (- 1)) 
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
;;     (f100@1 true) 
;;     (f99@1 false) 
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
;;     (f153@0 1) 
;;     (f152@0 true) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 1) 
;;     (f147@0 2) 
;;     (f146@0 (- 1)) 
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
;; #30 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_1@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_2@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_3@0) 0))} 

;; block: Is blocking clause relative inductive to R_1? 

(declare-fun __ic3_clause_30_n1_0 () Bool)
;; Success 

(assert (=> __ic3_clause_30_n1_0 f105@1))
;; Success 

(declare-fun __ic3_clause_30_n1_1 () Bool)
;; Success 

(assert (=> __ic3_clause_30_n1_1 f152@1))
;; Success 

(declare-fun __ic3_clause_30_n1_2 () Bool)
;; Success 

(assert (=> __ic3_clause_30_n1_2 (> (+ (* (- 1) f144@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_30_n1_3 () Bool)
;; Success 

(assert (=> __ic3_clause_30_n1_3 (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0)))
;; Success 

(declare-fun __ic3_clause_30_n1_4 () Bool)
;; Success 

(assert (=> __ic3_clause_30_n1_4 (> (+ (* (- 1) f144@1) 2) 0)))
;; Success 

(declare-fun __ic3_clause_30_n1_5 () Bool)
;; Success 

(assert (=> __ic3_clause_30_n1_5 (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_30_n1_6 () Bool)
;; Success 

(assert (=> __ic3_clause_30_n1_6 (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_30_n1_7 () Bool)
;; Success 

(assert (=> __ic3_clause_30_n1_7 (> (+ (* (- 1) f145@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_30_n1_8 () Bool)
;; Success 

(assert (=> __ic3_clause_30_n1_8 (> (+ (* (- 1) f146@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_30_n1_9 () Bool)
;; Success 

(assert (=> __ic3_clause_30_n1_9 (> (* 1 f147@1) 0)))
;; Success 

(declare-fun __ic3_clause_30_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_30_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0)))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_30_p0 :named c1774))
;; Success 

(assert (! __ic3_clause_30_n1_0 :named c1775))
;; Success 

(assert (! __ic3_clause_30_n1_1 :named c1776))
;; Success 

(assert (! __ic3_clause_30_n1_2 :named c1777))
;; Success 

(assert (! __ic3_clause_30_n1_3 :named c1778))
;; Success 

(assert (! __ic3_clause_30_n1_4 :named c1779))
;; Success 

(assert (! __ic3_clause_30_n1_5 :named c1780))
;; Success 

(assert (! __ic3_clause_30_n1_6 :named c1781))
;; Success 

(assert (! __ic3_clause_30_n1_7 :named c1782))
;; Success 

(assert (! __ic3_clause_30_n1_8 :named c1783))
;; Success 

(assert (! __ic3_clause_30_n1_9 :named c1784))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1785))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1786))
;; Success 

(assert (! __ic3_clause_29_p0 :named c1787))
;; Success 

(assert (! __ic3_clause_28_p0 :named c1788))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1789))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1790))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1791))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1792))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1793))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1794))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1795))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1796))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1797))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1798))
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
;;     (f148@1 2) 
;;     (f147@1 1) 
;;     (f146@1 (- 1)) 
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
;;     (f100@1 true) 
;;     (f99@1 false) 
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
;;     (f153@0 2) 
;;     (f152@0 true) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 1) 
;;     (f147@0 2) 
;;     (f146@0 (- 1)) 
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

;; New clause at depth 1 to block #30: 
;; #31 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_1@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_2@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_3@0) 0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 0) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0)) 0)); 
;;      (not (> (+ (* 1 top.res.abs_3@0) (- 1)) 0))} 

;; block: Is blocking clause relative inductive to R_0? 

(declare-fun __ic3_clause_31_n1_0 () Bool)
;; Success 

(assert (=> __ic3_clause_31_n1_0 f105@1))
;; Success 

(declare-fun __ic3_clause_31_n1_1 () Bool)
;; Success 

(assert (=> __ic3_clause_31_n1_1 f152@1))
;; Success 

(declare-fun __ic3_clause_31_n1_2 () Bool)
;; Success 

(assert (=> __ic3_clause_31_n1_2 (> (+ (* (- 1) f144@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_31_n1_3 () Bool)
;; Success 

(assert (=> __ic3_clause_31_n1_3 (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0)))
;; Success 

(declare-fun __ic3_clause_31_n1_4 () Bool)
;; Success 

(assert (=> __ic3_clause_31_n1_4 (> (+ (* (- 1) f144@1) 2) 0)))
;; Success 

(declare-fun __ic3_clause_31_n1_5 () Bool)
;; Success 

(assert (=> __ic3_clause_31_n1_5 (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_31_n1_6 () Bool)
;; Success 

(assert (=> __ic3_clause_31_n1_6 (> (+ (* (- 1) f145@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_31_n1_7 () Bool)
;; Success 

(assert (=> __ic3_clause_31_n1_7 (> (+ (* (- 1) f146@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_31_n1_8 () Bool)
;; Success 

(assert (=> __ic3_clause_31_n1_8 (> (* 1 f147@1) 0)))
;; Success 

(declare-fun __ic3_clause_31_n1_9 () Bool)
;; Success 

(assert (=> __ic3_clause_31_n1_9 (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0)))
;; Success 

(declare-fun __ic3_clause_31_n1_10 () Bool)
;; Success 

(assert (=> __ic3_clause_31_n1_10 (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0)))
;; Success 

(declare-fun __ic3_clause_31_n1_11 () Bool)
;; Success 

(assert (=> __ic3_clause_31_n1_11 (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0)))
;; Success 

(declare-fun __ic3_clause_31_n1_12 () Bool)
;; Success 

(assert (=> __ic3_clause_31_n1_12 (> (+ (* 1 f147@1) (- 1)) 0)))
;; Success 

(declare-fun __ic3_clause_31_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_31_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f147@0) (- 1)) 0)))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_31_p0 :named c1799))
;; Success 

(assert (! __ic3_clause_31_n1_0 :named c1800))
;; Success 

(assert (! __ic3_clause_31_n1_1 :named c1801))
;; Success 

(assert (! __ic3_clause_31_n1_2 :named c1802))
;; Success 

(assert (! __ic3_clause_31_n1_3 :named c1803))
;; Success 

(assert (! __ic3_clause_31_n1_4 :named c1804))
;; Success 

(assert (! __ic3_clause_31_n1_5 :named c1805))
;; Success 

(assert (! __ic3_clause_31_n1_6 :named c1806))
;; Success 

(assert (! __ic3_clause_31_n1_7 :named c1807))
;; Success 

(assert (! __ic3_clause_31_n1_8 :named c1808))
;; Success 

(assert (! __ic3_clause_31_n1_9 :named c1809))
;; Success 

(assert (! __ic3_clause_31_n1_10 :named c1810))
;; Success 

(assert (! __ic3_clause_31_n1_11 :named c1811))
;; Success 

(assert (! __ic3_clause_31_n1_12 :named c1812))
;; Success 

(assert (! __ic3_frame_0 :named c1813))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c1801 c1813 c1808 c1812) 

(pop 1)
;; Success 

;; block: Check I |= C to get unsat core. 

(declare-fun __ic3_clause_31_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_31_n0_0 f105@0))
;; Success 

(declare-fun __ic3_clause_31_n0_1 () Bool)
;; Success 

(assert (=> __ic3_clause_31_n0_1 f152@0))
;; Success 

(declare-fun __ic3_clause_31_n0_2 () Bool)
;; Success 

(assert (=> __ic3_clause_31_n0_2 (> (+ (* (- 1) f144@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_31_n0_3 () Bool)
;; Success 

(assert (=> __ic3_clause_31_n0_3 (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0)))
;; Success 

(declare-fun __ic3_clause_31_n0_4 () Bool)
;; Success 

(assert (=> __ic3_clause_31_n0_4 (> (+ (* (- 1) f144@0) 2) 0)))
;; Success 

(declare-fun __ic3_clause_31_n0_5 () Bool)
;; Success 

(assert (=> __ic3_clause_31_n0_5 (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_31_n0_6 () Bool)
;; Success 

(assert (=> __ic3_clause_31_n0_6 (> (+ (* (- 1) f145@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_31_n0_7 () Bool)
;; Success 

(assert (=> __ic3_clause_31_n0_7 (> (+ (* (- 1) f146@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_31_n0_8 () Bool)
;; Success 

(assert (=> __ic3_clause_31_n0_8 (> (* 1 f147@0) 0)))
;; Success 

(declare-fun __ic3_clause_31_n0_9 () Bool)
;; Success 

(assert (=> __ic3_clause_31_n0_9 (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0)))
;; Success 

(declare-fun __ic3_clause_31_n0_10 () Bool)
;; Success 

(assert (=> __ic3_clause_31_n0_10 (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0)))
;; Success 

(declare-fun __ic3_clause_31_n0_11 () Bool)
;; Success 

(assert (=> __ic3_clause_31_n0_11 (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0)))
;; Success 

(declare-fun __ic3_clause_31_n0_12 () Bool)
;; Success 

(assert (=> __ic3_clause_31_n0_12 (> (+ (* 1 f147@0) (- 1)) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1814))
;; Success 

(assert (! __ic3_clause_31_n0_0 :named c1815))
;; Success 

(assert (! __ic3_clause_31_n0_1 :named c1816))
;; Success 

(assert (! __ic3_clause_31_n0_2 :named c1817))
;; Success 

(assert (! __ic3_clause_31_n0_3 :named c1818))
;; Success 

(assert (! __ic3_clause_31_n0_4 :named c1819))
;; Success 

(assert (! __ic3_clause_31_n0_5 :named c1820))
;; Success 

(assert (! __ic3_clause_31_n0_6 :named c1821))
;; Success 

(assert (! __ic3_clause_31_n0_7 :named c1822))
;; Success 

(assert (! __ic3_clause_31_n0_8 :named c1823))
;; Success 

(assert (! __ic3_clause_31_n0_9 :named c1824))
;; Success 

(assert (! __ic3_clause_31_n0_10 :named c1825))
;; Success 

(assert (! __ic3_clause_31_n0_11 :named c1826))
;; Success 

(assert (! __ic3_clause_31_n0_12 :named c1827))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c1823 c1814) 

(pop 1)
;; Success 

;; block: Reduced clause 
;; (or 
;;  (not top.usr.OK@0) 
;;  (not top.res.abs_8@0) 
;;  (not (> (+ (* (- 1) top.res.abs_0@0) 1) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_0@0) 2) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_1@0) 1) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_2@0) 1) 0)) 
;;  (not (> (* 1 top.res.abs_3@0) 0)) 
;;  (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 2) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 0) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0)) 0)) 
;;  (not (> (+ (* 1 top.res.abs_3@0) (- 1)) 0))) 
;; with unsat core to 
;; (or 
;;  (not (> (+ (* 1 top.res.abs_3@0) (- 1)) 0)) 
;;  (not (> (* 1 top.res.abs_3@0) 0)) 
;;  (not top.res.abs_8@0)) 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 243 

(declare-fun __ic3_ind_gen_243 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_243 (not (or (not (> (* 1 f147@1) 0)) (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 244 

(declare-fun __ic3_ind_gen_244 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_244 (not (or (not (> (* 1 f147@0) 0)) (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 245 

(declare-fun __ic3_ind_gen_245 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_245 (or (not (> (* 1 f147@0) 0)) (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_244 :named c1828))
;; Success 

(assert (! __ic3_frame_0 :named c1829))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1830))
;; Success 

(assert (! __ic3_ind_gen_245 :named c1831))
;; Success 

(assert (! __ic3_ind_gen_243 :named c1832))
;; Success 

(assert (! __ic3_frame_0 :named c1833))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_245))
;; Success 

(assert (not __ic3_ind_gen_244))
;; Success 

(assert (not __ic3_ind_gen_243))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 246 

(declare-fun __ic3_ind_gen_246 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_246
 (not (or (not (> (+ (* 1 f147@1) (- 1)) 0)) (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 247 

(declare-fun __ic3_ind_gen_247 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_247
 (not (or (not (> (+ (* 1 f147@0) (- 1)) 0)) (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 248 

(declare-fun __ic3_ind_gen_248 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_248 (or (not (> (+ (* 1 f147@0) (- 1)) 0)) (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_247 :named c1834))
;; Success 

(assert (! __ic3_frame_0 :named c1835))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1836))
;; Success 

(assert (! __ic3_ind_gen_248 :named c1837))
;; Success 

(assert (! __ic3_ind_gen_246 :named c1838))
;; Success 

(assert (! __ic3_frame_0 :named c1839))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_248))
;; Success 

(assert (not __ic3_ind_gen_247))
;; Success 

(assert (not __ic3_ind_gen_246))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 249 

(declare-fun __ic3_ind_gen_249 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_249 (> (+ (* 1 f147@1) (- 1)) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 250 

(declare-fun __ic3_ind_gen_250 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_250 (> (+ (* 1 f147@0) (- 1)) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 251 

(declare-fun __ic3_ind_gen_251 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_251 (not (> (+ (* 1 f147@0) (- 1)) 0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_250 :named c1840))
;; Success 

(assert (! __ic3_frame_0 :named c1841))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1842))
;; Success 

(assert (! __ic3_ind_gen_251 :named c1843))
;; Success 

(assert (! __ic3_ind_gen_249 :named c1844))
;; Success 

(assert (! __ic3_frame_0 :named c1845))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_251))
;; Success 

(assert (not __ic3_ind_gen_250))
;; Success 

(assert (not __ic3_ind_gen_249))
;; Success 

;; ind_generalize: Dropped 12 literals from clause. 

;; Deactivating activation literals for clause 

(assert (not __ic3_clause_31_p0))
;; Success 

(assert (not __ic3_clause_31_n0_0))
;; Success 

(assert (not __ic3_clause_31_n0_1))
;; Success 

(assert (not __ic3_clause_31_n0_2))
;; Success 

(assert (not __ic3_clause_31_n0_3))
;; Success 

(assert (not __ic3_clause_31_n0_4))
;; Success 

(assert (not __ic3_clause_31_n0_5))
;; Success 

(assert (not __ic3_clause_31_n0_6))
;; Success 

(assert (not __ic3_clause_31_n0_7))
;; Success 

(assert (not __ic3_clause_31_n0_8))
;; Success 

(assert (not __ic3_clause_31_n0_9))
;; Success 

(assert (not __ic3_clause_31_n0_10))
;; Success 

(assert (not __ic3_clause_31_n0_11))
;; Success 

(assert (not __ic3_clause_31_n0_12))
;; Success 

(assert (not __ic3_clause_31_n1_0))
;; Success 

(assert (not __ic3_clause_31_n1_1))
;; Success 

(assert (not __ic3_clause_31_n1_2))
;; Success 

(assert (not __ic3_clause_31_n1_3))
;; Success 

(assert (not __ic3_clause_31_n1_4))
;; Success 

(assert (not __ic3_clause_31_n1_5))
;; Success 

(assert (not __ic3_clause_31_n1_6))
;; Success 

(assert (not __ic3_clause_31_n1_7))
;; Success 

(assert (not __ic3_clause_31_n1_8))
;; Success 

(assert (not __ic3_clause_31_n1_9))
;; Success 

(assert (not __ic3_clause_31_n1_10))
;; Success 

(assert (not __ic3_clause_31_n1_11))
;; Success 

(assert (not __ic3_clause_31_n1_12))
;; Success 

;; New clause from inductive generalization of #31: 
;; #32 {(not (> (+ (* 1 top.res.abs_3@0) (- 1)) 0))} 

;; block: Reduced clause 
;; (or 
;;  (not (> (+ (* 1 top.res.abs_3@0) (- 1)) 0)) 
;;  (not (> (* 1 top.res.abs_3@0) 0)) 
;;  (not top.res.abs_8@0)) 
;; with ind. gen. to 
;; (not (> (+ (* 1 top.res.abs_3@0) (- 1)) 0)) 

;; Copied clause #31 for blocking at depth 0: 
;; #33 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_1@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_2@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_3@0) 0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 0) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0)) 0)); 
;;      (not (> (+ (* 1 top.res.abs_3@0) (- 1)) 0))} 

(declare-fun __ic3_clause_32_p0 () Bool)
;; Success 

(assert (=> __ic3_clause_32_p0 (not (> (+ (* 1 f147@0) (- 1)) 0))))
;; Success 

;; check_frames: frames k to 1 
;;  
;; Frame: 
;; 26 
;; 9 
;; 15 
;; 11 
;; 13 
;; 22 
;; 32 

;; check_frames: Does R_1 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c1846))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1847))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1848))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1849))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1850))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1851))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1852))
;; Success 

(assert (! __ic3_clause_32_p0 :named c1853))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1854))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1855))
;; Success 

(assert (! __ic3_clause_29_p0 :named c1856))
;; Success 

(assert (! __ic3_clause_28_p0 :named c1857))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1858))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1859))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1860))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1861))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1862))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1863))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1864))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1865))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1866))
;; Success 

(assert (! __ic3_clause_32_p0 :named c1867))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1868))
;; Success 

(assert (! __ic3_clause_26_n0_0 :named c1869))
;; Success 

(assert (! __ic3_clause_26_n0_1 :named c1870))
;; Success 

(assert (! __ic3_clause_26_n0_2 :named c1871))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1872))
;; Success 

(assert (! __ic3_clause_9_n0_0 :named c1873))
;; Success 

(assert (! __ic3_clause_9_n0_1 :named c1874))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1875))
;; Success 

(assert (! __ic3_clause_15_n0_0 :named c1876))
;; Success 

(assert (! __ic3_clause_15_n0_1 :named c1877))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1878))
;; Success 

(assert (! __ic3_clause_11_n0_0 :named c1879))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1880))
;; Success 

(assert (! __ic3_clause_13_n0_0 :named c1881))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1882))
;; Success 

(assert (! __ic3_clause_22_n0_0 :named c1883))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(declare-fun __ic3_clause_32_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_32_n0_0 (> (+ (* 1 f147@0) (- 1)) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c1884))
;; Success 

(assert (! __ic3_clause_32_n0_0 :named c1885))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_0 & T |= R_1 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 19 

(declare-fun __ic3_check_frames_19 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_19
 (not
  (and
   f105@1
   (or (not f152@1) (not (> (* 1 f144@1) 0)) (not (> (* 1 f147@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (not (> (* 1 f145@1) 0))
   (not (> (* 1 f146@1) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or (not f152@1) (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (or (not f152@1) (not (> (* 1 f144@1) 0)) (not (> (* 1 f147@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (not (> (* 1 f145@1) 0))
   (not (> (* 1 f146@1) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_19 :named c1886))
;; Success 

(assert (! __ic3_frame_0 :named c1887))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_19))
;; Success 

;; block: All counterexamples blocked in R_1 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 252 

(declare-fun __ic3_ind_gen_252 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_252
 (not
  (or
   (not f152@1)
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (* 1 f147@1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 253 

(declare-fun __ic3_ind_gen_253 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_253
 (not
  (or
   (not f152@0)
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (* 1 f147@0) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f147@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 254 

(declare-fun __ic3_ind_gen_254 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_254
 (or
  (not f152@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f147@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_253 :named c1888))
;; Success 

(assert (! __ic3_frame_0 :named c1889))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1890))
;; Success 

(assert (! __ic3_ind_gen_254 :named c1891))
;; Success 

(assert (! __ic3_ind_gen_252 :named c1892))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1893))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1894))
;; Success 

(assert (! __ic3_clause_29_p0 :named c1895))
;; Success 

(assert (! __ic3_clause_28_p0 :named c1896))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1897))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1898))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1899))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1900))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1901))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1902))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1903))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1904))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1905))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1906))
;; Success 

(assert (! __ic3_clause_32_p0 :named c1907))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_254))
;; Success 

(assert (not __ic3_ind_gen_253))
;; Success 

(assert (not __ic3_ind_gen_252))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 255 

(declare-fun __ic3_ind_gen_255 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_255
 (not
  (or
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (* 1 f147@1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 256 

(declare-fun __ic3_ind_gen_256 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_256
 (not
  (or
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (* 1 f147@0) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f147@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 257 

(declare-fun __ic3_ind_gen_257 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_257
 (or
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f147@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_256 :named c1908))
;; Success 

(assert (! __ic3_frame_0 :named c1909))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1910))
;; Success 

(assert (! __ic3_ind_gen_257 :named c1911))
;; Success 

(assert (! __ic3_ind_gen_255 :named c1912))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1913))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1914))
;; Success 

(assert (! __ic3_clause_29_p0 :named c1915))
;; Success 

(assert (! __ic3_clause_28_p0 :named c1916))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1917))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1918))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1919))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1920))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1921))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1922))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1923))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1924))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1925))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1926))
;; Success 

(assert (! __ic3_clause_32_p0 :named c1927))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_257))
;; Success 

(assert (not __ic3_ind_gen_256))
;; Success 

(assert (not __ic3_ind_gen_255))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 258 

(declare-fun __ic3_ind_gen_258 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_258
 (not
  (or
   (not f152@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (* 1 f147@1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 259 

(declare-fun __ic3_ind_gen_259 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_259
 (not
  (or
   (not f152@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (* 1 f147@0) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f147@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 260 

(declare-fun __ic3_ind_gen_260 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_260
 (or
  (not f152@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f147@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_259 :named c1928))
;; Success 

(assert (! __ic3_frame_0 :named c1929))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1930))
;; Success 

(assert (! __ic3_ind_gen_260 :named c1931))
;; Success 

(assert (! __ic3_ind_gen_258 :named c1932))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1933))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1934))
;; Success 

(assert (! __ic3_clause_29_p0 :named c1935))
;; Success 

(assert (! __ic3_clause_28_p0 :named c1936))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1937))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1938))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1939))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1940))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1941))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1942))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1943))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1944))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1945))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1946))
;; Success 

(assert (! __ic3_clause_32_p0 :named c1947))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_260))
;; Success 

(assert (not __ic3_ind_gen_259))
;; Success 

(assert (not __ic3_ind_gen_258))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 261 

(declare-fun __ic3_ind_gen_261 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_261
 (not
  (or
   (not f152@1)
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (* 1 f147@1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 262 

(declare-fun __ic3_ind_gen_262 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_262
 (not
  (or
   (not f152@0)
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (* 1 f147@0) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f147@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 263 

(declare-fun __ic3_ind_gen_263 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_263
 (or
  (not f152@0)
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f147@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_262 :named c1948))
;; Success 

(assert (! __ic3_frame_0 :named c1949))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1950))
;; Success 

(assert (! __ic3_ind_gen_263 :named c1951))
;; Success 

(assert (! __ic3_ind_gen_261 :named c1952))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1953))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1954))
;; Success 

(assert (! __ic3_clause_29_p0 :named c1955))
;; Success 

(assert (! __ic3_clause_28_p0 :named c1956))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1957))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1958))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1959))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1960))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1961))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1962))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1963))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1964))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1965))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1966))
;; Success 

(assert (! __ic3_clause_32_p0 :named c1967))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_263))
;; Success 

(assert (not __ic3_ind_gen_262))
;; Success 

(assert (not __ic3_ind_gen_261))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 264 

(declare-fun __ic3_ind_gen_264 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_264
 (not
  (or
   (not f152@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (* 1 f147@1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 265 

(declare-fun __ic3_ind_gen_265 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_265
 (not
  (or
   (not f152@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (* 1 f147@0) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f147@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 266 

(declare-fun __ic3_ind_gen_266 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_266
 (or
  (not f152@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f147@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_265 :named c1968))
;; Success 

(assert (! __ic3_frame_0 :named c1969))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1970))
;; Success 

(assert (! __ic3_ind_gen_266 :named c1971))
;; Success 

(assert (! __ic3_ind_gen_264 :named c1972))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1973))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1974))
;; Success 

(assert (! __ic3_clause_29_p0 :named c1975))
;; Success 

(assert (! __ic3_clause_28_p0 :named c1976))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1977))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1978))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1979))
;; Success 

(assert (! __ic3_clause_3_p0 :named c1980))
;; Success 

(assert (! __ic3_clause_26_p0 :named c1981))
;; Success 

(assert (! __ic3_clause_9_p0 :named c1982))
;; Success 

(assert (! __ic3_clause_15_p0 :named c1983))
;; Success 

(assert (! __ic3_clause_11_p0 :named c1984))
;; Success 

(assert (! __ic3_clause_13_p0 :named c1985))
;; Success 

(assert (! __ic3_clause_22_p0 :named c1986))
;; Success 

(assert (! __ic3_clause_32_p0 :named c1987))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_266))
;; Success 

(assert (not __ic3_ind_gen_265))
;; Success 

(assert (not __ic3_ind_gen_264))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 267 

(declare-fun __ic3_ind_gen_267 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_267
 (not
  (or
   (not f152@1)
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (* 1 f147@1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 268 

(declare-fun __ic3_ind_gen_268 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_268
 (not
  (or
   (not f152@0)
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (* 1 f147@0) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f147@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 269 

(declare-fun __ic3_ind_gen_269 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_269
 (or
  (not f152@0)
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f147@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_268 :named c1988))
;; Success 

(assert (! __ic3_frame_0 :named c1989))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c1990))
;; Success 

(assert (! __ic3_ind_gen_269 :named c1991))
;; Success 

(assert (! __ic3_ind_gen_267 :named c1992))
;; Success 

(assert (! __ic3_clause_16_p0 :named c1993))
;; Success 

(assert (! __ic3_clause_17_p0 :named c1994))
;; Success 

(assert (! __ic3_clause_29_p0 :named c1995))
;; Success 

(assert (! __ic3_clause_28_p0 :named c1996))
;; Success 

(assert (! __ic3_clause_5_p0 :named c1997))
;; Success 

(assert (! __ic3_clause_7_p0 :named c1998))
;; Success 

(assert (! __ic3_clause_24_p0 :named c1999))
;; Success 

(assert (! __ic3_clause_3_p0 :named c2000))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2001))
;; Success 

(assert (! __ic3_clause_9_p0 :named c2002))
;; Success 

(assert (! __ic3_clause_15_p0 :named c2003))
;; Success 

(assert (! __ic3_clause_11_p0 :named c2004))
;; Success 

(assert (! __ic3_clause_13_p0 :named c2005))
;; Success 

(assert (! __ic3_clause_22_p0 :named c2006))
;; Success 

(assert (! __ic3_clause_32_p0 :named c2007))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_269))
;; Success 

(assert (not __ic3_ind_gen_268))
;; Success 

(assert (not __ic3_ind_gen_267))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 270 

(declare-fun __ic3_ind_gen_270 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_270
 (not
  (or
   (not f152@1)
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (* 1 f147@1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 271 

(declare-fun __ic3_ind_gen_271 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_271
 (not
  (or
   (not f152@0)
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (* 1 f147@0) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f147@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 272 

(declare-fun __ic3_ind_gen_272 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_272
 (or
  (not f152@0)
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f147@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_271 :named c2008))
;; Success 

(assert (! __ic3_frame_0 :named c2009))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2010))
;; Success 

(assert (! __ic3_ind_gen_272 :named c2011))
;; Success 

(assert (! __ic3_ind_gen_270 :named c2012))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2013))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2014))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2015))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2016))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2017))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2018))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2019))
;; Success 

(assert (! __ic3_clause_3_p0 :named c2020))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2021))
;; Success 

(assert (! __ic3_clause_9_p0 :named c2022))
;; Success 

(assert (! __ic3_clause_15_p0 :named c2023))
;; Success 

(assert (! __ic3_clause_11_p0 :named c2024))
;; Success 

(assert (! __ic3_clause_13_p0 :named c2025))
;; Success 

(assert (! __ic3_clause_22_p0 :named c2026))
;; Success 

(assert (! __ic3_clause_32_p0 :named c2027))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_272))
;; Success 

(assert (not __ic3_ind_gen_271))
;; Success 

(assert (not __ic3_ind_gen_270))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 273 

(declare-fun __ic3_ind_gen_273 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_273
 (not
  (or
   (not f152@1)
   (not (> (* 1 f147@1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 274 

(declare-fun __ic3_ind_gen_274 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_274
 (not
  (or
   (not f152@0)
   (not (> (* 1 f147@0) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f147@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 275 

(declare-fun __ic3_ind_gen_275 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_275
 (or
  (not f152@0)
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f147@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_274 :named c2028))
;; Success 

(assert (! __ic3_frame_0 :named c2029))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2030))
;; Success 

(assert (! __ic3_ind_gen_275 :named c2031))
;; Success 

(assert (! __ic3_ind_gen_273 :named c2032))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2033))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2034))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2035))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2036))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2037))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2038))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2039))
;; Success 

(assert (! __ic3_clause_3_p0 :named c2040))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2041))
;; Success 

(assert (! __ic3_clause_9_p0 :named c2042))
;; Success 

(assert (! __ic3_clause_15_p0 :named c2043))
;; Success 

(assert (! __ic3_clause_11_p0 :named c2044))
;; Success 

(assert (! __ic3_clause_13_p0 :named c2045))
;; Success 

(assert (! __ic3_clause_22_p0 :named c2046))
;; Success 

(assert (! __ic3_clause_32_p0 :named c2047))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_275))
;; Success 

(assert (not __ic3_ind_gen_274))
;; Success 

(assert (not __ic3_ind_gen_273))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 276 

(declare-fun __ic3_ind_gen_276 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_276
 (not
  (or
   (not f152@1)
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 277 

(declare-fun __ic3_ind_gen_277 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_277
 (not
  (or
   (not f152@0)
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f147@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 278 

(declare-fun __ic3_ind_gen_278 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_278
 (or
  (not f152@0)
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f147@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_277 :named c2048))
;; Success 

(assert (! __ic3_frame_0 :named c2049))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2050))
;; Success 

(assert (! __ic3_ind_gen_278 :named c2051))
;; Success 

(assert (! __ic3_ind_gen_276 :named c2052))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2053))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2054))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2055))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2056))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2057))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2058))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2059))
;; Success 

(assert (! __ic3_clause_3_p0 :named c2060))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2061))
;; Success 

(assert (! __ic3_clause_9_p0 :named c2062))
;; Success 

(assert (! __ic3_clause_15_p0 :named c2063))
;; Success 

(assert (! __ic3_clause_11_p0 :named c2064))
;; Success 

(assert (! __ic3_clause_13_p0 :named c2065))
;; Success 

(assert (! __ic3_clause_22_p0 :named c2066))
;; Success 

(assert (! __ic3_clause_32_p0 :named c2067))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_278))
;; Success 

(assert (not __ic3_ind_gen_277))
;; Success 

(assert (not __ic3_ind_gen_276))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 279 

(declare-fun __ic3_ind_gen_279 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_279
 (not
  (or
   (not f152@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 280 

(declare-fun __ic3_ind_gen_280 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_280
 (not
  (or
   (not f152@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f147@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 281 

(declare-fun __ic3_ind_gen_281 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_281
 (or
  (not f152@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f147@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_280 :named c2068))
;; Success 

(assert (! __ic3_frame_0 :named c2069))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2070))
;; Success 

(assert (! __ic3_ind_gen_281 :named c2071))
;; Success 

(assert (! __ic3_ind_gen_279 :named c2072))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2073))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2074))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2075))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2076))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2077))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2078))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2079))
;; Success 

(assert (! __ic3_clause_3_p0 :named c2080))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2081))
;; Success 

(assert (! __ic3_clause_9_p0 :named c2082))
;; Success 

(assert (! __ic3_clause_15_p0 :named c2083))
;; Success 

(assert (! __ic3_clause_11_p0 :named c2084))
;; Success 

(assert (! __ic3_clause_13_p0 :named c2085))
;; Success 

(assert (! __ic3_clause_22_p0 :named c2086))
;; Success 

(assert (! __ic3_clause_32_p0 :named c2087))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_281))
;; Success 

(assert (not __ic3_ind_gen_280))
;; Success 

(assert (not __ic3_ind_gen_279))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 282 

(declare-fun __ic3_ind_gen_282 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_282
 (not
  (or
   (not f152@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 283 

(declare-fun __ic3_ind_gen_283 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_283
 (not
  (or
   (not f152@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f147@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 284 

(declare-fun __ic3_ind_gen_284 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_284
 (or
  (not f152@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f147@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_283 :named c2088))
;; Success 

(assert (! __ic3_frame_0 :named c2089))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2090))
;; Success 

(assert (! __ic3_ind_gen_284 :named c2091))
;; Success 

(assert (! __ic3_ind_gen_282 :named c2092))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2093))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2094))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2095))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2096))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2097))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2098))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2099))
;; Success 

(assert (! __ic3_clause_3_p0 :named c2100))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2101))
;; Success 

(assert (! __ic3_clause_9_p0 :named c2102))
;; Success 

(assert (! __ic3_clause_15_p0 :named c2103))
;; Success 

(assert (! __ic3_clause_11_p0 :named c2104))
;; Success 

(assert (! __ic3_clause_13_p0 :named c2105))
;; Success 

(assert (! __ic3_clause_22_p0 :named c2106))
;; Success 

(assert (! __ic3_clause_32_p0 :named c2107))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_284))
;; Success 

(assert (not __ic3_ind_gen_283))
;; Success 

(assert (not __ic3_ind_gen_282))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 285 

(declare-fun __ic3_ind_gen_285 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_285
 (not (or (not f152@1) (not (> (+ (* 1 f147@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 286 

(declare-fun __ic3_ind_gen_286 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_286
 (not (or (not f152@0) (not (> (+ (* 1 f147@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 287 

(declare-fun __ic3_ind_gen_287 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_287 (or (not f152@0) (not (> (+ (* 1 f147@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_286 :named c2108))
;; Success 

(assert (! __ic3_frame_0 :named c2109))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2110))
;; Success 

(assert (! __ic3_ind_gen_287 :named c2111))
;; Success 

(assert (! __ic3_ind_gen_285 :named c2112))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2113))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2114))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2115))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2116))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2117))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2118))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2119))
;; Success 

(assert (! __ic3_clause_3_p0 :named c2120))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2121))
;; Success 

(assert (! __ic3_clause_9_p0 :named c2122))
;; Success 

(assert (! __ic3_clause_15_p0 :named c2123))
;; Success 

(assert (! __ic3_clause_11_p0 :named c2124))
;; Success 

(assert (! __ic3_clause_13_p0 :named c2125))
;; Success 

(assert (! __ic3_clause_22_p0 :named c2126))
;; Success 

(assert (! __ic3_clause_32_p0 :named c2127))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_287))
;; Success 

(assert (not __ic3_ind_gen_286))
;; Success 

(assert (not __ic3_ind_gen_285))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 288 

(declare-fun __ic3_ind_gen_288 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_288 f152@1))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 289 

(declare-fun __ic3_ind_gen_289 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_289 f152@0))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 290 

(declare-fun __ic3_ind_gen_290 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_290 (not f152@0)))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_289 :named c2128))
;; Success 

(assert (! __ic3_frame_0 :named c2129))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_290))
;; Success 

(assert (not __ic3_ind_gen_289))
;; Success 

(assert (not __ic3_ind_gen_288))
;; Success 

;; ind_generalize: Dropped 11 literals from clause. 

;; Deactivating activation literals for clause 

;; New clause from inductive generalization of #33: 
;; #34 {(not top.res.abs_8@0); (not (> (+ (* 1 top.res.abs_3@0) (- 1)) 0))} 

;; block: Is blocking clause relative inductive to R_1? 

(declare-fun __ic3_clause_34_n1_0 () Bool)
;; Success 

(assert (=> __ic3_clause_34_n1_0 f152@1))
;; Success 

(declare-fun __ic3_clause_34_n1_1 () Bool)
;; Success 

(assert (=> __ic3_clause_34_n1_1 (> (+ (* 1 f147@1) (- 1)) 0)))
;; Success 

(declare-fun __ic3_clause_34_p0 () Bool)
;; Success 

(assert
 (=> __ic3_clause_34_p0 (or (not f152@0) (not (> (+ (* 1 f147@0) (- 1)) 0)))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_34_p0 :named c2130))
;; Success 

(assert (! __ic3_clause_34_n1_0 :named c2131))
;; Success 

(assert (! __ic3_clause_34_n1_1 :named c2132))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2133))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2134))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2135))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2136))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2137))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2138))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2139))
;; Success 

(assert (! __ic3_clause_3_p0 :named c2140))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2141))
;; Success 

(assert (! __ic3_clause_9_p0 :named c2142))
;; Success 

(assert (! __ic3_clause_15_p0 :named c2143))
;; Success 

(assert (! __ic3_clause_11_p0 :named c2144))
;; Success 

(assert (! __ic3_clause_13_p0 :named c2145))
;; Success 

(assert (! __ic3_clause_22_p0 :named c2146))
;; Success 

(assert (! __ic3_clause_32_p0 :named c2147))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c2141 c2131 c2132 c2130 c2144 c2145) 

(pop 1)
;; Success 

;; block: Check I |= C to get unsat core. 

(declare-fun __ic3_clause_34_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_34_n0_0 f152@0))
;; Success 

(declare-fun __ic3_clause_34_n0_1 () Bool)
;; Success 

(assert (=> __ic3_clause_34_n0_1 (> (+ (* 1 f147@0) (- 1)) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2148))
;; Success 

(assert (! __ic3_clause_34_n0_0 :named c2149))
;; Success 

(assert (! __ic3_clause_34_n0_1 :named c2150))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c2150 c2148) 

(pop 1)
;; Success 

;; block: Reduced clause 
;; (or (not top.res.abs_8@0) (not (> (+ (* 1 top.res.abs_3@0) (- 1)) 0))) 
;; with unsat core to 
;; (or (not (> (+ (* 1 top.res.abs_3@0) (- 1)) 0)) (not top.res.abs_8@0)) 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 291 

(declare-fun __ic3_ind_gen_291 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_291 f152@1))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 292 

(declare-fun __ic3_ind_gen_292 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_292 f152@0))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 293 

(declare-fun __ic3_ind_gen_293 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_293 (not f152@0)))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_292 :named c2151))
;; Success 

(assert (! __ic3_frame_0 :named c2152))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_293))
;; Success 

(assert (not __ic3_ind_gen_292))
;; Success 

(assert (not __ic3_ind_gen_291))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 294 

(declare-fun __ic3_ind_gen_294 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_294 (> (+ (* 1 f147@1) (- 1)) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 295 

(declare-fun __ic3_ind_gen_295 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_295 (> (+ (* 1 f147@0) (- 1)) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 296 

(declare-fun __ic3_ind_gen_296 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_296 (not (> (+ (* 1 f147@0) (- 1)) 0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_295 :named c2153))
;; Success 

(assert (! __ic3_frame_0 :named c2154))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2155))
;; Success 

(assert (! __ic3_ind_gen_296 :named c2156))
;; Success 

(assert (! __ic3_ind_gen_294 :named c2157))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2158))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2159))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2160))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2161))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2162))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2163))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2164))
;; Success 

(assert (! __ic3_clause_3_p0 :named c2165))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2166))
;; Success 

(assert (! __ic3_clause_9_p0 :named c2167))
;; Success 

(assert (! __ic3_clause_15_p0 :named c2168))
;; Success 

(assert (! __ic3_clause_11_p0 :named c2169))
;; Success 

(assert (! __ic3_clause_13_p0 :named c2170))
;; Success 

(assert (! __ic3_clause_22_p0 :named c2171))
;; Success 

(assert (! __ic3_clause_32_p0 :named c2172))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_296))
;; Success 

(assert (not __ic3_ind_gen_295))
;; Success 

(assert (not __ic3_ind_gen_294))
;; Success 

;; block: Reduced clause 
;; (or (not (> (+ (* 1 top.res.abs_3@0) (- 1)) 0)) (not top.res.abs_8@0)) 
;; with ind. gen. to 
;; (or (not top.res.abs_8@0) (not (> (+ (* 1 top.res.abs_3@0) (- 1)) 0))) 

;; check_frames: frames k to 1 
;;  
;; Frame: 
;; 16 
;; 17 
;; 29 
;; 28 
;; 34 
;; 5 
;; 7 
;; 24 
;;  
;; Frame: 
;; 26 
;; 9 
;; 15 
;; 11 
;; 13 
;; 22 
;; 32 

;; check_frames: Does R_2 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c2173))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2174))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2175))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2176))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2177))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2178))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2179))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2180))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2181))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2182))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2183))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2184))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2185))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2186))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2187))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2188))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2189))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2190))
;; Success 

(assert (! __ic3_clause_16_n0_0 :named c2191))
;; Success 

(assert (! __ic3_clause_16_n0_1 :named c2192))
;; Success 

(assert (! __ic3_clause_16_n0_2 :named c2193))
;; Success 

(assert (! __ic3_clause_16_n0_3 :named c2194))
;; Success 

(assert (! __ic3_clause_16_n0_4 :named c2195))
;; Success 

(assert (! __ic3_clause_16_n0_5 :named c2196))
;; Success 

(assert (! __ic3_clause_16_n0_6 :named c2197))
;; Success 

(assert (! __ic3_clause_16_n0_7 :named c2198))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2199))
;; Success 

(assert (! __ic3_clause_17_n0_0 :named c2200))
;; Success 

(assert (! __ic3_clause_17_n0_1 :named c2201))
;; Success 

(assert (! __ic3_clause_17_n0_2 :named c2202))
;; Success 

(assert (! __ic3_clause_17_n0_3 :named c2203))
;; Success 

(assert (! __ic3_clause_17_n0_4 :named c2204))
;; Success 

(assert (! __ic3_clause_17_n0_5 :named c2205))
;; Success 

(assert (! __ic3_clause_17_n0_6 :named c2206))
;; Success 

(assert (! __ic3_clause_17_n0_7 :named c2207))
;; Success 

(assert (! __ic3_clause_17_n0_8 :named c2208))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2209))
;; Success 

(assert (! __ic3_clause_29_n0_0 :named c2210))
;; Success 

(assert (! __ic3_clause_29_n0_1 :named c2211))
;; Success 

(assert (! __ic3_clause_29_n0_2 :named c2212))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2213))
;; Success 

(assert (! __ic3_clause_28_n0_0 :named c2214))
;; Success 

(assert (! __ic3_clause_28_n0_1 :named c2215))
;; Success 

(assert (! __ic3_clause_28_n0_2 :named c2216))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2217))
;; Success 

(assert (! __ic3_clause_34_n0_0 :named c2218))
;; Success 

(assert (! __ic3_clause_34_n0_1 :named c2219))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2220))
;; Success 

(assert (! __ic3_clause_5_n0_0 :named c2221))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2222))
;; Success 

(assert (! __ic3_clause_7_n0_0 :named c2223))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2224))
;; Success 

(assert (! __ic3_clause_24_n0_0 :named c2225))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_1 & T |= R_2 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 20 

(declare-fun __ic3_check_frames_20 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_20
 (not
  (and
   f105@1
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or (not f152@1) (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0)))
   (or (not f152@1) (not (> (+ (* 1 f147@1) (- 1)) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or (not f152@1) (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0)))
   (or (not f152@1) (not (> (+ (* 1 f147@1) (- 1)) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_20 :named c2226))
;; Success 

(assert (! __ic3_clause_3_p0 :named c2227))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2228))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2229))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2230))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2231))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2232))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2233))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2234))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2235))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2236))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2237))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2238))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2239))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2240))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2241))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2242))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2243))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2244))
;; Success 

(assert (! __ic3_clause_9_p0 :named c2245))
;; Success 

(assert (! __ic3_clause_15_p0 :named c2246))
;; Success 

(assert (! __ic3_clause_11_p0 :named c2247))
;; Success 

(assert (! __ic3_clause_13_p0 :named c2248))
;; Success 

(assert (! __ic3_clause_22_p0 :named c2249))
;; Success 

(assert (! __ic3_clause_32_p0 :named c2250))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_20))
;; Success 

;; check_frames: Does R_1 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c2251))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2252))
;; Success 

(assert (! __ic3_clause_9_p0 :named c2253))
;; Success 

(assert (! __ic3_clause_15_p0 :named c2254))
;; Success 

(assert (! __ic3_clause_11_p0 :named c2255))
;; Success 

(assert (! __ic3_clause_13_p0 :named c2256))
;; Success 

(assert (! __ic3_clause_22_p0 :named c2257))
;; Success 

(assert (! __ic3_clause_32_p0 :named c2258))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2259))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2260))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2261))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2262))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2263))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2264))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2265))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2266))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2267))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2268))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2269))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2270))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2271))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2272))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2273))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2274))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2275))
;; Success 

(assert (! __ic3_clause_26_n0_0 :named c2276))
;; Success 

(assert (! __ic3_clause_26_n0_1 :named c2277))
;; Success 

(assert (! __ic3_clause_26_n0_2 :named c2278))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2279))
;; Success 

(assert (! __ic3_clause_9_n0_0 :named c2280))
;; Success 

(assert (! __ic3_clause_9_n0_1 :named c2281))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2282))
;; Success 

(assert (! __ic3_clause_15_n0_0 :named c2283))
;; Success 

(assert (! __ic3_clause_15_n0_1 :named c2284))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2285))
;; Success 

(assert (! __ic3_clause_11_n0_0 :named c2286))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2287))
;; Success 

(assert (! __ic3_clause_13_n0_0 :named c2288))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2289))
;; Success 

(assert (! __ic3_clause_22_n0_0 :named c2290))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2291))
;; Success 

(assert (! __ic3_clause_32_n0_0 :named c2292))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_0 & T |= R_1 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 21 

(declare-fun __ic3_check_frames_21 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_21
 (not
  (and
   f105@1
   (or (not f152@1) (not (> (* 1 f144@1) 0)) (not (> (* 1 f147@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (not (> (* 1 f145@1) 0))
   (not (> (* 1 f146@1) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or (not f152@1) (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0)))
   (or (not f152@1) (not (> (+ (* 1 f147@1) (- 1)) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or (not f152@1) (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0)))
   (or (not f152@1) (not (> (+ (* 1 f147@1) (- 1)) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_21 :named c2293))
;; Success 

(assert (! __ic3_frame_0 :named c2294))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_21))
;; Success 

;; block: Is blocking clause relative inductive to R_1? 

(push 1)
;; Success 

(assert (! __ic3_clause_30_p0 :named c2295))
;; Success 

(assert (! __ic3_clause_30_n1_0 :named c2296))
;; Success 

(assert (! __ic3_clause_30_n1_1 :named c2297))
;; Success 

(assert (! __ic3_clause_30_n1_2 :named c2298))
;; Success 

(assert (! __ic3_clause_30_n1_3 :named c2299))
;; Success 

(assert (! __ic3_clause_30_n1_4 :named c2300))
;; Success 

(assert (! __ic3_clause_30_n1_5 :named c2301))
;; Success 

(assert (! __ic3_clause_30_n1_6 :named c2302))
;; Success 

(assert (! __ic3_clause_30_n1_7 :named c2303))
;; Success 

(assert (! __ic3_clause_30_n1_8 :named c2304))
;; Success 

(assert (! __ic3_clause_30_n1_9 :named c2305))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2306))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2307))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2308))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2309))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2310))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2311))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2312))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2313))
;; Success 

(assert (! __ic3_clause_3_p0 :named c2314))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2315))
;; Success 

(assert (! __ic3_clause_9_p0 :named c2316))
;; Success 

(assert (! __ic3_clause_15_p0 :named c2317))
;; Success 

(assert (! __ic3_clause_11_p0 :named c2318))
;; Success 

(assert (! __ic3_clause_13_p0 :named c2319))
;; Success 

(assert (! __ic3_clause_22_p0 :named c2320))
;; Success 

(assert (! __ic3_clause_32_p0 :named c2321))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c2309 c2296 c2297 c2302 c2305 c2310 c2317 c2312 c2308 c2318 c2319) 

(pop 1)
;; Success 

;; block: Check I |= C to get unsat core. 

(declare-fun __ic3_clause_30_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_30_n0_0 f105@0))
;; Success 

(declare-fun __ic3_clause_30_n0_1 () Bool)
;; Success 

(assert (=> __ic3_clause_30_n0_1 f152@0))
;; Success 

(declare-fun __ic3_clause_30_n0_2 () Bool)
;; Success 

(assert (=> __ic3_clause_30_n0_2 (> (+ (* (- 1) f144@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_30_n0_3 () Bool)
;; Success 

(assert (=> __ic3_clause_30_n0_3 (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0)))
;; Success 

(declare-fun __ic3_clause_30_n0_4 () Bool)
;; Success 

(assert (=> __ic3_clause_30_n0_4 (> (+ (* (- 1) f144@0) 2) 0)))
;; Success 

(declare-fun __ic3_clause_30_n0_5 () Bool)
;; Success 

(assert (=> __ic3_clause_30_n0_5 (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_30_n0_6 () Bool)
;; Success 

(assert (=> __ic3_clause_30_n0_6 (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_30_n0_7 () Bool)
;; Success 

(assert (=> __ic3_clause_30_n0_7 (> (+ (* (- 1) f145@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_30_n0_8 () Bool)
;; Success 

(assert (=> __ic3_clause_30_n0_8 (> (+ (* (- 1) f146@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_30_n0_9 () Bool)
;; Success 

(assert (=> __ic3_clause_30_n0_9 (> (* 1 f147@0) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2322))
;; Success 

(assert (! __ic3_clause_30_n0_0 :named c2323))
;; Success 

(assert (! __ic3_clause_30_n0_1 :named c2324))
;; Success 

(assert (! __ic3_clause_30_n0_2 :named c2325))
;; Success 

(assert (! __ic3_clause_30_n0_3 :named c2326))
;; Success 

(assert (! __ic3_clause_30_n0_4 :named c2327))
;; Success 

(assert (! __ic3_clause_30_n0_5 :named c2328))
;; Success 

(assert (! __ic3_clause_30_n0_6 :named c2329))
;; Success 

(assert (! __ic3_clause_30_n0_7 :named c2330))
;; Success 

(assert (! __ic3_clause_30_n0_8 :named c2331))
;; Success 

(assert (! __ic3_clause_30_n0_9 :named c2332))
;; Success 

(check-sat)
;; Unsat 

(get-unsat-core)
;; (c2332 c2322) 

(pop 1)
;; Success 

;; block: Reduced clause 
;; (or 
;;  (not top.usr.OK@0) 
;;  (not top.res.abs_8@0) 
;;  (not (> (+ (* (- 1) top.res.abs_0@0) 1) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_0@0) 2) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)) 
;;  (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_1@0) 1) 0)) 
;;  (not (> (+ (* (- 1) top.res.abs_2@0) 1) 0)) 
;;  (not (> (* 1 top.res.abs_3@0) 0))) 
;; with unsat core to 
;; (or 
;;  (not (> (* 1 top.res.abs_3@0) 0)) 
;;  (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)) 
;;  (not top.res.abs_8@0) 
;;  (not top.usr.OK@0)) 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 297 

(declare-fun __ic3_ind_gen_297 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_297
 (not
  (or
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not f152@1)
   (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 298 

(declare-fun __ic3_ind_gen_298 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_298
 (not
  (or
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not f152@0)
   (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 299 

(declare-fun __ic3_ind_gen_299 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_299
 (or
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not f152@0)
  (not f105@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_298 :named c2333))
;; Success 

(assert (! __ic3_frame_0 :named c2334))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_299))
;; Success 

(assert (not __ic3_ind_gen_298))
;; Success 

(assert (not __ic3_ind_gen_297))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 300 

(declare-fun __ic3_ind_gen_300 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_300
 (not (or (not (> (* 1 f147@1) 0)) (not f152@1) (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 301 

(declare-fun __ic3_ind_gen_301 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_301
 (not (or (not (> (* 1 f147@0) 0)) (not f152@0) (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 302 

(declare-fun __ic3_ind_gen_302 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_302
 (or (not (> (* 1 f147@0) 0)) (not f152@0) (not f105@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_301 :named c2335))
;; Success 

(assert (! __ic3_frame_0 :named c2336))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2337))
;; Success 

(assert (! __ic3_ind_gen_302 :named c2338))
;; Success 

(assert (! __ic3_ind_gen_300 :named c2339))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2340))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2341))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2342))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2343))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2344))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2345))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2346))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2347))
;; Success 

(assert (! __ic3_clause_3_p0 :named c2348))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2349))
;; Success 

(assert (! __ic3_clause_9_p0 :named c2350))
;; Success 

(assert (! __ic3_clause_15_p0 :named c2351))
;; Success 

(assert (! __ic3_clause_11_p0 :named c2352))
;; Success 

(assert (! __ic3_clause_13_p0 :named c2353))
;; Success 

(assert (! __ic3_clause_22_p0 :named c2354))
;; Success 

(assert (! __ic3_clause_32_p0 :named c2355))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_302))
;; Success 

(assert (not __ic3_ind_gen_301))
;; Success 

(assert (not __ic3_ind_gen_300))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 303 

(declare-fun __ic3_ind_gen_303 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_303
 (not
  (or
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f147@1) 0))
   (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 304 

(declare-fun __ic3_ind_gen_304 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_304
 (not
  (or
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f147@0) 0))
   (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 305 

(declare-fun __ic3_ind_gen_305 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_305
 (or
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f147@0) 0))
  (not f105@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_304 :named c2356))
;; Success 

(assert (! __ic3_frame_0 :named c2357))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2358))
;; Success 

(assert (! __ic3_ind_gen_305 :named c2359))
;; Success 

(assert (! __ic3_ind_gen_303 :named c2360))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2361))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2362))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2363))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2364))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2365))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2366))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2367))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2368))
;; Success 

(assert (! __ic3_clause_3_p0 :named c2369))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2370))
;; Success 

(assert (! __ic3_clause_9_p0 :named c2371))
;; Success 

(assert (! __ic3_clause_15_p0 :named c2372))
;; Success 

(assert (! __ic3_clause_11_p0 :named c2373))
;; Success 

(assert (! __ic3_clause_13_p0 :named c2374))
;; Success 

(assert (! __ic3_clause_22_p0 :named c2375))
;; Success 

(assert (! __ic3_clause_32_p0 :named c2376))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_305))
;; Success 

(assert (not __ic3_ind_gen_304))
;; Success 

(assert (not __ic3_ind_gen_303))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 306 

(declare-fun __ic3_ind_gen_306 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_306
 (not
  (or
   (not f152@1)
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f147@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 307 

(declare-fun __ic3_ind_gen_307 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_307
 (not
  (or
   (not f152@0)
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f147@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 308 

(declare-fun __ic3_ind_gen_308 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_308
 (or
  (not f152@0)
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f147@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_307 :named c2377))
;; Success 

(assert (! __ic3_frame_0 :named c2378))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2379))
;; Success 

(assert (! __ic3_ind_gen_308 :named c2380))
;; Success 

(assert (! __ic3_ind_gen_306 :named c2381))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2382))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2383))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2384))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2385))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2386))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2387))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2388))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2389))
;; Success 

(assert (! __ic3_clause_3_p0 :named c2390))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2391))
;; Success 

(assert (! __ic3_clause_9_p0 :named c2392))
;; Success 

(assert (! __ic3_clause_15_p0 :named c2393))
;; Success 

(assert (! __ic3_clause_11_p0 :named c2394))
;; Success 

(assert (! __ic3_clause_13_p0 :named c2395))
;; Success 

(assert (! __ic3_clause_22_p0 :named c2396))
;; Success 

(assert (! __ic3_clause_32_p0 :named c2397))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_308))
;; Success 

(assert (not __ic3_ind_gen_307))
;; Success 

(assert (not __ic3_ind_gen_306))
;; Success 

;; ind_generalize: Dropped 7 literals from clause. 

;; Deactivating activation literals for clause 

(assert (not __ic3_clause_30_p0))
;; Success 

(assert (not __ic3_clause_30_n0_0))
;; Success 

(assert (not __ic3_clause_30_n0_1))
;; Success 

(assert (not __ic3_clause_30_n0_2))
;; Success 

(assert (not __ic3_clause_30_n0_3))
;; Success 

(assert (not __ic3_clause_30_n0_4))
;; Success 

(assert (not __ic3_clause_30_n0_5))
;; Success 

(assert (not __ic3_clause_30_n0_6))
;; Success 

(assert (not __ic3_clause_30_n0_7))
;; Success 

(assert (not __ic3_clause_30_n0_8))
;; Success 

(assert (not __ic3_clause_30_n0_9))
;; Success 

(assert (not __ic3_clause_30_n1_0))
;; Success 

(assert (not __ic3_clause_30_n1_1))
;; Success 

(assert (not __ic3_clause_30_n1_2))
;; Success 

(assert (not __ic3_clause_30_n1_3))
;; Success 

(assert (not __ic3_clause_30_n1_4))
;; Success 

(assert (not __ic3_clause_30_n1_5))
;; Success 

(assert (not __ic3_clause_30_n1_6))
;; Success 

(assert (not __ic3_clause_30_n1_7))
;; Success 

(assert (not __ic3_clause_30_n1_8))
;; Success 

(assert (not __ic3_clause_30_n1_9))
;; Success 

;; New clause from inductive generalization of #30: 
;; #35 {(not top.res.abs_8@0); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_3@0) 0))} 

;; block: Reduced clause 
;; (or 
;;  (not (> (* 1 top.res.abs_3@0) 0)) 
;;  (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)) 
;;  (not top.res.abs_8@0) 
;;  (not top.usr.OK@0)) 
;; with ind. gen. to 
;; (or 
;;  (not top.res.abs_8@0) 
;;  (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)) 
;;  (not (> (* 1 top.res.abs_3@0) 0))) 

(declare-fun __ic3_clause_35_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_35_p0
 (or
  (not f152@0)
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f147@0) 0)))))
;; Success 

;; check_frames: frames k to 1 
;;  
;; Frame: 
;; 16 
;; 17 
;; 29 
;; 35 
;; 28 
;; 34 
;; 5 
;; 7 
;; 24 
;;  
;; Frame: 
;; 26 
;; 9 
;; 15 
;; 11 
;; 13 
;; 22 
;; 32 

;; check_frames: Does R_2 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c2398))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2399))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2400))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2401))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2402))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2403))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2404))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2405))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2406))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2407))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2408))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2409))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2410))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2411))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2412))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2413))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2414))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2415))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2416))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2417))
;; Success 

(assert (! __ic3_clause_16_n0_0 :named c2418))
;; Success 

(assert (! __ic3_clause_16_n0_1 :named c2419))
;; Success 

(assert (! __ic3_clause_16_n0_2 :named c2420))
;; Success 

(assert (! __ic3_clause_16_n0_3 :named c2421))
;; Success 

(assert (! __ic3_clause_16_n0_4 :named c2422))
;; Success 

(assert (! __ic3_clause_16_n0_5 :named c2423))
;; Success 

(assert (! __ic3_clause_16_n0_6 :named c2424))
;; Success 

(assert (! __ic3_clause_16_n0_7 :named c2425))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2426))
;; Success 

(assert (! __ic3_clause_17_n0_0 :named c2427))
;; Success 

(assert (! __ic3_clause_17_n0_1 :named c2428))
;; Success 

(assert (! __ic3_clause_17_n0_2 :named c2429))
;; Success 

(assert (! __ic3_clause_17_n0_3 :named c2430))
;; Success 

(assert (! __ic3_clause_17_n0_4 :named c2431))
;; Success 

(assert (! __ic3_clause_17_n0_5 :named c2432))
;; Success 

(assert (! __ic3_clause_17_n0_6 :named c2433))
;; Success 

(assert (! __ic3_clause_17_n0_7 :named c2434))
;; Success 

(assert (! __ic3_clause_17_n0_8 :named c2435))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2436))
;; Success 

(assert (! __ic3_clause_29_n0_0 :named c2437))
;; Success 

(assert (! __ic3_clause_29_n0_1 :named c2438))
;; Success 

(assert (! __ic3_clause_29_n0_2 :named c2439))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(declare-fun __ic3_clause_35_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_35_n0_0 f152@0))
;; Success 

(declare-fun __ic3_clause_35_n0_1 () Bool)
;; Success 

(assert (=> __ic3_clause_35_n0_1 (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0)))
;; Success 

(declare-fun __ic3_clause_35_n0_2 () Bool)
;; Success 

(assert (=> __ic3_clause_35_n0_2 (> (* 1 f147@0) 0)))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2440))
;; Success 

(assert (! __ic3_clause_35_n0_0 :named c2441))
;; Success 

(assert (! __ic3_clause_35_n0_1 :named c2442))
;; Success 

(assert (! __ic3_clause_35_n0_2 :named c2443))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2444))
;; Success 

(assert (! __ic3_clause_28_n0_0 :named c2445))
;; Success 

(assert (! __ic3_clause_28_n0_1 :named c2446))
;; Success 

(assert (! __ic3_clause_28_n0_2 :named c2447))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2448))
;; Success 

(assert (! __ic3_clause_34_n0_0 :named c2449))
;; Success 

(assert (! __ic3_clause_34_n0_1 :named c2450))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2451))
;; Success 

(assert (! __ic3_clause_5_n0_0 :named c2452))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2453))
;; Success 

(assert (! __ic3_clause_7_n0_0 :named c2454))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2455))
;; Success 

(assert (! __ic3_clause_24_n0_0 :named c2456))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_1 & T |= R_2 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 22 

(declare-fun __ic3_check_frames_22 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_22
 (not
  (and
   f105@1
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (or (not f152@1) (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0)))
   (or (not f152@1) (not (> (+ (* 1 f147@1) (- 1)) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (or (not f152@1) (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0)))
   (or (not f152@1) (not (> (+ (* 1 f147@1) (- 1)) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_22 :named c2457))
;; Success 

(assert (! __ic3_clause_3_p0 :named c2458))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2459))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2460))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2461))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2462))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2463))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2464))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2465))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2466))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2467))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2468))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2469))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2470))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2471))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2472))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2473))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2474))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2475))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2476))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2477))
;; Success 

(assert (! __ic3_clause_9_p0 :named c2478))
;; Success 

(assert (! __ic3_clause_15_p0 :named c2479))
;; Success 

(assert (! __ic3_clause_11_p0 :named c2480))
;; Success 

(assert (! __ic3_clause_13_p0 :named c2481))
;; Success 

(assert (! __ic3_clause_22_p0 :named c2482))
;; Success 

(assert (! __ic3_clause_32_p0 :named c2483))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_22))
;; Success 

;; check_frames: Does R_1 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c2484))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2485))
;; Success 

(assert (! __ic3_clause_9_p0 :named c2486))
;; Success 

(assert (! __ic3_clause_15_p0 :named c2487))
;; Success 

(assert (! __ic3_clause_11_p0 :named c2488))
;; Success 

(assert (! __ic3_clause_13_p0 :named c2489))
;; Success 

(assert (! __ic3_clause_22_p0 :named c2490))
;; Success 

(assert (! __ic3_clause_32_p0 :named c2491))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2492))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2493))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2494))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2495))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2496))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2497))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2498))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2499))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2500))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2501))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2502))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2503))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2504))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2505))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2506))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2507))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2508))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2509))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2510))
;; Success 

(assert (! __ic3_clause_26_n0_0 :named c2511))
;; Success 

(assert (! __ic3_clause_26_n0_1 :named c2512))
;; Success 

(assert (! __ic3_clause_26_n0_2 :named c2513))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2514))
;; Success 

(assert (! __ic3_clause_9_n0_0 :named c2515))
;; Success 

(assert (! __ic3_clause_9_n0_1 :named c2516))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2517))
;; Success 

(assert (! __ic3_clause_15_n0_0 :named c2518))
;; Success 

(assert (! __ic3_clause_15_n0_1 :named c2519))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2520))
;; Success 

(assert (! __ic3_clause_11_n0_0 :named c2521))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2522))
;; Success 

(assert (! __ic3_clause_13_n0_0 :named c2523))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2524))
;; Success 

(assert (! __ic3_clause_22_n0_0 :named c2525))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2526))
;; Success 

(assert (! __ic3_clause_32_n0_0 :named c2527))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_0 & T |= R_1 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 23 

(declare-fun __ic3_check_frames_23 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_23
 (not
  (and
   f105@1
   (or (not f152@1) (not (> (* 1 f144@1) 0)) (not (> (* 1 f147@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (not (> (* 1 f145@1) 0))
   (not (> (* 1 f146@1) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (or (not f152@1) (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0)))
   (or (not f152@1) (not (> (+ (* 1 f147@1) (- 1)) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (or (not f152@1) (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0)))
   (or (not f152@1) (not (> (+ (* 1 f147@1) (- 1)) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_23 :named c2528))
;; Success 

(assert (! __ic3_frame_0 :named c2529))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_23))
;; Success 

;; block: All counterexamples blocked in R_2 

;; block: Check if all successors of frontier R_2 are safe. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2530))
;; Success 

(assert (! __ic3_clause_3_n1_0 :named c2531))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2532))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2533))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2534))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2535))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2536))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2537))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2538))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2539))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2540))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; block: All successors of R_2 are safe. 

;; fwd_propagate: Checking forward propagation of clauses in frame 1. 

;; check_frames: Does R_1 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c2541))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2542))
;; Success 

(assert (! __ic3_clause_9_p0 :named c2543))
;; Success 

(assert (! __ic3_clause_15_p0 :named c2544))
;; Success 

(assert (! __ic3_clause_11_p0 :named c2545))
;; Success 

(assert (! __ic3_clause_13_p0 :named c2546))
;; Success 

(assert (! __ic3_clause_22_p0 :named c2547))
;; Success 

(assert (! __ic3_clause_32_p0 :named c2548))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2549))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2550))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2551))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2552))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2553))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2554))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2555))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2556))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2557))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2558))
;; Success 

(assert (! __ic3_clause_26_n0_0 :named c2559))
;; Success 

(assert (! __ic3_clause_26_n0_1 :named c2560))
;; Success 

(assert (! __ic3_clause_26_n0_2 :named c2561))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2562))
;; Success 

(assert (! __ic3_clause_9_n0_0 :named c2563))
;; Success 

(assert (! __ic3_clause_9_n0_1 :named c2564))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2565))
;; Success 

(assert (! __ic3_clause_15_n0_0 :named c2566))
;; Success 

(assert (! __ic3_clause_15_n0_1 :named c2567))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2568))
;; Success 

(assert (! __ic3_clause_11_n0_0 :named c2569))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2570))
;; Success 

(assert (! __ic3_clause_13_n0_0 :named c2571))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2572))
;; Success 

(assert (! __ic3_clause_22_n0_0 :named c2573))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2574))
;; Success 

(assert (! __ic3_clause_32_n0_0 :named c2575))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_0 & T |= R_1 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 24 

(declare-fun __ic3_check_frames_24 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_24
 (not
  (and
   f105@1
   (or (not f152@1) (not (> (* 1 f144@1) 0)) (not (> (* 1 f147@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (not (> (* 1 f145@1) 0))
   (not (> (* 1 f146@1) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (or (not f152@1) (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0)))
   (or (not f152@1) (not (> (+ (* 1 f147@1) (- 1)) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_24 :named c2576))
;; Success 

(assert (! __ic3_frame_0 :named c2577))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_24))
;; Success 

;; partition_fwd_prop: Checking for forward propagation of clause set 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for fwd_prop 6 

(declare-fun __ic3_fwd_prop_6 () Bool)
;; Success 

(assert
 (=>
 __ic3_fwd_prop_6
 (not
  (and
   (or (not f152@1) (not (> (* 1 f144@1) 0)) (not (> (* 1 f147@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (not (> (* 1 f145@1) 0))
   (not (> (* 1 f146@1) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2578))
;; Success 

(assert (! __ic3_fwd_prop_6 :named c2579))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2580))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2581))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2582))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2583))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2584))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2585))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2586))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2587))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2588))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2589))
;; Success 

(assert (! __ic3_clause_9_p0 :named c2590))
;; Success 

(assert (! __ic3_clause_15_p0 :named c2591))
;; Success 

(assert (! __ic3_clause_11_p0 :named c2592))
;; Success 

(assert (! __ic3_clause_13_p0 :named c2593))
;; Success 

(assert (! __ic3_clause_22_p0 :named c2594))
;; Success 

(assert (! __ic3_clause_32_p0 :named c2595))
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
;;     (f152@1 false) 
;;     (f151@1 false) 
;;     (f150@1 false) 
;;     (f149@1 false) 
;;     (f148@1 1) 
;;     (f147@1 0) 
;;     (f146@1 1) 
;;     (f145@1 1) 
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
;;     (f104@1 0) 
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
;;     (f92@1 true) 
;;     (f154@0 false) 
;;     (f155@0 false) 
;;     (f156@0 false) 
;;     (f157@0 1) 
;;     (f158@0 false) 
;;     (f153@0 2) 
;;     (f152@0 false) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 1) 
;;     (f147@0 1) 
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

(assert (not __ic3_fwd_prop_6))
;; Success 

;; partition_fwd_prop: Checking for forward propagation of clause set 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for fwd_prop 7 

(declare-fun __ic3_fwd_prop_7 () Bool)
;; Success 

(assert
 (=>
 __ic3_fwd_prop_7
 (not
  (and
   (or (not f152@1) (not (> (* 1 f144@1) 0)) (not (> (* 1 f147@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2596))
;; Success 

(assert (! __ic3_fwd_prop_7 :named c2597))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2598))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2599))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2600))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2601))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2602))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2603))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2604))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2605))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2606))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2607))
;; Success 

(assert (! __ic3_clause_9_p0 :named c2608))
;; Success 

(assert (! __ic3_clause_15_p0 :named c2609))
;; Success 

(assert (! __ic3_clause_11_p0 :named c2610))
;; Success 

(assert (! __ic3_clause_13_p0 :named c2611))
;; Success 

(assert (! __ic3_clause_22_p0 :named c2612))
;; Success 

(assert (! __ic3_clause_32_p0 :named c2613))
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
;;     (f152@1 false) 
;;     (f151@1 false) 
;;     (f150@1 false) 
;;     (f149@1 false) 
;;     (f148@1 1) 
;;     (f147@1 2) 
;;     (f146@1 0) 
;;     (f145@1 (- 1)) 
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
;;     (f104@1 0) 
;;     (f103@1 false) 
;;     (f102@1 false) 
;;     (f101@1 false) 
;;     (f100@1 false) 
;;     (f99@1 false) 
;;     (f98@1 false) 
;;     (f97@1 false) 
;;     (f96@1 true) 
;;     (f95@1 true) 
;;     (f94@1 true) 
;;     (f93@1 false) 
;;     (f92@1 true) 
;;     (f154@0 false) 
;;     (f155@0 false) 
;;     (f156@0 false) 
;;     (f157@0 1) 
;;     (f158@0 false) 
;;     (f153@0 2) 
;;     (f152@0 false) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 1) 
;;     (f147@0 1) 
;;     (f146@0 0) 
;;     (f145@0 (- 1)) 
;;     (f144@0 1) 
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

(assert (not __ic3_fwd_prop_7))
;; Success 

;; partition_fwd_prop: Checking for forward propagation of clause set 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for fwd_prop 8 

(declare-fun __ic3_fwd_prop_8 () Bool)
;; Success 

(assert
 (=>
 __ic3_fwd_prop_8
 (not
  (and
   (or (not f152@1) (not (> (* 1 f144@1) 0)) (not (> (* 1 f147@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (not (> (+ (* 1 f144@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2614))
;; Success 

(assert (! __ic3_fwd_prop_8 :named c2615))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2616))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2617))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2618))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2619))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2620))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2621))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2622))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2623))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2624))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2625))
;; Success 

(assert (! __ic3_clause_9_p0 :named c2626))
;; Success 

(assert (! __ic3_clause_15_p0 :named c2627))
;; Success 

(assert (! __ic3_clause_11_p0 :named c2628))
;; Success 

(assert (! __ic3_clause_13_p0 :named c2629))
;; Success 

(assert (! __ic3_clause_22_p0 :named c2630))
;; Success 

(assert (! __ic3_clause_32_p0 :named c2631))
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
;;     (f152@1 false) 
;;     (f151@1 false) 
;;     (f150@1 false) 
;;     (f149@1 false) 
;;     (f148@1 2) 
;;     (f147@1 2) 
;;     (f146@1 (- 1)) 
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
;;     (f104@1 0) 
;;     (f103@1 false) 
;;     (f102@1 false) 
;;     (f101@1 false) 
;;     (f100@1 true) 
;;     (f99@1 false) 
;;     (f98@1 false) 
;;     (f97@1 true) 
;;     (f96@1 true) 
;;     (f95@1 true) 
;;     (f94@1 true) 
;;     (f93@1 false) 
;;     (f92@1 false) 
;;     (f154@0 false) 
;;     (f155@0 false) 
;;     (f156@0 false) 
;;     (f157@0 1) 
;;     (f158@0 false) 
;;     (f153@0 2) 
;;     (f152@0 false) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 1) 
;;     (f147@0 1) 
;;     (f146@0 (- 1)) 
;;     (f145@0 0) 
;;     (f144@0 1) 
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

(assert (not __ic3_fwd_prop_8))
;; Success 

;; partition_fwd_prop: Checking for forward propagation of clause set 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for fwd_prop 9 

(declare-fun __ic3_fwd_prop_9 () Bool)
;; Success 

(assert
 (=>
 __ic3_fwd_prop_9
 (not
  (and
   (or (not f152@1) (not (> (* 1 f144@1) 0)) (not (> (* 1 f147@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (not (> (+ (* 1 f144@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2632))
;; Success 

(assert (! __ic3_fwd_prop_9 :named c2633))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2634))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2635))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2636))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2637))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2638))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2639))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2640))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2641))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2642))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2643))
;; Success 

(assert (! __ic3_clause_9_p0 :named c2644))
;; Success 

(assert (! __ic3_clause_15_p0 :named c2645))
;; Success 

(assert (! __ic3_clause_11_p0 :named c2646))
;; Success 

(assert (! __ic3_clause_13_p0 :named c2647))
;; Success 

(assert (! __ic3_clause_22_p0 :named c2648))
;; Success 

(assert (! __ic3_clause_32_p0 :named c2649))
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
;;     (f152@1 false) 
;;     (f151@1 false) 
;;     (f150@1 false) 
;;     (f149@1 false) 
;;     (f148@1 2) 
;;     (f147@1 1) 
;;     (f146@1 (- 1)) 
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
;;     (f104@1 0) 
;;     (f103@1 false) 
;;     (f102@1 false) 
;;     (f101@1 false) 
;;     (f100@1 true) 
;;     (f99@1 false) 
;;     (f98@1 false) 
;;     (f97@1 true) 
;;     (f96@1 true) 
;;     (f95@1 true) 
;;     (f94@1 false) 
;;     (f93@1 false) 
;;     (f92@1 false) 
;;     (f154@0 false) 
;;     (f155@0 false) 
;;     (f156@0 false) 
;;     (f157@0 1) 
;;     (f158@0 false) 
;;     (f153@0 2) 
;;     (f152@0 false) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 1) 
;;     (f147@0 1) 
;;     (f146@0 (- 1)) 
;;     (f145@0 0) 
;;     (f144@0 1) 
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

(assert (not __ic3_fwd_prop_9))
;; Success 

;; partition_fwd_prop: Checking for forward propagation of clause set 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for fwd_prop 10 

(declare-fun __ic3_fwd_prop_10 () Bool)
;; Success 

(assert
 (=>
 __ic3_fwd_prop_10
 (not
  (and
   (or (not f152@1) (not (> (* 1 f144@1) 0)) (not (> (* 1 f147@1) 0)))
   (not (> (+ (* 1 f144@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2650))
;; Success 

(assert (! __ic3_fwd_prop_10 :named c2651))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2652))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2653))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2654))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2655))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2656))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2657))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2658))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2659))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2660))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2661))
;; Success 

(assert (! __ic3_clause_9_p0 :named c2662))
;; Success 

(assert (! __ic3_clause_15_p0 :named c2663))
;; Success 

(assert (! __ic3_clause_11_p0 :named c2664))
;; Success 

(assert (! __ic3_clause_13_p0 :named c2665))
;; Success 

(assert (! __ic3_clause_22_p0 :named c2666))
;; Success 

(assert (! __ic3_clause_32_p0 :named c2667))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_fwd_prop_10))
;; Success 

;; check_frames: Does R_1 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c2668))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2669))
;; Success 

(assert (! __ic3_clause_9_p0 :named c2670))
;; Success 

(assert (! __ic3_clause_15_p0 :named c2671))
;; Success 

(assert (! __ic3_clause_11_p0 :named c2672))
;; Success 

(assert (! __ic3_clause_13_p0 :named c2673))
;; Success 

(assert (! __ic3_clause_22_p0 :named c2674))
;; Success 

(assert (! __ic3_clause_32_p0 :named c2675))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2676))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2677))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2678))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2679))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2680))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2681))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2682))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2683))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2684))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2685))
;; Success 

(assert (! __ic3_clause_22_p0 :named c2686))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2687))
;; Success 

(assert (! __ic3_clause_26_n0_0 :named c2688))
;; Success 

(assert (! __ic3_clause_26_n0_1 :named c2689))
;; Success 

(assert (! __ic3_clause_26_n0_2 :named c2690))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2691))
;; Success 

(assert (! __ic3_clause_9_n0_0 :named c2692))
;; Success 

(assert (! __ic3_clause_9_n0_1 :named c2693))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2694))
;; Success 

(assert (! __ic3_clause_15_n0_0 :named c2695))
;; Success 

(assert (! __ic3_clause_15_n0_1 :named c2696))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2697))
;; Success 

(assert (! __ic3_clause_11_n0_0 :named c2698))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2699))
;; Success 

(assert (! __ic3_clause_13_n0_0 :named c2700))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2701))
;; Success 

(assert (! __ic3_clause_22_n0_0 :named c2702))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c2703))
;; Success 

(assert (! __ic3_clause_32_n0_0 :named c2704))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_0 & T |= R_1 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 25 

(declare-fun __ic3_check_frames_25 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_25
 (not
  (and
   f105@1
   (or (not f152@1) (not (> (* 1 f144@1) 0)) (not (> (* 1 f147@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (not (> (* 1 f145@1) 0))
   (not (> (* 1 f146@1) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (or (not f152@1) (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0)))
   (or (not f152@1) (not (> (+ (* 1 f147@1) (- 1)) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (or (not f152@1) (not (> (* 1 f144@1) 0)) (not (> (* 1 f147@1) 0)))
   (not (> (+ (* 1 f144@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_25 :named c2705))
;; Success 

(assert (! __ic3_frame_0 :named c2706))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_25))
;; Success 

;; fwd_propagate: Checking forward propagation of clauses before generalization in frame 1. 

;; Copied clause #10 in forward propagation: 
;; #36 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_1@0) 0))} 

;; Copied clause #12 in forward propagation: 
;; #37 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_1@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_2@0) 0))} 

;; Copied clause #31 in forward propagation: 
;; #38 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_1@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_2@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_3@0) 0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 0) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0)) 0)); 
;;      (not (> (+ (* 1 top.res.abs_3@0) (- 1)) 0))} 

;; Copied clause #14 in forward propagation: 
;; #39 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_1@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_2@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_3@0) 0))} 

;; Copied clause #8 in forward propagation: 
;; #40 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_0@0) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 3) 0))} 

(declare-fun __ic3_clause_40_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_40_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f144@0) 0))
  (not (> (+ (* (- 1) f144@0) 3) 0)))))
;; Success 

(declare-fun __ic3_clause_39_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_39_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0)))))
;; Success 

(declare-fun __ic3_clause_38_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_38_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f147@0) (- 1)) 0)))))
;; Success 

(declare-fun __ic3_clause_37_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_37_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (* 1 f146@0) 0)))))
;; Success 

(declare-fun __ic3_clause_36_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_36_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f145@0) 0)))))
;; Success 

;; partition_fwd_prop: Checking for forward propagation of clause set 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for fwd_prop 11 

(declare-fun __ic3_fwd_prop_11 () Bool)
;; Success 

(assert
 (=>
 __ic3_fwd_prop_11
 (not
  (and
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0))
    (not (> (+ (* (- 1) f144@1) 3) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (+ (* (- 1) f146@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (+ (* (- 1) f146@1) 1) 0))
    (not (> (* 1 f147@1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
    (not (> (+ (* 1 f147@1) (- 1)) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2707))
;; Success 

(assert (! __ic3_fwd_prop_11 :named c2708))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2709))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2710))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2711))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2712))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2713))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2714))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2715))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2716))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2717))
;; Success 

(assert (! __ic3_clause_11_p0 :named c2718))
;; Success 

(assert (! __ic3_clause_13_p0 :named c2719))
;; Success 

(assert (! __ic3_clause_32_p0 :named c2720))
;; Success 

(assert (! __ic3_clause_15_p0 :named c2721))
;; Success 

(assert (! __ic3_clause_9_p0 :named c2722))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2723))
;; Success 

(assert (! __ic3_clause_22_p0 :named c2724))
;; Success 

(assert (! __ic3_clause_40_p0 :named c2725))
;; Success 

(assert (! __ic3_clause_39_p0 :named c2726))
;; Success 

(assert (! __ic3_clause_38_p0 :named c2727))
;; Success 

(assert (! __ic3_clause_37_p0 :named c2728))
;; Success 

(assert (! __ic3_clause_36_p0 :named c2729))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_fwd_prop_11))
;; Success 

;; subsume_and_add: clause 11 

;; subsume_and_add: clause 13 

;; subsume_and_add: clause 32 

;; subsume_and_add: clause 15 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 309 

(declare-fun __ic3_ind_gen_309 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_309 (> (* 1 f147@1) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 310 

(declare-fun __ic3_ind_gen_310 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_310 (> (* 1 f147@0) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 311 

(declare-fun __ic3_ind_gen_311 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_311 (not (> (* 1 f147@0) 0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_310 :named c2730))
;; Success 

(assert (! __ic3_frame_0 :named c2731))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2732))
;; Success 

(assert (! __ic3_ind_gen_311 :named c2733))
;; Success 

(assert (! __ic3_ind_gen_309 :named c2734))
;; Success 

(assert (! __ic3_clause_11_p0 :named c2735))
;; Success 

(assert (! __ic3_clause_13_p0 :named c2736))
;; Success 

(assert (! __ic3_clause_32_p0 :named c2737))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_311))
;; Success 

(assert (not __ic3_ind_gen_310))
;; Success 

(assert (not __ic3_ind_gen_309))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 312 

(declare-fun __ic3_ind_gen_312 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_312 (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 313 

(declare-fun __ic3_ind_gen_313 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_313 (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 314 

(declare-fun __ic3_ind_gen_314 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_314 (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_313 :named c2738))
;; Success 

(assert (! __ic3_frame_0 :named c2739))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_314))
;; Success 

(assert (not __ic3_ind_gen_313))
;; Success 

(assert (not __ic3_ind_gen_312))
;; Success 

;; subsume_and_add: clause 9 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 315 

(declare-fun __ic3_ind_gen_315 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_315 (> (* 1 f144@1) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 316 

(declare-fun __ic3_ind_gen_316 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_316 (> (* 1 f144@0) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 317 

(declare-fun __ic3_ind_gen_317 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_317 (not (> (* 1 f144@0) 0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_316 :named c2740))
;; Success 

(assert (! __ic3_frame_0 :named c2741))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2742))
;; Success 

(assert (! __ic3_ind_gen_317 :named c2743))
;; Success 

(assert (! __ic3_ind_gen_315 :named c2744))
;; Success 

(assert (! __ic3_clause_15_p0 :named c2745))
;; Success 

(assert (! __ic3_clause_11_p0 :named c2746))
;; Success 

(assert (! __ic3_clause_13_p0 :named c2747))
;; Success 

(assert (! __ic3_clause_32_p0 :named c2748))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_317))
;; Success 

(assert (not __ic3_ind_gen_316))
;; Success 

(assert (not __ic3_ind_gen_315))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 318 

(declare-fun __ic3_ind_gen_318 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_318 (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 319 

(declare-fun __ic3_ind_gen_319 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_319 (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 320 

(declare-fun __ic3_ind_gen_320 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_320 (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_319 :named c2749))
;; Success 

(assert (! __ic3_frame_0 :named c2750))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_320))
;; Success 

(assert (not __ic3_ind_gen_319))
;; Success 

(assert (not __ic3_ind_gen_318))
;; Success 

;; fwd_propagate: Checking forward propagation of clauses in frame 2. 

;; subsume_and_add: clause 26 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 321 

(declare-fun __ic3_ind_gen_321 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_321
 (not (or (not (> (* 1 f144@1) 0)) (not (> (* 1 f147@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 322 

(declare-fun __ic3_ind_gen_322 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_322
 (not (or (not (> (* 1 f144@0) 0)) (not (> (* 1 f147@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 323 

(declare-fun __ic3_ind_gen_323 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_323 (or (not (> (* 1 f144@0) 0)) (not (> (* 1 f147@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_322 :named c2751))
;; Success 

(assert (! __ic3_frame_0 :named c2752))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2753))
;; Success 

(assert (! __ic3_ind_gen_323 :named c2754))
;; Success 

(assert (! __ic3_ind_gen_321 :named c2755))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2756))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2757))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2758))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2759))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2760))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2761))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2762))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2763))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2764))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_323))
;; Success 

(assert (not __ic3_ind_gen_322))
;; Success 

(assert (not __ic3_ind_gen_321))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 324 

(declare-fun __ic3_ind_gen_324 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_324 (not (or (not f152@1) (not (> (* 1 f147@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 325 

(declare-fun __ic3_ind_gen_325 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_325 (not (or (not f152@0) (not (> (* 1 f147@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 326 

(declare-fun __ic3_ind_gen_326 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_326 (or (not f152@0) (not (> (* 1 f147@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_325 :named c2765))
;; Success 

(assert (! __ic3_frame_0 :named c2766))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2767))
;; Success 

(assert (! __ic3_ind_gen_326 :named c2768))
;; Success 

(assert (! __ic3_ind_gen_324 :named c2769))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2770))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2771))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2772))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2773))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2774))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2775))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2776))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2777))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2778))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_326))
;; Success 

(assert (not __ic3_ind_gen_325))
;; Success 

(assert (not __ic3_ind_gen_324))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 327 

(declare-fun __ic3_ind_gen_327 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_327 (not (or (not (> (* 1 f144@1) 0)) (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 328 

(declare-fun __ic3_ind_gen_328 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_328 (not (or (not (> (* 1 f144@0) 0)) (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 329 

(declare-fun __ic3_ind_gen_329 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_329 (or (not (> (* 1 f144@0) 0)) (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_328 :named c2779))
;; Success 

(assert (! __ic3_frame_0 :named c2780))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2781))
;; Success 

(assert (! __ic3_ind_gen_329 :named c2782))
;; Success 

(assert (! __ic3_ind_gen_327 :named c2783))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2784))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2785))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2786))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2787))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2788))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2789))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2790))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2791))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2792))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_329))
;; Success 

(assert (not __ic3_ind_gen_328))
;; Success 

(assert (not __ic3_ind_gen_327))
;; Success 

;; subsume_and_add: clause 22 

;; Clause is subsumed in frame 
;; __ic3_clause_16_p0 
;; __ic3_clause_17_p0 
;; __ic3_clause_29_p0 
;; __ic3_clause_35_p0 
;; __ic3_clause_26_p0 
;; __ic3_clause_28_p0 
;; __ic3_clause_34_p0 
;; __ic3_clause_5_p0 
;; __ic3_clause_7_p0 
;; __ic3_clause_24_p0 

;; Deactivating activation literals for clause 

(assert (not __ic3_clause_22_p0))
;; Success 

(assert (not __ic3_clause_22_n0_0))
;; Success 

;; subsume_and_add: clause 40 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 330 

(declare-fun __ic3_ind_gen_330 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_330
 (not
  (or
   (not f152@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f144@1) 0))
   (not (> (+ (* (- 1) f144@1) 3) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 331 

(declare-fun __ic3_ind_gen_331 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_331
 (not
  (or
   (not f152@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f144@0) 0))
   (not (> (+ (* (- 1) f144@0) 3) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 332 

(declare-fun __ic3_ind_gen_332 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_332
 (or
  (not f152@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f144@0) 0))
  (not (> (+ (* (- 1) f144@0) 3) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_331 :named c2793))
;; Success 

(assert (! __ic3_frame_0 :named c2794))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2795))
;; Success 

(assert (! __ic3_ind_gen_332 :named c2796))
;; Success 

(assert (! __ic3_ind_gen_330 :named c2797))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2798))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2799))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2800))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2801))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2802))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2803))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2804))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2805))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2806))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2807))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_332))
;; Success 

(assert (not __ic3_ind_gen_331))
;; Success 

(assert (not __ic3_ind_gen_330))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 333 

(declare-fun __ic3_ind_gen_333 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_333
 (not
  (or
   (not f105@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f144@1) 0))
   (not (> (+ (* (- 1) f144@1) 3) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 334 

(declare-fun __ic3_ind_gen_334 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_334
 (not
  (or
   (not f105@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f144@0) 0))
   (not (> (+ (* (- 1) f144@0) 3) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 335 

(declare-fun __ic3_ind_gen_335 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_335
 (or
  (not f105@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f144@0) 0))
  (not (> (+ (* (- 1) f144@0) 3) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_334 :named c2808))
;; Success 

(assert (! __ic3_frame_0 :named c2809))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2810))
;; Success 

(assert (! __ic3_ind_gen_335 :named c2811))
;; Success 

(assert (! __ic3_ind_gen_333 :named c2812))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2813))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2814))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2815))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2816))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2817))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2818))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2819))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2820))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2821))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2822))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_335))
;; Success 

(assert (not __ic3_ind_gen_334))
;; Success 

(assert (not __ic3_ind_gen_333))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 336 

(declare-fun __ic3_ind_gen_336 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_336
 (not
  (or
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f144@1) 0))
   (not (> (+ (* (- 1) f144@1) 3) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 337 

(declare-fun __ic3_ind_gen_337 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_337
 (not
  (or
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f144@0) 0))
   (not (> (+ (* (- 1) f144@0) 3) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 338 

(declare-fun __ic3_ind_gen_338 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_338
 (or
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f144@0) 0))
  (not (> (+ (* (- 1) f144@0) 3) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_337 :named c2823))
;; Success 

(assert (! __ic3_frame_0 :named c2824))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2825))
;; Success 

(assert (! __ic3_ind_gen_338 :named c2826))
;; Success 

(assert (! __ic3_ind_gen_336 :named c2827))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2828))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2829))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2830))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2831))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2832))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2833))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2834))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2835))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2836))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2837))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_338))
;; Success 

(assert (not __ic3_ind_gen_337))
;; Success 

(assert (not __ic3_ind_gen_336))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 339 

(declare-fun __ic3_ind_gen_339 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_339
 (not
  (or
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f144@1) 0))
   (not (> (+ (* (- 1) f144@1) 3) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 340 

(declare-fun __ic3_ind_gen_340 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_340
 (not
  (or
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f144@0) 0))
   (not (> (+ (* (- 1) f144@0) 3) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 341 

(declare-fun __ic3_ind_gen_341 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_341
 (or
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f144@0) 0))
  (not (> (+ (* (- 1) f144@0) 3) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_340 :named c2838))
;; Success 

(assert (! __ic3_frame_0 :named c2839))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2840))
;; Success 

(assert (! __ic3_ind_gen_341 :named c2841))
;; Success 

(assert (! __ic3_ind_gen_339 :named c2842))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2843))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2844))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2845))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2846))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2847))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2848))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2849))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2850))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2851))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2852))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_341))
;; Success 

(assert (not __ic3_ind_gen_340))
;; Success 

(assert (not __ic3_ind_gen_339))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 342 

(declare-fun __ic3_ind_gen_342 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_342
 (not
  (or
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not f152@1)
   (not f105@1)
   (not (> (* 1 f144@1) 0))
   (not (> (+ (* (- 1) f144@1) 3) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 343 

(declare-fun __ic3_ind_gen_343 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_343
 (not
  (or
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not f152@0)
   (not f105@0)
   (not (> (* 1 f144@0) 0))
   (not (> (+ (* (- 1) f144@0) 3) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 344 

(declare-fun __ic3_ind_gen_344 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_344
 (or
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not f152@0)
  (not f105@0)
  (not (> (* 1 f144@0) 0))
  (not (> (+ (* (- 1) f144@0) 3) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_343 :named c2853))
;; Success 

(assert (! __ic3_frame_0 :named c2854))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2855))
;; Success 

(assert (! __ic3_ind_gen_344 :named c2856))
;; Success 

(assert (! __ic3_ind_gen_342 :named c2857))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2858))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2859))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2860))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2861))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2862))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2863))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2864))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2865))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2866))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2867))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_344))
;; Success 

(assert (not __ic3_ind_gen_343))
;; Success 

(assert (not __ic3_ind_gen_342))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 345 

(declare-fun __ic3_ind_gen_345 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_345
 (not
  (or
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f144@1) 3) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 346 

(declare-fun __ic3_ind_gen_346 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_346
 (not
  (or
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f144@0) 3) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 347 

(declare-fun __ic3_ind_gen_347 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_347
 (or
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f144@0) 3) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_346 :named c2868))
;; Success 

(assert (! __ic3_frame_0 :named c2869))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_347))
;; Success 

(assert (not __ic3_ind_gen_346))
;; Success 

(assert (not __ic3_ind_gen_345))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 348 

(declare-fun __ic3_ind_gen_348 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_348
 (not
  (or
   (not (> (* 1 f144@1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not f152@1)
   (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 349 

(declare-fun __ic3_ind_gen_349 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_349
 (not
  (or
   (not (> (* 1 f144@0) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not f152@0)
   (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 350 

(declare-fun __ic3_ind_gen_350 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_350
 (or
  (not (> (* 1 f144@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not f152@0)
  (not f105@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_349 :named c2870))
;; Success 

(assert (! __ic3_frame_0 :named c2871))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2872))
;; Success 

(assert (! __ic3_ind_gen_350 :named c2873))
;; Success 

(assert (! __ic3_ind_gen_348 :named c2874))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2875))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2876))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2877))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2878))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2879))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2880))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2881))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2882))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2883))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2884))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_350))
;; Success 

(assert (not __ic3_ind_gen_349))
;; Success 

(assert (not __ic3_ind_gen_348))
;; Success 

;; Clause is subsumed in frame 
;; __ic3_clause_16_p0 
;; __ic3_clause_17_p0 
;; __ic3_clause_29_p0 
;; __ic3_clause_35_p0 
;; __ic3_clause_26_p0 
;; __ic3_clause_28_p0 
;; __ic3_clause_34_p0 
;; __ic3_clause_5_p0 
;; __ic3_clause_7_p0 
;; __ic3_clause_24_p0 

;; Deactivating activation literals for clause 

(assert (not __ic3_clause_40_p0))
;; Success 

;; subsume_and_add: clause 39 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 351 

(declare-fun __ic3_ind_gen_351 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_351
 (not
  (or
   (not f152@1)
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (* 1 f147@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 352 

(declare-fun __ic3_ind_gen_352 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_352
 (not
  (or
   (not f152@0)
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (* 1 f147@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 353 

(declare-fun __ic3_ind_gen_353 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_353
 (or
  (not f152@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_352 :named c2885))
;; Success 

(assert (! __ic3_frame_0 :named c2886))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2887))
;; Success 

(assert (! __ic3_ind_gen_353 :named c2888))
;; Success 

(assert (! __ic3_ind_gen_351 :named c2889))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2890))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2891))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2892))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2893))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2894))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2895))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2896))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2897))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2898))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2899))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_353))
;; Success 

(assert (not __ic3_ind_gen_352))
;; Success 

(assert (not __ic3_ind_gen_351))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 354 

(declare-fun __ic3_ind_gen_354 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_354
 (not
  (or
   (not f105@1)
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (* 1 f147@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 355 

(declare-fun __ic3_ind_gen_355 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_355
 (not
  (or
   (not f105@0)
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (* 1 f147@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 356 

(declare-fun __ic3_ind_gen_356 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_356
 (or
  (not f105@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_355 :named c2900))
;; Success 

(assert (! __ic3_frame_0 :named c2901))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2902))
;; Success 

(assert (! __ic3_ind_gen_356 :named c2903))
;; Success 

(assert (! __ic3_ind_gen_354 :named c2904))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2905))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2906))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2907))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2908))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2909))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2910))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2911))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2912))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2913))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2914))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_356))
;; Success 

(assert (not __ic3_ind_gen_355))
;; Success 

(assert (not __ic3_ind_gen_354))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 357 

(declare-fun __ic3_ind_gen_357 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_357
 (not
  (or
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (* 1 f147@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 358 

(declare-fun __ic3_ind_gen_358 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_358
 (not
  (or
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (* 1 f147@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 359 

(declare-fun __ic3_ind_gen_359 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_359
 (or
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_358 :named c2915))
;; Success 

(assert (! __ic3_frame_0 :named c2916))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2917))
;; Success 

(assert (! __ic3_ind_gen_359 :named c2918))
;; Success 

(assert (! __ic3_ind_gen_357 :named c2919))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2920))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2921))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2922))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2923))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2924))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2925))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2926))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2927))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2928))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2929))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_359))
;; Success 

(assert (not __ic3_ind_gen_358))
;; Success 

(assert (not __ic3_ind_gen_357))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 360 

(declare-fun __ic3_ind_gen_360 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_360
 (not
  (or
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (* 1 f147@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 361 

(declare-fun __ic3_ind_gen_361 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_361
 (not
  (or
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (* 1 f147@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 362 

(declare-fun __ic3_ind_gen_362 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_362
 (or
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_361 :named c2930))
;; Success 

(assert (! __ic3_frame_0 :named c2931))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2932))
;; Success 

(assert (! __ic3_ind_gen_362 :named c2933))
;; Success 

(assert (! __ic3_ind_gen_360 :named c2934))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2935))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2936))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2937))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2938))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2939))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2940))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2941))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2942))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2943))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2944))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_362))
;; Success 

(assert (not __ic3_ind_gen_361))
;; Success 

(assert (not __ic3_ind_gen_360))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 363 

(declare-fun __ic3_ind_gen_363 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_363
 (not
  (or
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (* 1 f147@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 364 

(declare-fun __ic3_ind_gen_364 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_364
 (not
  (or
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (* 1 f147@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 365 

(declare-fun __ic3_ind_gen_365 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_365
 (or
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_364 :named c2945))
;; Success 

(assert (! __ic3_frame_0 :named c2946))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2947))
;; Success 

(assert (! __ic3_ind_gen_365 :named c2948))
;; Success 

(assert (! __ic3_ind_gen_363 :named c2949))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2950))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2951))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2952))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2953))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2954))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2955))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2956))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2957))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2958))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2959))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_365))
;; Success 

(assert (not __ic3_ind_gen_364))
;; Success 

(assert (not __ic3_ind_gen_363))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 366 

(declare-fun __ic3_ind_gen_366 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_366
 (not
  (or
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (* 1 f147@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 367 

(declare-fun __ic3_ind_gen_367 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_367
 (not
  (or
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (* 1 f147@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 368 

(declare-fun __ic3_ind_gen_368 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_368
 (or
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_367 :named c2960))
;; Success 

(assert (! __ic3_frame_0 :named c2961))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2962))
;; Success 

(assert (! __ic3_ind_gen_368 :named c2963))
;; Success 

(assert (! __ic3_ind_gen_366 :named c2964))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2965))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2966))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2967))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2968))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2969))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2970))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2971))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2972))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2973))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2974))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_368))
;; Success 

(assert (not __ic3_ind_gen_367))
;; Success 

(assert (not __ic3_ind_gen_366))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 369 

(declare-fun __ic3_ind_gen_369 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_369
 (not
  (or
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (* 1 f147@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 370 

(declare-fun __ic3_ind_gen_370 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_370
 (not
  (or
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (* 1 f147@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 371 

(declare-fun __ic3_ind_gen_371 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_371
 (or
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_370 :named c2975))
;; Success 

(assert (! __ic3_frame_0 :named c2976))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2977))
;; Success 

(assert (! __ic3_ind_gen_371 :named c2978))
;; Success 

(assert (! __ic3_ind_gen_369 :named c2979))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2980))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2981))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2982))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2983))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2984))
;; Success 

(assert (! __ic3_clause_28_p0 :named c2985))
;; Success 

(assert (! __ic3_clause_34_p0 :named c2986))
;; Success 

(assert (! __ic3_clause_5_p0 :named c2987))
;; Success 

(assert (! __ic3_clause_7_p0 :named c2988))
;; Success 

(assert (! __ic3_clause_24_p0 :named c2989))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_371))
;; Success 

(assert (not __ic3_ind_gen_370))
;; Success 

(assert (not __ic3_ind_gen_369))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 372 

(declare-fun __ic3_ind_gen_372 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_372
 (not
  (or
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (* 1 f147@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 373 

(declare-fun __ic3_ind_gen_373 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_373
 (not
  (or
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (* 1 f147@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 374 

(declare-fun __ic3_ind_gen_374 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_374
 (or
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_373 :named c2990))
;; Success 

(assert (! __ic3_frame_0 :named c2991))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c2992))
;; Success 

(assert (! __ic3_ind_gen_374 :named c2993))
;; Success 

(assert (! __ic3_ind_gen_372 :named c2994))
;; Success 

(assert (! __ic3_clause_16_p0 :named c2995))
;; Success 

(assert (! __ic3_clause_17_p0 :named c2996))
;; Success 

(assert (! __ic3_clause_29_p0 :named c2997))
;; Success 

(assert (! __ic3_clause_35_p0 :named c2998))
;; Success 

(assert (! __ic3_clause_26_p0 :named c2999))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3000))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3001))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3002))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3003))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3004))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_374))
;; Success 

(assert (not __ic3_ind_gen_373))
;; Success 

(assert (not __ic3_ind_gen_372))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 375 

(declare-fun __ic3_ind_gen_375 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_375
 (not
  (or
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (* 1 f147@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 376 

(declare-fun __ic3_ind_gen_376 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_376
 (not
  (or
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (* 1 f147@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 377 

(declare-fun __ic3_ind_gen_377 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_377
 (or
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (* 1 f147@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_376 :named c3005))
;; Success 

(assert (! __ic3_frame_0 :named c3006))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3007))
;; Success 

(assert (! __ic3_ind_gen_377 :named c3008))
;; Success 

(assert (! __ic3_ind_gen_375 :named c3009))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3010))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3011))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3012))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3013))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3014))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3015))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3016))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3017))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3018))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3019))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_377))
;; Success 

(assert (not __ic3_ind_gen_376))
;; Success 

(assert (not __ic3_ind_gen_375))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 378 

(declare-fun __ic3_ind_gen_378 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_378
 (not
  (or
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 379 

(declare-fun __ic3_ind_gen_379 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_379
 (not
  (or
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 380 

(declare-fun __ic3_ind_gen_380 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_380
 (or
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_379 :named c3020))
;; Success 

(assert (! __ic3_frame_0 :named c3021))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_380))
;; Success 

(assert (not __ic3_ind_gen_379))
;; Success 

(assert (not __ic3_ind_gen_378))
;; Success 

;; Clause is subsumed in frame 
;; __ic3_clause_16_p0 
;; __ic3_clause_17_p0 
;; __ic3_clause_29_p0 
;; __ic3_clause_35_p0 
;; __ic3_clause_26_p0 
;; __ic3_clause_28_p0 
;; __ic3_clause_34_p0 
;; __ic3_clause_5_p0 
;; __ic3_clause_7_p0 
;; __ic3_clause_24_p0 

;; Deactivating activation literals for clause 

(assert (not __ic3_clause_39_p0))
;; Success 

;; subsume_and_add: clause 38 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 381 

(declare-fun __ic3_ind_gen_381 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_381
 (not
  (or
   (not f152@1)
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (* 1 f147@1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 382 

(declare-fun __ic3_ind_gen_382 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_382
 (not
  (or
   (not f152@0)
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (* 1 f147@0) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f147@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 383 

(declare-fun __ic3_ind_gen_383 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_383
 (or
  (not f152@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f147@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_382 :named c3022))
;; Success 

(assert (! __ic3_frame_0 :named c3023))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3024))
;; Success 

(assert (! __ic3_ind_gen_383 :named c3025))
;; Success 

(assert (! __ic3_ind_gen_381 :named c3026))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3027))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3028))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3029))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3030))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3031))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3032))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3033))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3034))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3035))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3036))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_383))
;; Success 

(assert (not __ic3_ind_gen_382))
;; Success 

(assert (not __ic3_ind_gen_381))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 384 

(declare-fun __ic3_ind_gen_384 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_384
 (not
  (or
   (not f105@1)
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (* 1 f147@1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 385 

(declare-fun __ic3_ind_gen_385 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_385
 (not
  (or
   (not f105@0)
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (* 1 f147@0) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f147@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 386 

(declare-fun __ic3_ind_gen_386 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_386
 (or
  (not f105@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f147@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_385 :named c3037))
;; Success 

(assert (! __ic3_frame_0 :named c3038))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3039))
;; Success 

(assert (! __ic3_ind_gen_386 :named c3040))
;; Success 

(assert (! __ic3_ind_gen_384 :named c3041))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3042))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3043))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3044))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3045))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3046))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3047))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3048))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3049))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3050))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3051))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_386))
;; Success 

(assert (not __ic3_ind_gen_385))
;; Success 

(assert (not __ic3_ind_gen_384))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 387 

(declare-fun __ic3_ind_gen_387 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_387
 (not
  (or
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (* 1 f147@1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 388 

(declare-fun __ic3_ind_gen_388 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_388
 (not
  (or
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (* 1 f147@0) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f147@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 389 

(declare-fun __ic3_ind_gen_389 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_389
 (or
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f147@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_388 :named c3052))
;; Success 

(assert (! __ic3_frame_0 :named c3053))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3054))
;; Success 

(assert (! __ic3_ind_gen_389 :named c3055))
;; Success 

(assert (! __ic3_ind_gen_387 :named c3056))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3057))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3058))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3059))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3060))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3061))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3062))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3063))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3064))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3065))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3066))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_389))
;; Success 

(assert (not __ic3_ind_gen_388))
;; Success 

(assert (not __ic3_ind_gen_387))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 390 

(declare-fun __ic3_ind_gen_390 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_390
 (not
  (or
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (* 1 f147@1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 391 

(declare-fun __ic3_ind_gen_391 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_391
 (not
  (or
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (* 1 f147@0) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f147@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 392 

(declare-fun __ic3_ind_gen_392 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_392
 (or
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f147@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_391 :named c3067))
;; Success 

(assert (! __ic3_frame_0 :named c3068))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3069))
;; Success 

(assert (! __ic3_ind_gen_392 :named c3070))
;; Success 

(assert (! __ic3_ind_gen_390 :named c3071))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3072))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3073))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3074))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3075))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3076))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3077))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3078))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3079))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3080))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3081))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_392))
;; Success 

(assert (not __ic3_ind_gen_391))
;; Success 

(assert (not __ic3_ind_gen_390))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 393 

(declare-fun __ic3_ind_gen_393 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_393
 (not
  (or
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (* 1 f147@1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 394 

(declare-fun __ic3_ind_gen_394 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_394
 (not
  (or
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (* 1 f147@0) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f147@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 395 

(declare-fun __ic3_ind_gen_395 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_395
 (or
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f147@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_394 :named c3082))
;; Success 

(assert (! __ic3_frame_0 :named c3083))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3084))
;; Success 

(assert (! __ic3_ind_gen_395 :named c3085))
;; Success 

(assert (! __ic3_ind_gen_393 :named c3086))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3087))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3088))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3089))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3090))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3091))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3092))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3093))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3094))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3095))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3096))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_395))
;; Success 

(assert (not __ic3_ind_gen_394))
;; Success 

(assert (not __ic3_ind_gen_393))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 396 

(declare-fun __ic3_ind_gen_396 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_396
 (not
  (or
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (* 1 f147@1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 397 

(declare-fun __ic3_ind_gen_397 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_397
 (not
  (or
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (* 1 f147@0) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f147@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 398 

(declare-fun __ic3_ind_gen_398 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_398
 (or
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f147@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_397 :named c3097))
;; Success 

(assert (! __ic3_frame_0 :named c3098))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3099))
;; Success 

(assert (! __ic3_ind_gen_398 :named c3100))
;; Success 

(assert (! __ic3_ind_gen_396 :named c3101))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3102))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3103))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3104))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3105))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3106))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3107))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3108))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3109))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3110))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3111))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_398))
;; Success 

(assert (not __ic3_ind_gen_397))
;; Success 

(assert (not __ic3_ind_gen_396))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 399 

(declare-fun __ic3_ind_gen_399 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_399
 (not
  (or
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (* 1 f147@1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 400 

(declare-fun __ic3_ind_gen_400 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_400
 (not
  (or
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (* 1 f147@0) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f147@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 401 

(declare-fun __ic3_ind_gen_401 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_401
 (or
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f147@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_400 :named c3112))
;; Success 

(assert (! __ic3_frame_0 :named c3113))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3114))
;; Success 

(assert (! __ic3_ind_gen_401 :named c3115))
;; Success 

(assert (! __ic3_ind_gen_399 :named c3116))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3117))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3118))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3119))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3120))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3121))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3122))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3123))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3124))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3125))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3126))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_401))
;; Success 

(assert (not __ic3_ind_gen_400))
;; Success 

(assert (not __ic3_ind_gen_399))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 402 

(declare-fun __ic3_ind_gen_402 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_402
 (not
  (or
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (* 1 f147@1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 403 

(declare-fun __ic3_ind_gen_403 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_403
 (not
  (or
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (* 1 f147@0) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f147@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 404 

(declare-fun __ic3_ind_gen_404 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_404
 (or
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f147@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_403 :named c3127))
;; Success 

(assert (! __ic3_frame_0 :named c3128))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3129))
;; Success 

(assert (! __ic3_ind_gen_404 :named c3130))
;; Success 

(assert (! __ic3_ind_gen_402 :named c3131))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3132))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3133))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3134))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3135))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3136))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3137))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3138))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3139))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3140))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3141))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_404))
;; Success 

(assert (not __ic3_ind_gen_403))
;; Success 

(assert (not __ic3_ind_gen_402))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 405 

(declare-fun __ic3_ind_gen_405 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_405
 (not
  (or
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 406 

(declare-fun __ic3_ind_gen_406 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_406
 (not
  (or
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f147@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 407 

(declare-fun __ic3_ind_gen_407 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_407
 (or
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f147@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_406 :named c3142))
;; Success 

(assert (! __ic3_frame_0 :named c3143))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3144))
;; Success 

(assert (! __ic3_ind_gen_407 :named c3145))
;; Success 

(assert (! __ic3_ind_gen_405 :named c3146))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3147))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3148))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3149))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3150))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3151))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3152))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3153))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3154))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3155))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3156))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_407))
;; Success 

(assert (not __ic3_ind_gen_406))
;; Success 

(assert (not __ic3_ind_gen_405))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 408 

(declare-fun __ic3_ind_gen_408 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_408
 (not
  (or
   (not (> (* 1 f147@1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 409 

(declare-fun __ic3_ind_gen_409 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_409
 (not
  (or
   (not (> (* 1 f147@0) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f147@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 410 

(declare-fun __ic3_ind_gen_410 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_410
 (or
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f147@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_409 :named c3157))
;; Success 

(assert (! __ic3_frame_0 :named c3158))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3159))
;; Success 

(assert (! __ic3_ind_gen_410 :named c3160))
;; Success 

(assert (! __ic3_ind_gen_408 :named c3161))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3162))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3163))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3164))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3165))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3166))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3167))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3168))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3169))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3170))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3171))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_410))
;; Success 

(assert (not __ic3_ind_gen_409))
;; Success 

(assert (not __ic3_ind_gen_408))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 411 

(declare-fun __ic3_ind_gen_411 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_411
 (not
  (or
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (* 1 f147@1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 412 

(declare-fun __ic3_ind_gen_412 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_412
 (not
  (or
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (* 1 f147@0) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* 1 f147@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 413 

(declare-fun __ic3_ind_gen_413 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_413
 (or
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f147@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_412 :named c3172))
;; Success 

(assert (! __ic3_frame_0 :named c3173))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3174))
;; Success 

(assert (! __ic3_ind_gen_413 :named c3175))
;; Success 

(assert (! __ic3_ind_gen_411 :named c3176))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3177))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3178))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3179))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3180))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3181))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3182))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3183))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3184))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3185))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3186))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_413))
;; Success 

(assert (not __ic3_ind_gen_412))
;; Success 

(assert (not __ic3_ind_gen_411))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 414 

(declare-fun __ic3_ind_gen_414 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_414
 (not
  (or
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (* 1 f147@1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* 1 f147@1) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 415 

(declare-fun __ic3_ind_gen_415 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_415
 (not
  (or
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (* 1 f147@0) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* 1 f147@0) (- 1)) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 416 

(declare-fun __ic3_ind_gen_416 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_416
 (or
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* 1 f147@0) (- 1)) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_415 :named c3187))
;; Success 

(assert (! __ic3_frame_0 :named c3188))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3189))
;; Success 

(assert (! __ic3_ind_gen_416 :named c3190))
;; Success 

(assert (! __ic3_ind_gen_414 :named c3191))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3192))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3193))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3194))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3195))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3196))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3197))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3198))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3199))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3200))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3201))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_416))
;; Success 

(assert (not __ic3_ind_gen_415))
;; Success 

(assert (not __ic3_ind_gen_414))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 417 

(declare-fun __ic3_ind_gen_417 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_417
 (not
  (or
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
   (not (> (* 1 f147@1) 0))
   (not (> (+ (* (- 1) f146@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 418 

(declare-fun __ic3_ind_gen_418 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_418
 (not
  (or
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
   (not (> (* 1 f147@0) 0))
   (not (> (+ (* (- 1) f146@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 419 

(declare-fun __ic3_ind_gen_419 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_419
 (or
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_418 :named c3202))
;; Success 

(assert (! __ic3_frame_0 :named c3203))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3204))
;; Success 

(assert (! __ic3_ind_gen_419 :named c3205))
;; Success 

(assert (! __ic3_ind_gen_417 :named c3206))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3207))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3208))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3209))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3210))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3211))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3212))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3213))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3214))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3215))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3216))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_419))
;; Success 

(assert (not __ic3_ind_gen_418))
;; Success 

(assert (not __ic3_ind_gen_417))
;; Success 

;; Clause is subsumed in frame 
;; __ic3_clause_16_p0 
;; __ic3_clause_17_p0 
;; __ic3_clause_29_p0 
;; __ic3_clause_35_p0 
;; __ic3_clause_26_p0 
;; __ic3_clause_28_p0 
;; __ic3_clause_34_p0 
;; __ic3_clause_5_p0 
;; __ic3_clause_7_p0 
;; __ic3_clause_24_p0 

;; Deactivating activation literals for clause 

(assert (not __ic3_clause_38_p0))
;; Success 

;; subsume_and_add: clause 37 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 420 

(declare-fun __ic3_ind_gen_420 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_420
 (not
  (or
   (not f152@1)
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (* 1 f146@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 421 

(declare-fun __ic3_ind_gen_421 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_421
 (not
  (or
   (not f152@0)
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (* 1 f146@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 422 

(declare-fun __ic3_ind_gen_422 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_422
 (or
  (not f152@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (* 1 f146@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_421 :named c3217))
;; Success 

(assert (! __ic3_frame_0 :named c3218))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3219))
;; Success 

(assert (! __ic3_ind_gen_422 :named c3220))
;; Success 

(assert (! __ic3_ind_gen_420 :named c3221))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3222))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3223))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3224))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3225))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3226))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3227))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3228))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3229))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3230))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3231))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_422))
;; Success 

(assert (not __ic3_ind_gen_421))
;; Success 

(assert (not __ic3_ind_gen_420))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 423 

(declare-fun __ic3_ind_gen_423 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_423
 (not
  (or
   (not f105@1)
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (* 1 f146@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 424 

(declare-fun __ic3_ind_gen_424 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_424
 (not
  (or
   (not f105@0)
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (* 1 f146@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 425 

(declare-fun __ic3_ind_gen_425 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_425
 (or
  (not f105@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (* 1 f146@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_424 :named c3232))
;; Success 

(assert (! __ic3_frame_0 :named c3233))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3234))
;; Success 

(assert (! __ic3_ind_gen_425 :named c3235))
;; Success 

(assert (! __ic3_ind_gen_423 :named c3236))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3237))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3238))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3239))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3240))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3241))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3242))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3243))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3244))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3245))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3246))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_425))
;; Success 

(assert (not __ic3_ind_gen_424))
;; Success 

(assert (not __ic3_ind_gen_423))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 426 

(declare-fun __ic3_ind_gen_426 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_426
 (not
  (or
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (* 1 f146@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 427 

(declare-fun __ic3_ind_gen_427 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_427
 (not
  (or
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (* 1 f146@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 428 

(declare-fun __ic3_ind_gen_428 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_428
 (or
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (* 1 f146@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_427 :named c3247))
;; Success 

(assert (! __ic3_frame_0 :named c3248))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3249))
;; Success 

(assert (! __ic3_ind_gen_428 :named c3250))
;; Success 

(assert (! __ic3_ind_gen_426 :named c3251))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3252))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3253))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3254))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3255))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3256))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3257))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3258))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3259))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3260))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3261))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_428))
;; Success 

(assert (not __ic3_ind_gen_427))
;; Success 

(assert (not __ic3_ind_gen_426))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 429 

(declare-fun __ic3_ind_gen_429 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_429
 (not
  (or
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (* 1 f146@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 430 

(declare-fun __ic3_ind_gen_430 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_430
 (not
  (or
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (* 1 f146@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 431 

(declare-fun __ic3_ind_gen_431 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_431
 (or
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (* 1 f146@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_430 :named c3262))
;; Success 

(assert (! __ic3_frame_0 :named c3263))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3264))
;; Success 

(assert (! __ic3_ind_gen_431 :named c3265))
;; Success 

(assert (! __ic3_ind_gen_429 :named c3266))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3267))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3268))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3269))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3270))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3271))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3272))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3273))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3274))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3275))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3276))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_431))
;; Success 

(assert (not __ic3_ind_gen_430))
;; Success 

(assert (not __ic3_ind_gen_429))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 432 

(declare-fun __ic3_ind_gen_432 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_432
 (not
  (or
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (* 1 f146@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 433 

(declare-fun __ic3_ind_gen_433 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_433
 (not
  (or
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (* 1 f146@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 434 

(declare-fun __ic3_ind_gen_434 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_434
 (or
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (* 1 f146@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_433 :named c3277))
;; Success 

(assert (! __ic3_frame_0 :named c3278))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3279))
;; Success 

(assert (! __ic3_ind_gen_434 :named c3280))
;; Success 

(assert (! __ic3_ind_gen_432 :named c3281))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3282))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3283))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3284))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3285))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3286))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3287))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3288))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3289))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3290))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3291))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_434))
;; Success 

(assert (not __ic3_ind_gen_433))
;; Success 

(assert (not __ic3_ind_gen_432))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 435 

(declare-fun __ic3_ind_gen_435 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_435
 (not
  (or
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (* 1 f146@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 436 

(declare-fun __ic3_ind_gen_436 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_436
 (not
  (or
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (* 1 f146@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 437 

(declare-fun __ic3_ind_gen_437 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_437
 (or
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (* 1 f146@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_436 :named c3292))
;; Success 

(assert (! __ic3_frame_0 :named c3293))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3294))
;; Success 

(assert (! __ic3_ind_gen_437 :named c3295))
;; Success 

(assert (! __ic3_ind_gen_435 :named c3296))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3297))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3298))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3299))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3300))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3301))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3302))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3303))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3304))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3305))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3306))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_437))
;; Success 

(assert (not __ic3_ind_gen_436))
;; Success 

(assert (not __ic3_ind_gen_435))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 438 

(declare-fun __ic3_ind_gen_438 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_438
 (not
  (or
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (* 1 f146@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 439 

(declare-fun __ic3_ind_gen_439 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_439
 (not
  (or
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (* 1 f146@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 440 

(declare-fun __ic3_ind_gen_440 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_440
 (or
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (* 1 f146@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_439 :named c3307))
;; Success 

(assert (! __ic3_frame_0 :named c3308))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3309))
;; Success 

(assert (! __ic3_ind_gen_440 :named c3310))
;; Success 

(assert (! __ic3_ind_gen_438 :named c3311))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3312))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3313))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3314))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3315))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3316))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3317))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3318))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3319))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3320))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3321))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_440))
;; Success 

(assert (not __ic3_ind_gen_439))
;; Success 

(assert (not __ic3_ind_gen_438))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 441 

(declare-fun __ic3_ind_gen_441 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_441
 (not
  (or
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (* 1 f146@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 442 

(declare-fun __ic3_ind_gen_442 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_442
 (not
  (or
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (* 1 f146@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 443 

(declare-fun __ic3_ind_gen_443 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_443
 (or
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (* 1 f146@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_442 :named c3322))
;; Success 

(assert (! __ic3_frame_0 :named c3323))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3324))
;; Success 

(assert (! __ic3_ind_gen_443 :named c3325))
;; Success 

(assert (! __ic3_ind_gen_441 :named c3326))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3327))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3328))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3329))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3330))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3331))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3332))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3333))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3334))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3335))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3336))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_443))
;; Success 

(assert (not __ic3_ind_gen_442))
;; Success 

(assert (not __ic3_ind_gen_441))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 444 

(declare-fun __ic3_ind_gen_444 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_444
 (not
  (or
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 445 

(declare-fun __ic3_ind_gen_445 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_445
 (not
  (or
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 446 

(declare-fun __ic3_ind_gen_446 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_446
 (or
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_445 :named c3337))
;; Success 

(assert (! __ic3_frame_0 :named c3338))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_446))
;; Success 

(assert (not __ic3_ind_gen_445))
;; Success 

(assert (not __ic3_ind_gen_444))
;; Success 

;; Clause is subsumed in frame 
;; __ic3_clause_16_p0 
;; __ic3_clause_17_p0 
;; __ic3_clause_29_p0 
;; __ic3_clause_35_p0 
;; __ic3_clause_26_p0 
;; __ic3_clause_28_p0 
;; __ic3_clause_34_p0 
;; __ic3_clause_5_p0 
;; __ic3_clause_7_p0 
;; __ic3_clause_24_p0 

;; Deactivating activation literals for clause 

(assert (not __ic3_clause_37_p0))
;; Success 

;; subsume_and_add: clause 36 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 447 

(declare-fun __ic3_ind_gen_447 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_447
 (not
  (or
   (not f152@1)
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f145@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 448 

(declare-fun __ic3_ind_gen_448 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_448
 (not
  (or
   (not f152@0)
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f145@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 449 

(declare-fun __ic3_ind_gen_449 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_449
 (or
  (not f152@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f145@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_448 :named c3339))
;; Success 

(assert (! __ic3_frame_0 :named c3340))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3341))
;; Success 

(assert (! __ic3_ind_gen_449 :named c3342))
;; Success 

(assert (! __ic3_ind_gen_447 :named c3343))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3344))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3345))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3346))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3347))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3348))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3349))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3350))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3351))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3352))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3353))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_449))
;; Success 

(assert (not __ic3_ind_gen_448))
;; Success 

(assert (not __ic3_ind_gen_447))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 450 

(declare-fun __ic3_ind_gen_450 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_450
 (not
  (or
   (not f105@1)
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f145@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 451 

(declare-fun __ic3_ind_gen_451 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_451
 (not
  (or
   (not f105@0)
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f145@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 452 

(declare-fun __ic3_ind_gen_452 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_452
 (or
  (not f105@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f145@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_451 :named c3354))
;; Success 

(assert (! __ic3_frame_0 :named c3355))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3356))
;; Success 

(assert (! __ic3_ind_gen_452 :named c3357))
;; Success 

(assert (! __ic3_ind_gen_450 :named c3358))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3359))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3360))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3361))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3362))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3363))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3364))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3365))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3366))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3367))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3368))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_452))
;; Success 

(assert (not __ic3_ind_gen_451))
;; Success 

(assert (not __ic3_ind_gen_450))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 453 

(declare-fun __ic3_ind_gen_453 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_453
 (not
  (or
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f145@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 454 

(declare-fun __ic3_ind_gen_454 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_454
 (not
  (or
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f145@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 455 

(declare-fun __ic3_ind_gen_455 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_455
 (or
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f145@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_454 :named c3369))
;; Success 

(assert (! __ic3_frame_0 :named c3370))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3371))
;; Success 

(assert (! __ic3_ind_gen_455 :named c3372))
;; Success 

(assert (! __ic3_ind_gen_453 :named c3373))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3374))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3375))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3376))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3377))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3378))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3379))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3380))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3381))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3382))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3383))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_455))
;; Success 

(assert (not __ic3_ind_gen_454))
;; Success 

(assert (not __ic3_ind_gen_453))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 456 

(declare-fun __ic3_ind_gen_456 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_456
 (not
  (or
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f145@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 457 

(declare-fun __ic3_ind_gen_457 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_457
 (not
  (or
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f145@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 458 

(declare-fun __ic3_ind_gen_458 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_458
 (or
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f145@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_457 :named c3384))
;; Success 

(assert (! __ic3_frame_0 :named c3385))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3386))
;; Success 

(assert (! __ic3_ind_gen_458 :named c3387))
;; Success 

(assert (! __ic3_ind_gen_456 :named c3388))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3389))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3390))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3391))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3392))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3393))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3394))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3395))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3396))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3397))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3398))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_458))
;; Success 

(assert (not __ic3_ind_gen_457))
;; Success 

(assert (not __ic3_ind_gen_456))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 459 

(declare-fun __ic3_ind_gen_459 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_459
 (not
  (or
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f145@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 460 

(declare-fun __ic3_ind_gen_460 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_460
 (not
  (or
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f145@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 461 

(declare-fun __ic3_ind_gen_461 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_461
 (or
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f145@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_460 :named c3399))
;; Success 

(assert (! __ic3_frame_0 :named c3400))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3401))
;; Success 

(assert (! __ic3_ind_gen_461 :named c3402))
;; Success 

(assert (! __ic3_ind_gen_459 :named c3403))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3404))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3405))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3406))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3407))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3408))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3409))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3410))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3411))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3412))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3413))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_461))
;; Success 

(assert (not __ic3_ind_gen_460))
;; Success 

(assert (not __ic3_ind_gen_459))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 462 

(declare-fun __ic3_ind_gen_462 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_462
 (not
  (or
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f145@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 463 

(declare-fun __ic3_ind_gen_463 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_463
 (not
  (or
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f145@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 464 

(declare-fun __ic3_ind_gen_464 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_464
 (or
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f145@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_463 :named c3414))
;; Success 

(assert (! __ic3_frame_0 :named c3415))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3416))
;; Success 

(assert (! __ic3_ind_gen_464 :named c3417))
;; Success 

(assert (! __ic3_ind_gen_462 :named c3418))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3419))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3420))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3421))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3422))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3423))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3424))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3425))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3426))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3427))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3428))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_464))
;; Success 

(assert (not __ic3_ind_gen_463))
;; Success 

(assert (not __ic3_ind_gen_462))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 465 

(declare-fun __ic3_ind_gen_465 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_465
 (not
  (or
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (* 1 f145@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 466 

(declare-fun __ic3_ind_gen_466 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_466
 (not
  (or
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (* 1 f145@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 467 

(declare-fun __ic3_ind_gen_467 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_467
 (or
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (* 1 f145@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_466 :named c3429))
;; Success 

(assert (! __ic3_frame_0 :named c3430))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3431))
;; Success 

(assert (! __ic3_ind_gen_467 :named c3432))
;; Success 

(assert (! __ic3_ind_gen_465 :named c3433))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3434))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3435))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3436))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3437))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3438))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3439))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3440))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3441))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3442))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3443))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_467))
;; Success 

(assert (not __ic3_ind_gen_466))
;; Success 

(assert (not __ic3_ind_gen_465))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 468 

(declare-fun __ic3_ind_gen_468 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_468
 (not
  (or
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 469 

(declare-fun __ic3_ind_gen_469 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_469
 (not
  (or
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 470 

(declare-fun __ic3_ind_gen_470 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_470
 (or
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_469 :named c3444))
;; Success 

(assert (! __ic3_frame_0 :named c3445))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_470))
;; Success 

(assert (not __ic3_ind_gen_469))
;; Success 

(assert (not __ic3_ind_gen_468))
;; Success 

;; Clause is subsumed in frame 
;; __ic3_clause_16_p0 
;; __ic3_clause_17_p0 
;; __ic3_clause_29_p0 
;; __ic3_clause_35_p0 
;; __ic3_clause_26_p0 
;; __ic3_clause_28_p0 
;; __ic3_clause_34_p0 
;; __ic3_clause_5_p0 
;; __ic3_clause_7_p0 
;; __ic3_clause_24_p0 

;; Deactivating activation literals for clause 

(assert (not __ic3_clause_36_p0))
;; Success 

;; check_frames: Does R_2 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c3446))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3447))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3448))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3449))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3450))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3451))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3452))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3453))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3454))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3455))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3456))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c3457))
;; Success 

(assert (! __ic3_clause_16_n0_0 :named c3458))
;; Success 

(assert (! __ic3_clause_16_n0_1 :named c3459))
;; Success 

(assert (! __ic3_clause_16_n0_2 :named c3460))
;; Success 

(assert (! __ic3_clause_16_n0_3 :named c3461))
;; Success 

(assert (! __ic3_clause_16_n0_4 :named c3462))
;; Success 

(assert (! __ic3_clause_16_n0_5 :named c3463))
;; Success 

(assert (! __ic3_clause_16_n0_6 :named c3464))
;; Success 

(assert (! __ic3_clause_16_n0_7 :named c3465))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c3466))
;; Success 

(assert (! __ic3_clause_17_n0_0 :named c3467))
;; Success 

(assert (! __ic3_clause_17_n0_1 :named c3468))
;; Success 

(assert (! __ic3_clause_17_n0_2 :named c3469))
;; Success 

(assert (! __ic3_clause_17_n0_3 :named c3470))
;; Success 

(assert (! __ic3_clause_17_n0_4 :named c3471))
;; Success 

(assert (! __ic3_clause_17_n0_5 :named c3472))
;; Success 

(assert (! __ic3_clause_17_n0_6 :named c3473))
;; Success 

(assert (! __ic3_clause_17_n0_7 :named c3474))
;; Success 

(assert (! __ic3_clause_17_n0_8 :named c3475))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c3476))
;; Success 

(assert (! __ic3_clause_29_n0_0 :named c3477))
;; Success 

(assert (! __ic3_clause_29_n0_1 :named c3478))
;; Success 

(assert (! __ic3_clause_29_n0_2 :named c3479))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c3480))
;; Success 

(assert (! __ic3_clause_35_n0_0 :named c3481))
;; Success 

(assert (! __ic3_clause_35_n0_1 :named c3482))
;; Success 

(assert (! __ic3_clause_35_n0_2 :named c3483))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c3484))
;; Success 

(assert (! __ic3_clause_26_n0_0 :named c3485))
;; Success 

(assert (! __ic3_clause_26_n0_1 :named c3486))
;; Success 

(assert (! __ic3_clause_26_n0_2 :named c3487))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c3488))
;; Success 

(assert (! __ic3_clause_28_n0_0 :named c3489))
;; Success 

(assert (! __ic3_clause_28_n0_1 :named c3490))
;; Success 

(assert (! __ic3_clause_28_n0_2 :named c3491))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c3492))
;; Success 

(assert (! __ic3_clause_34_n0_0 :named c3493))
;; Success 

(assert (! __ic3_clause_34_n0_1 :named c3494))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c3495))
;; Success 

(assert (! __ic3_clause_5_n0_0 :named c3496))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c3497))
;; Success 

(assert (! __ic3_clause_7_n0_0 :named c3498))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c3499))
;; Success 

(assert (! __ic3_clause_24_n0_0 :named c3500))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_1 & T |= R_2 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 26 

(declare-fun __ic3_check_frames_26 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_26
 (not
  (and
   f105@1
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (or (not f152@1) (not (> (* 1 f144@1) 0)) (not (> (* 1 f147@1) 0)))
   (or (not f152@1) (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0)))
   (or (not f152@1) (not (> (+ (* 1 f147@1) (- 1)) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_26 :named c3501))
;; Success 

(assert (! __ic3_clause_3_p0 :named c3502))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3503))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3504))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3505))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3506))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3507))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3508))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3509))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3510))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3511))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3512))
;; Success 

(assert (! __ic3_clause_9_p0 :named c3513))
;; Success 

(assert (! __ic3_clause_15_p0 :named c3514))
;; Success 

(assert (! __ic3_clause_11_p0 :named c3515))
;; Success 

(assert (! __ic3_clause_13_p0 :named c3516))
;; Success 

(assert (! __ic3_clause_32_p0 :named c3517))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_26))
;; Success 

;; check_frames: Does R_1 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c3518))
;; Success 

(assert (! __ic3_clause_9_p0 :named c3519))
;; Success 

(assert (! __ic3_clause_15_p0 :named c3520))
;; Success 

(assert (! __ic3_clause_11_p0 :named c3521))
;; Success 

(assert (! __ic3_clause_13_p0 :named c3522))
;; Success 

(assert (! __ic3_clause_32_p0 :named c3523))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3524))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3525))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3526))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3527))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3528))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3529))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3530))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3531))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3532))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3533))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c3534))
;; Success 

(assert (! __ic3_clause_9_n0_0 :named c3535))
;; Success 

(assert (! __ic3_clause_9_n0_1 :named c3536))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c3537))
;; Success 

(assert (! __ic3_clause_15_n0_0 :named c3538))
;; Success 

(assert (! __ic3_clause_15_n0_1 :named c3539))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c3540))
;; Success 

(assert (! __ic3_clause_11_n0_0 :named c3541))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c3542))
;; Success 

(assert (! __ic3_clause_13_n0_0 :named c3543))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c3544))
;; Success 

(assert (! __ic3_clause_32_n0_0 :named c3545))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_0 & T |= R_1 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 27 

(declare-fun __ic3_check_frames_27 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_27
 (not
  (and
   f105@1
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (not (> (* 1 f145@1) 0))
   (not (> (* 1 f146@1) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (or (not f152@1) (not (> (* 1 f144@1) 0)) (not (> (* 1 f147@1) 0)))
   (or (not f152@1) (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0)))
   (or (not f152@1) (not (> (+ (* 1 f147@1) (- 1)) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_27 :named c3546))
;; Success 

(assert (! __ic3_frame_0 :named c3547))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_27))
;; Success 

;; partition_fwd_prop: Checking for forward propagation of clause set 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for fwd_prop 12 

(declare-fun __ic3_fwd_prop_12 () Bool)
;; Success 

(assert
 (=>
 __ic3_fwd_prop_12
 (not
  (and
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (or (not f152@1) (not (> (* 1 f144@1) 0)) (not (> (* 1 f147@1) 0)))
   (or (not f152@1) (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0)))
   (or (not f152@1) (not (> (+ (* 1 f147@1) (- 1)) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3548))
;; Success 

(assert (! __ic3_fwd_prop_12 :named c3549))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3550))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3551))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3552))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3553))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3554))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3555))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3556))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3557))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3558))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3559))
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
;;     (f152@1 false) 
;;     (f151@1 false) 
;;     (f150@1 false) 
;;     (f149@1 false) 
;;     (f148@1 2) 
;;     (f147@1 2) 
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
;;     (f104@1 0) 
;;     (f103@1 false) 
;;     (f102@1 false) 
;;     (f101@1 false) 
;;     (f100@1 true) 
;;     (f99@1 false) 
;;     (f98@1 false) 
;;     (f97@1 true) 
;;     (f96@1 true) 
;;     (f95@1 true) 
;;     (f94@1 true) 
;;     (f93@1 false) 
;;     (f92@1 false) 
;;     (f154@0 false) 
;;     (f155@0 false) 
;;     (f156@0 false) 
;;     (f157@0 1) 
;;     (f158@0 false) 
;;     (f153@0 1) 
;;     (f152@0 false) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 1) 
;;     (f147@0 1) 
;;     (f146@0 0) 
;;     (f145@0 1) 
;;     (f144@0 1) 
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

(assert (not __ic3_fwd_prop_12))
;; Success 

;; partition_fwd_prop: Checking for forward propagation of clause set 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for fwd_prop 13 

(declare-fun __ic3_fwd_prop_13 () Bool)
;; Success 

(assert
 (=>
 __ic3_fwd_prop_13
 (not
  (and
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (or (not f152@1) (not (> (* 1 f144@1) 0)) (not (> (* 1 f147@1) 0)))
   (or (not f152@1) (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0)))
   (or (not f152@1) (not (> (+ (* 1 f147@1) (- 1)) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3560))
;; Success 

(assert (! __ic3_fwd_prop_13 :named c3561))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3562))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3563))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3564))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3565))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3566))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3567))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3568))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3569))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3570))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3571))
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
;;     (f148@1 2) 
;;     (f147@1 0) 
;;     (f146@1 2) 
;;     (f145@1 1) 
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
;;     (f103@1 true) 
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
;;     (f148@0 1) 
;;     (f147@0 0) 
;;     (f146@0 2) 
;;     (f145@0 1) 
;;     (f144@0 1) 
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

(assert (not __ic3_fwd_prop_13))
;; Success 

;; partition_fwd_prop: Checking for forward propagation of clause set 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for fwd_prop 14 

(declare-fun __ic3_fwd_prop_14 () Bool)
;; Success 

(assert
 (=>
 __ic3_fwd_prop_14
 (not
  (and
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (or (not f152@1) (not (> (* 1 f144@1) 0)) (not (> (* 1 f147@1) 0)))
   (or (not f152@1) (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0)))
   (or (not f152@1) (not (> (+ (* 1 f147@1) (- 1)) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3572))
;; Success 

(assert (! __ic3_fwd_prop_14 :named c3573))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3574))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3575))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3576))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3577))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3578))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3579))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3580))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3581))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3582))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3583))
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
;;     (f148@1 2) 
;;     (f147@1 0) 
;;     (f146@1 1) 
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
;;     (f103@1 true) 
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
;;     (f148@0 1) 
;;     (f147@0 0) 
;;     (f146@0 1) 
;;     (f145@0 0) 
;;     (f144@0 1) 
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

(assert (not __ic3_fwd_prop_14))
;; Success 

;; partition_fwd_prop: Checking for forward propagation of clause set 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for fwd_prop 15 

(declare-fun __ic3_fwd_prop_15 () Bool)
;; Success 

(assert
 (=>
 __ic3_fwd_prop_15
 (not
  (and
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (or (not f152@1) (not (> (* 1 f144@1) 0)) (not (> (* 1 f147@1) 0)))
   (or (not f152@1) (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0)))
   (or (not f152@1) (not (> (+ (* 1 f147@1) (- 1)) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3584))
;; Success 

(assert (! __ic3_fwd_prop_15 :named c3585))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3586))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3587))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3588))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3589))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3590))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3591))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3592))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3593))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3594))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3595))
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
;;     (f147@1 1) 
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
;;     (f96@1 true) 
;;     (f95@1 false) 
;;     (f94@1 false) 
;;     (f93@1 false) 
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
;;     (f148@0 1) 
;;     (f147@0 0) 
;;     (f146@0 0) 
;;     (f145@0 1) 
;;     (f144@0 1) 
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

(assert (not __ic3_fwd_prop_15))
;; Success 

;; partition_fwd_prop: Checking for forward propagation of clause set 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for fwd_prop 16 

(declare-fun __ic3_fwd_prop_16 () Bool)
;; Success 

(assert
 (=>
 __ic3_fwd_prop_16
 (not
  (and
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (or (not f152@1) (not (> (+ (* 1 f147@1) (- 1)) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3596))
;; Success 

(assert (! __ic3_fwd_prop_16 :named c3597))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3598))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3599))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3600))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3601))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3602))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3603))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3604))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3605))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3606))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3607))
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
;;     (f147@1 2) 
;;     (f146@1 0) 
;;     (f145@1 0) 
;;     (f144@1 (- 1)) 
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
;;     (f96@1 true) 
;;     (f95@1 false) 
;;     (f94@1 false) 
;;     (f93@1 false) 
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
;;     (f148@0 1) 
;;     (f147@0 1) 
;;     (f146@0 0) 
;;     (f145@0 1) 
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

(assert (not __ic3_fwd_prop_16))
;; Success 

;; partition_fwd_prop: Checking for forward propagation of clause set 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for fwd_prop 17 

(declare-fun __ic3_fwd_prop_17 () Bool)
;; Success 

(assert
 (=>
 __ic3_fwd_prop_17
 (not
  (and
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3608))
;; Success 

(assert (! __ic3_fwd_prop_17 :named c3609))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3610))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3611))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3612))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3613))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3614))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3615))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3616))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3617))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3618))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3619))
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
;;     (f148@1 2) 
;;     (f147@1 0) 
;;     (f146@1 (- 1)) 
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
;;     (f101@1 true) 
;;     (f100@1 false) 
;;     (f99@1 false) 
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
;;     (f153@0 2) 
;;     (f152@0 true) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 1) 
;;     (f147@0 0) 
;;     (f146@0 (- 1)) 
;;     (f145@0 1) 
;;     (f144@0 1) 
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

(assert (not __ic3_fwd_prop_17))
;; Success 

;; partition_fwd_prop: Checking for forward propagation of clause set 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for fwd_prop 18 

(declare-fun __ic3_fwd_prop_18 () Bool)
;; Success 

(assert
 (=>
 __ic3_fwd_prop_18
 (not
  (and
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3620))
;; Success 

(assert (! __ic3_fwd_prop_18 :named c3621))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3622))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3623))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3624))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3625))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3626))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3627))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3628))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3629))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3630))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3631))
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
;;     (f148@1 2) 
;;     (f147@1 1) 
;;     (f146@1 (- 1)) 
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
;;     (f101@1 true) 
;;     (f100@1 false) 
;;     (f99@1 false) 
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
;;     (f153@0 2) 
;;     (f152@0 true) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 1) 
;;     (f147@0 1) 
;;     (f146@0 (- 1)) 
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

(assert (not __ic3_fwd_prop_18))
;; Success 

;; partition_fwd_prop: Checking for forward propagation of clause set 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for fwd_prop 19 

(declare-fun __ic3_fwd_prop_19 () Bool)
;; Success 

(assert
 (=>
 __ic3_fwd_prop_19
 (not
  (and
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3632))
;; Success 

(assert (! __ic3_fwd_prop_19 :named c3633))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3634))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3635))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3636))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3637))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3638))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3639))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3640))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3641))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3642))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3643))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_fwd_prop_19))
;; Success 

;; check_frames: Does R_2 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c3644))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3645))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3646))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3647))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3648))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3649))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3650))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3651))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3652))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3653))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3654))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3655))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3656))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c3657))
;; Success 

(assert (! __ic3_clause_16_n0_0 :named c3658))
;; Success 

(assert (! __ic3_clause_16_n0_1 :named c3659))
;; Success 

(assert (! __ic3_clause_16_n0_2 :named c3660))
;; Success 

(assert (! __ic3_clause_16_n0_3 :named c3661))
;; Success 

(assert (! __ic3_clause_16_n0_4 :named c3662))
;; Success 

(assert (! __ic3_clause_16_n0_5 :named c3663))
;; Success 

(assert (! __ic3_clause_16_n0_6 :named c3664))
;; Success 

(assert (! __ic3_clause_16_n0_7 :named c3665))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c3666))
;; Success 

(assert (! __ic3_clause_17_n0_0 :named c3667))
;; Success 

(assert (! __ic3_clause_17_n0_1 :named c3668))
;; Success 

(assert (! __ic3_clause_17_n0_2 :named c3669))
;; Success 

(assert (! __ic3_clause_17_n0_3 :named c3670))
;; Success 

(assert (! __ic3_clause_17_n0_4 :named c3671))
;; Success 

(assert (! __ic3_clause_17_n0_5 :named c3672))
;; Success 

(assert (! __ic3_clause_17_n0_6 :named c3673))
;; Success 

(assert (! __ic3_clause_17_n0_7 :named c3674))
;; Success 

(assert (! __ic3_clause_17_n0_8 :named c3675))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c3676))
;; Success 

(assert (! __ic3_clause_29_n0_0 :named c3677))
;; Success 

(assert (! __ic3_clause_29_n0_1 :named c3678))
;; Success 

(assert (! __ic3_clause_29_n0_2 :named c3679))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c3680))
;; Success 

(assert (! __ic3_clause_35_n0_0 :named c3681))
;; Success 

(assert (! __ic3_clause_35_n0_1 :named c3682))
;; Success 

(assert (! __ic3_clause_35_n0_2 :named c3683))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c3684))
;; Success 

(assert (! __ic3_clause_26_n0_0 :named c3685))
;; Success 

(assert (! __ic3_clause_26_n0_1 :named c3686))
;; Success 

(assert (! __ic3_clause_26_n0_2 :named c3687))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c3688))
;; Success 

(assert (! __ic3_clause_28_n0_0 :named c3689))
;; Success 

(assert (! __ic3_clause_28_n0_1 :named c3690))
;; Success 

(assert (! __ic3_clause_28_n0_2 :named c3691))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c3692))
;; Success 

(assert (! __ic3_clause_34_n0_0 :named c3693))
;; Success 

(assert (! __ic3_clause_34_n0_1 :named c3694))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c3695))
;; Success 

(assert (! __ic3_clause_5_n0_0 :named c3696))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c3697))
;; Success 

(assert (! __ic3_clause_7_n0_0 :named c3698))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c3699))
;; Success 

(assert (! __ic3_clause_24_n0_0 :named c3700))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_1 & T |= R_2 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 28 

(declare-fun __ic3_check_frames_28 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_28
 (not
  (and
   f105@1
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (or (not f152@1) (not (> (* 1 f144@1) 0)) (not (> (* 1 f147@1) 0)))
   (or (not f152@1) (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0)))
   (or (not f152@1) (not (> (+ (* 1 f147@1) (- 1)) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_28 :named c3701))
;; Success 

(assert (! __ic3_clause_3_p0 :named c3702))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3703))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3704))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3705))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3706))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3707))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3708))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3709))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3710))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3711))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3712))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3713))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3714))
;; Success 

(assert (! __ic3_clause_9_p0 :named c3715))
;; Success 

(assert (! __ic3_clause_15_p0 :named c3716))
;; Success 

(assert (! __ic3_clause_11_p0 :named c3717))
;; Success 

(assert (! __ic3_clause_13_p0 :named c3718))
;; Success 

(assert (! __ic3_clause_32_p0 :named c3719))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_28))
;; Success 

;; check_frames: Does R_1 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c3720))
;; Success 

(assert (! __ic3_clause_9_p0 :named c3721))
;; Success 

(assert (! __ic3_clause_15_p0 :named c3722))
;; Success 

(assert (! __ic3_clause_11_p0 :named c3723))
;; Success 

(assert (! __ic3_clause_13_p0 :named c3724))
;; Success 

(assert (! __ic3_clause_32_p0 :named c3725))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3726))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3727))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3728))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3729))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3730))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3731))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3732))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3733))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3734))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3735))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3736))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3737))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c3738))
;; Success 

(assert (! __ic3_clause_9_n0_0 :named c3739))
;; Success 

(assert (! __ic3_clause_9_n0_1 :named c3740))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c3741))
;; Success 

(assert (! __ic3_clause_15_n0_0 :named c3742))
;; Success 

(assert (! __ic3_clause_15_n0_1 :named c3743))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c3744))
;; Success 

(assert (! __ic3_clause_11_n0_0 :named c3745))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c3746))
;; Success 

(assert (! __ic3_clause_13_n0_0 :named c3747))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c3748))
;; Success 

(assert (! __ic3_clause_32_n0_0 :named c3749))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_0 & T |= R_1 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 29 

(declare-fun __ic3_check_frames_29 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_29
 (not
  (and
   f105@1
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (not (> (* 1 f145@1) 0))
   (not (> (* 1 f146@1) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (or (not f152@1) (not (> (* 1 f144@1) 0)) (not (> (* 1 f147@1) 0)))
   (or (not f152@1) (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0)))
   (or (not f152@1) (not (> (+ (* 1 f147@1) (- 1)) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_29 :named c3750))
;; Success 

(assert (! __ic3_frame_0 :named c3751))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_29))
;; Success 

;; fwd_propagate: Checking forward propagation of clauses before generalization in frame 2. 

;; Copied clause #6 in forward propagation: 
;; #41 {(not top.usr.OK@0); 
;;      (= (+ (* (- 1) top.res.abs_2@0) 0) 0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0)) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 2) 0))} 

;; Copied clause #25 in forward propagation: 
;; #42 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_0@0) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 3) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_1@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_2@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_3@0) 0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 0) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0)) 0)); 
;;      (not (> (+ (* 1 top.res.abs_0@0) 0) 0))} 

;; Copied clause #27 in forward propagation: 
;; #43 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_0@0) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 3) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_1@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_2@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_3@0) 0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 0) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0)) 0)); 
;;      (not (> (+ (* 1 top.res.abs_0@0) 0) 0))} 

;; Copied clause #33 in forward propagation: 
;; #44 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_1@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_2@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_3@0) 0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 0) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0)) 0)); 
;;      (not (> (+ (* 1 top.res.abs_3@0) (- 1)) 0))} 

;; Copied clause #20 in forward propagation: 
;; #45 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_0@0) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 3) 0))} 

;; Copied clause #30 in forward propagation: 
;; #46 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 2) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 1) 0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_1@0) 1) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_2@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_3@0) 0))} 

(declare-fun __ic3_clause_46_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_46_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0)))))
;; Success 

(declare-fun __ic3_clause_45_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_45_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f144@0) 0))
  (not (> (+ (* (- 1) f144@0) 3) 0)))))
;; Success 

(declare-fun __ic3_clause_44_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_44_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f147@0) (- 1)) 0)))))
;; Success 

(declare-fun __ic3_clause_43_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_43_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (* 1 f144@0) 0))
  (not (> (+ (* (- 1) f144@0) 3) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f144@0) 0) 0)))))
;; Success 

(declare-fun __ic3_clause_42_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_42_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (* 1 f144@0) 0))
  (not (> (+ (* (- 1) f144@0) 3) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* (- 1) f146@0) 1) 0))
  (not (> (* 1 f147@0) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 0) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0)) 0))
  (not (> (+ (* 1 f144@0) 0) 0)))))
;; Success 

(declare-fun __ic3_clause_41_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_41_p0
 (or
  (not f105@0)
  (= (+ (* (- 1) f146@0) 0) 0)
  (not f152@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0)) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0)))))
;; Success 

;; partition_fwd_prop: Checking for forward propagation of clause set 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for fwd_prop 20 

(declare-fun __ic3_fwd_prop_20 () Bool)
;; Success 

(assert
 (=>
 __ic3_fwd_prop_20
 (not
  (and
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (+ (* (- 1) f146@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0))
    (not (> (+ (* (- 1) f144@1) 3) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (+ (* (- 1) f146@1) 1) 0))
    (not (> (* 1 f147@1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
    (not (> (+ (* 1 f147@1) (- 1)) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (* 1 f144@1) 0))
    (not (> (+ (* (- 1) f144@1) 3) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (+ (* (- 1) f146@1) 1) 0))
    (not (> (* 1 f147@1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
    (not (> (+ (* 1 f144@1) 0) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (* 1 f144@1) 0))
    (not (> (+ (* (- 1) f144@1) 3) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (+ (* (- 1) f146@1) 1) 0))
    (not (> (* 1 f147@1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
    (not (> (+ (* 1 f144@1) 0) 0)))
   (or
    (not f105@1)
    (= (+ (* (- 1) f146@1) 0) 0)
    (not f152@1)
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0)))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3752))
;; Success 

(assert (! __ic3_fwd_prop_20 :named c3753))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3754))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3755))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3756))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3757))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3758))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3759))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3760))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3761))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3762))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3763))
;; Success 

(assert (! __ic3_clause_46_p0 :named c3764))
;; Success 

(assert (! __ic3_clause_45_p0 :named c3765))
;; Success 

(assert (! __ic3_clause_44_p0 :named c3766))
;; Success 

(assert (! __ic3_clause_43_p0 :named c3767))
;; Success 

(assert (! __ic3_clause_42_p0 :named c3768))
;; Success 

(assert (! __ic3_clause_41_p0 :named c3769))
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
;;     (f147@1 1) 
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
;;     (f96@1 true) 
;;     (f95@1 false) 
;;     (f94@1 false) 
;;     (f93@1 false) 
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
;;     (f148@0 1) 
;;     (f147@0 0) 
;;     (f146@0 0) 
;;     (f145@0 1) 
;;     (f144@0 1) 
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

(assert (not __ic3_fwd_prop_20))
;; Success 

;; partition_fwd_prop: Checking for forward propagation of clause set 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for fwd_prop 21 

(declare-fun __ic3_fwd_prop_21 () Bool)
;; Success 

(assert
 (=>
 __ic3_fwd_prop_21
 (not
  (and
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (+ (* (- 1) f146@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0))
    (not (> (+ (* (- 1) f144@1) 3) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (+ (* (- 1) f146@1) 1) 0))
    (not (> (* 1 f147@1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 0) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1)) 0))
    (not (> (+ (* 1 f147@1) (- 1)) 0)))
   (or
    (not f105@1)
    (= (+ (* (- 1) f146@1) 0) 0)
    (not f152@1)
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0)))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3770))
;; Success 

(assert (! __ic3_fwd_prop_21 :named c3771))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3772))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3773))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3774))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3775))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3776))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3777))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3778))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3779))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3780))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3781))
;; Success 

(assert (! __ic3_clause_46_p0 :named c3782))
;; Success 

(assert (! __ic3_clause_45_p0 :named c3783))
;; Success 

(assert (! __ic3_clause_44_p0 :named c3784))
;; Success 

(assert (! __ic3_clause_43_p0 :named c3785))
;; Success 

(assert (! __ic3_clause_42_p0 :named c3786))
;; Success 

(assert (! __ic3_clause_41_p0 :named c3787))
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
;;     (f147@1 2) 
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
;;     (f96@1 true) 
;;     (f95@1 false) 
;;     (f94@1 false) 
;;     (f93@1 false) 
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
;;     (f148@0 1) 
;;     (f147@0 1) 
;;     (f146@0 0) 
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

(assert (not __ic3_fwd_prop_21))
;; Success 

;; partition_fwd_prop: Checking for forward propagation of clause set 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for fwd_prop 22 

(declare-fun __ic3_fwd_prop_22 () Bool)
;; Success 

(assert
 (=>
 __ic3_fwd_prop_22
 (not
  (and
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (+ (* (- 1) f146@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0))
    (not (> (+ (* (- 1) f144@1) 3) 0)))
   (or
    (not f105@1)
    (= (+ (* (- 1) f146@1) 0) 0)
    (not f152@1)
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0)))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3788))
;; Success 

(assert (! __ic3_fwd_prop_22 :named c3789))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3790))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3791))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3792))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3793))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3794))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3795))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3796))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3797))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3798))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3799))
;; Success 

(assert (! __ic3_clause_46_p0 :named c3800))
;; Success 

(assert (! __ic3_clause_45_p0 :named c3801))
;; Success 

(assert (! __ic3_clause_44_p0 :named c3802))
;; Success 

(assert (! __ic3_clause_43_p0 :named c3803))
;; Success 

(assert (! __ic3_clause_42_p0 :named c3804))
;; Success 

(assert (! __ic3_clause_41_p0 :named c3805))
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
;;     (f148@1 2) 
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
;;     (f101@1 true) 
;;     (f100@1 false) 
;;     (f99@1 false) 
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
;;     (f153@0 2) 
;;     (f152@0 true) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 1) 
;;     (f147@0 0) 
;;     (f146@0 0) 
;;     (f145@0 1) 
;;     (f144@0 1) 
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

(assert (not __ic3_fwd_prop_22))
;; Success 

;; partition_fwd_prop: Checking for forward propagation of clause set 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for fwd_prop 23 

(declare-fun __ic3_fwd_prop_23 () Bool)
;; Success 

(assert
 (=>
 __ic3_fwd_prop_23
 (not
  (and
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (+ (* (- 1) f146@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (or
    (not f105@1)
    (= (+ (* (- 1) f146@1) 0) 0)
    (not f152@1)
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0)))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3806))
;; Success 

(assert (! __ic3_fwd_prop_23 :named c3807))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3808))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3809))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3810))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3811))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3812))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3813))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3814))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3815))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3816))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3817))
;; Success 

(assert (! __ic3_clause_46_p0 :named c3818))
;; Success 

(assert (! __ic3_clause_45_p0 :named c3819))
;; Success 

(assert (! __ic3_clause_44_p0 :named c3820))
;; Success 

(assert (! __ic3_clause_43_p0 :named c3821))
;; Success 

(assert (! __ic3_clause_42_p0 :named c3822))
;; Success 

(assert (! __ic3_clause_41_p0 :named c3823))
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
;;     (f148@1 2) 
;;     (f147@1 1) 
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
;;     (f101@1 true) 
;;     (f100@1 false) 
;;     (f99@1 false) 
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
;;     (f153@0 2) 
;;     (f152@0 true) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 1) 
;;     (f147@0 1) 
;;     (f146@0 0) 
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

(assert (not __ic3_fwd_prop_23))
;; Success 

;; partition_fwd_prop: Checking for forward propagation of clause set 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for fwd_prop 24 

(declare-fun __ic3_fwd_prop_24 () Bool)
;; Success 

(assert
 (=>
 __ic3_fwd_prop_24
 (not
  (or
   (not f105@1)
   (= (+ (* (- 1) f146@1) 0) 0)
   (not f152@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3824))
;; Success 

(assert (! __ic3_fwd_prop_24 :named c3825))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3826))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3827))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3828))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3829))
;; Success 

(assert (! __ic3_clause_28_p0 :named c3830))
;; Success 

(assert (! __ic3_clause_34_p0 :named c3831))
;; Success 

(assert (! __ic3_clause_29_p0 :named c3832))
;; Success 

(assert (! __ic3_clause_35_p0 :named c3833))
;; Success 

(assert (! __ic3_clause_5_p0 :named c3834))
;; Success 

(assert (! __ic3_clause_24_p0 :named c3835))
;; Success 

(assert (! __ic3_clause_46_p0 :named c3836))
;; Success 

(assert (! __ic3_clause_45_p0 :named c3837))
;; Success 

(assert (! __ic3_clause_44_p0 :named c3838))
;; Success 

(assert (! __ic3_clause_43_p0 :named c3839))
;; Success 

(assert (! __ic3_clause_42_p0 :named c3840))
;; Success 

(assert (! __ic3_clause_41_p0 :named c3841))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_fwd_prop_24))
;; Success 

;; Deactivating activation literals for clause 

(assert (not __ic3_clause_43_p0))
;; Success 

;; Deactivating activation literals for clause 

(assert (not __ic3_clause_42_p0))
;; Success 

;; Deactivating activation literals for clause 

(assert (not __ic3_clause_44_p0))
;; Success 

;; Deactivating activation literals for clause 

(assert (not __ic3_clause_45_p0))
;; Success 

;; Deactivating activation literals for clause 

(assert (not __ic3_clause_46_p0))
;; Success 

;; subsume_and_add: clause 7 

;; subsume_and_add: clause 16 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 471 

(declare-fun __ic3_ind_gen_471 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_471
 (not
  (or
   (not f152@1)
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f145@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 472 

(declare-fun __ic3_ind_gen_472 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_472
 (not
  (or
   (not f152@0)
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f145@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 473 

(declare-fun __ic3_ind_gen_473 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_473
 (or
  (not f152@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f145@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_472 :named c3842))
;; Success 

(assert (! __ic3_frame_0 :named c3843))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3844))
;; Success 

(assert (! __ic3_ind_gen_473 :named c3845))
;; Success 

(assert (! __ic3_ind_gen_471 :named c3846))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3847))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_473))
;; Success 

(assert (not __ic3_ind_gen_472))
;; Success 

(assert (not __ic3_ind_gen_471))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 474 

(declare-fun __ic3_ind_gen_474 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_474
 (not
  (or
   (not f105@1)
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f145@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 475 

(declare-fun __ic3_ind_gen_475 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_475
 (not
  (or
   (not f105@0)
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f145@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 476 

(declare-fun __ic3_ind_gen_476 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_476
 (or
  (not f105@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f145@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_475 :named c3848))
;; Success 

(assert (! __ic3_frame_0 :named c3849))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3850))
;; Success 

(assert (! __ic3_ind_gen_476 :named c3851))
;; Success 

(assert (! __ic3_ind_gen_474 :named c3852))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3853))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_476))
;; Success 

(assert (not __ic3_ind_gen_475))
;; Success 

(assert (not __ic3_ind_gen_474))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 477 

(declare-fun __ic3_ind_gen_477 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_477
 (not
  (or
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f145@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 478 

(declare-fun __ic3_ind_gen_478 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_478
 (not
  (or
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f145@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 479 

(declare-fun __ic3_ind_gen_479 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_479
 (or
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f145@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_478 :named c3854))
;; Success 

(assert (! __ic3_frame_0 :named c3855))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3856))
;; Success 

(assert (! __ic3_ind_gen_479 :named c3857))
;; Success 

(assert (! __ic3_ind_gen_477 :named c3858))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3859))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_479))
;; Success 

(assert (not __ic3_ind_gen_478))
;; Success 

(assert (not __ic3_ind_gen_477))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 480 

(declare-fun __ic3_ind_gen_480 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_480
 (not
  (or
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f145@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 481 

(declare-fun __ic3_ind_gen_481 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_481
 (not
  (or
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f145@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 482 

(declare-fun __ic3_ind_gen_482 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_482
 (or
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f145@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_481 :named c3860))
;; Success 

(assert (! __ic3_frame_0 :named c3861))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3862))
;; Success 

(assert (! __ic3_ind_gen_482 :named c3863))
;; Success 

(assert (! __ic3_ind_gen_480 :named c3864))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3865))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_482))
;; Success 

(assert (not __ic3_ind_gen_481))
;; Success 

(assert (not __ic3_ind_gen_480))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 483 

(declare-fun __ic3_ind_gen_483 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_483
 (not
  (or
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f145@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 484 

(declare-fun __ic3_ind_gen_484 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_484
 (not
  (or
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f145@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 485 

(declare-fun __ic3_ind_gen_485 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_485
 (or
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f145@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_484 :named c3866))
;; Success 

(assert (! __ic3_frame_0 :named c3867))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3868))
;; Success 

(assert (! __ic3_ind_gen_485 :named c3869))
;; Success 

(assert (! __ic3_ind_gen_483 :named c3870))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3871))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_485))
;; Success 

(assert (not __ic3_ind_gen_484))
;; Success 

(assert (not __ic3_ind_gen_483))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 486 

(declare-fun __ic3_ind_gen_486 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_486
 (not
  (or
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f145@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 487 

(declare-fun __ic3_ind_gen_487 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_487
 (not
  (or
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f145@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 488 

(declare-fun __ic3_ind_gen_488 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_488
 (or
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f145@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_487 :named c3872))
;; Success 

(assert (! __ic3_frame_0 :named c3873))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3874))
;; Success 

(assert (! __ic3_ind_gen_488 :named c3875))
;; Success 

(assert (! __ic3_ind_gen_486 :named c3876))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3877))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_488))
;; Success 

(assert (not __ic3_ind_gen_487))
;; Success 

(assert (not __ic3_ind_gen_486))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 489 

(declare-fun __ic3_ind_gen_489 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_489
 (not
  (or
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (* 1 f145@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 490 

(declare-fun __ic3_ind_gen_490 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_490
 (not
  (or
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (* 1 f145@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 491 

(declare-fun __ic3_ind_gen_491 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_491
 (or
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (* 1 f145@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_490 :named c3878))
;; Success 

(assert (! __ic3_frame_0 :named c3879))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3880))
;; Success 

(assert (! __ic3_ind_gen_491 :named c3881))
;; Success 

(assert (! __ic3_ind_gen_489 :named c3882))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3883))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_491))
;; Success 

(assert (not __ic3_ind_gen_490))
;; Success 

(assert (not __ic3_ind_gen_489))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 492 

(declare-fun __ic3_ind_gen_492 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_492
 (not
  (or
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 493 

(declare-fun __ic3_ind_gen_493 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_493
 (not
  (or
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 494 

(declare-fun __ic3_ind_gen_494 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_494
 (or
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_493 :named c3884))
;; Success 

(assert (! __ic3_frame_0 :named c3885))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_494))
;; Success 

(assert (not __ic3_ind_gen_493))
;; Success 

(assert (not __ic3_ind_gen_492))
;; Success 

;; subsume_and_add: clause 17 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 495 

(declare-fun __ic3_ind_gen_495 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_495
 (not
  (or
   (not f152@1)
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (* 1 f146@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 496 

(declare-fun __ic3_ind_gen_496 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_496
 (not
  (or
   (not f152@0)
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (* 1 f146@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 497 

(declare-fun __ic3_ind_gen_497 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_497
 (or
  (not f152@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (* 1 f146@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_496 :named c3886))
;; Success 

(assert (! __ic3_frame_0 :named c3887))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3888))
;; Success 

(assert (! __ic3_ind_gen_497 :named c3889))
;; Success 

(assert (! __ic3_ind_gen_495 :named c3890))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3891))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3892))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_497))
;; Success 

(assert (not __ic3_ind_gen_496))
;; Success 

(assert (not __ic3_ind_gen_495))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 498 

(declare-fun __ic3_ind_gen_498 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_498
 (not
  (or
   (not f105@1)
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (* 1 f146@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 499 

(declare-fun __ic3_ind_gen_499 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_499
 (not
  (or
   (not f105@0)
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (* 1 f146@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 500 

(declare-fun __ic3_ind_gen_500 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_500
 (or
  (not f105@0)
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (* 1 f146@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_499 :named c3893))
;; Success 

(assert (! __ic3_frame_0 :named c3894))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3895))
;; Success 

(assert (! __ic3_ind_gen_500 :named c3896))
;; Success 

(assert (! __ic3_ind_gen_498 :named c3897))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3898))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3899))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_500))
;; Success 

(assert (not __ic3_ind_gen_499))
;; Success 

(assert (not __ic3_ind_gen_498))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 501 

(declare-fun __ic3_ind_gen_501 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_501
 (not
  (or
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (* 1 f146@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 502 

(declare-fun __ic3_ind_gen_502 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_502
 (not
  (or
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (* 1 f146@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 503 

(declare-fun __ic3_ind_gen_503 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_503
 (or
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (* 1 f146@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_502 :named c3900))
;; Success 

(assert (! __ic3_frame_0 :named c3901))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3902))
;; Success 

(assert (! __ic3_ind_gen_503 :named c3903))
;; Success 

(assert (! __ic3_ind_gen_501 :named c3904))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3905))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3906))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_503))
;; Success 

(assert (not __ic3_ind_gen_502))
;; Success 

(assert (not __ic3_ind_gen_501))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 504 

(declare-fun __ic3_ind_gen_504 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_504
 (not
  (or
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (* 1 f146@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 505 

(declare-fun __ic3_ind_gen_505 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_505
 (not
  (or
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (* 1 f146@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 506 

(declare-fun __ic3_ind_gen_506 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_506
 (or
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (* 1 f146@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_505 :named c3907))
;; Success 

(assert (! __ic3_frame_0 :named c3908))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3909))
;; Success 

(assert (! __ic3_ind_gen_506 :named c3910))
;; Success 

(assert (! __ic3_ind_gen_504 :named c3911))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3912))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3913))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_506))
;; Success 

(assert (not __ic3_ind_gen_505))
;; Success 

(assert (not __ic3_ind_gen_504))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 507 

(declare-fun __ic3_ind_gen_507 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_507
 (not
  (or
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (* 1 f146@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 508 

(declare-fun __ic3_ind_gen_508 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_508
 (not
  (or
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (* 1 f146@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 509 

(declare-fun __ic3_ind_gen_509 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_509
 (or
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (* 1 f146@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_508 :named c3914))
;; Success 

(assert (! __ic3_frame_0 :named c3915))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3916))
;; Success 

(assert (! __ic3_ind_gen_509 :named c3917))
;; Success 

(assert (! __ic3_ind_gen_507 :named c3918))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3919))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3920))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_509))
;; Success 

(assert (not __ic3_ind_gen_508))
;; Success 

(assert (not __ic3_ind_gen_507))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 510 

(declare-fun __ic3_ind_gen_510 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_510
 (not
  (or
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (* 1 f146@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 511 

(declare-fun __ic3_ind_gen_511 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_511
 (not
  (or
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (* 1 f146@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 512 

(declare-fun __ic3_ind_gen_512 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_512
 (or
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (* 1 f146@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_511 :named c3921))
;; Success 

(assert (! __ic3_frame_0 :named c3922))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3923))
;; Success 

(assert (! __ic3_ind_gen_512 :named c3924))
;; Success 

(assert (! __ic3_ind_gen_510 :named c3925))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3926))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3927))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_512))
;; Success 

(assert (not __ic3_ind_gen_511))
;; Success 

(assert (not __ic3_ind_gen_510))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 513 

(declare-fun __ic3_ind_gen_513 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_513
 (not
  (or
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (* 1 f146@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 514 

(declare-fun __ic3_ind_gen_514 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_514
 (not
  (or
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (* 1 f146@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 515 

(declare-fun __ic3_ind_gen_515 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_515
 (or
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (* 1 f146@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_514 :named c3928))
;; Success 

(assert (! __ic3_frame_0 :named c3929))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3930))
;; Success 

(assert (! __ic3_ind_gen_515 :named c3931))
;; Success 

(assert (! __ic3_ind_gen_513 :named c3932))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3933))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3934))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_515))
;; Success 

(assert (not __ic3_ind_gen_514))
;; Success 

(assert (not __ic3_ind_gen_513))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 516 

(declare-fun __ic3_ind_gen_516 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_516
 (not
  (or
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)
   (not (> (* 1 f146@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 517 

(declare-fun __ic3_ind_gen_517 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_517
 (not
  (or
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)
   (not (> (* 1 f146@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 518 

(declare-fun __ic3_ind_gen_518 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_518
 (or
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0)
  (not (> (* 1 f146@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_517 :named c3935))
;; Success 

(assert (! __ic3_frame_0 :named c3936))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3937))
;; Success 

(assert (! __ic3_ind_gen_518 :named c3938))
;; Success 

(assert (! __ic3_ind_gen_516 :named c3939))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3940))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3941))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_518))
;; Success 

(assert (not __ic3_ind_gen_517))
;; Success 

(assert (not __ic3_ind_gen_516))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 519 

(declare-fun __ic3_ind_gen_519 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_519
 (not
  (or
   (not (> (+ (* (- 1) f145@1) 1) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* (- 1) f144@1) 1) 0))
   (not f152@1)
   (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 520 

(declare-fun __ic3_ind_gen_520 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_520
 (not
  (or
   (not (> (+ (* (- 1) f145@0) 1) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* (- 1) f144@0) 1) 0))
   (not f152@0)
   (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 521 

(declare-fun __ic3_ind_gen_521 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_521
 (or
  (not (> (+ (* (- 1) f145@0) 1) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 1) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0))
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* (- 1) f144@0) 1) 0))
  (not f152@0)
  (not f105@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_520 :named c3942))
;; Success 

(assert (! __ic3_frame_0 :named c3943))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_521))
;; Success 

(assert (not __ic3_ind_gen_520))
;; Success 

(assert (not __ic3_ind_gen_519))
;; Success 

;; subsume_and_add: clause 26 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 522 

(declare-fun __ic3_ind_gen_522 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_522
 (not (or (not (> (* 1 f144@1) 0)) (not (> (* 1 f147@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 523 

(declare-fun __ic3_ind_gen_523 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_523
 (not (or (not (> (* 1 f144@0) 0)) (not (> (* 1 f147@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 524 

(declare-fun __ic3_ind_gen_524 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_524 (or (not (> (* 1 f144@0) 0)) (not (> (* 1 f147@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_523 :named c3944))
;; Success 

(assert (! __ic3_frame_0 :named c3945))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3946))
;; Success 

(assert (! __ic3_ind_gen_524 :named c3947))
;; Success 

(assert (! __ic3_ind_gen_522 :named c3948))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3949))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3950))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3951))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_524))
;; Success 

(assert (not __ic3_ind_gen_523))
;; Success 

(assert (not __ic3_ind_gen_522))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 525 

(declare-fun __ic3_ind_gen_525 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_525 (not (or (not f152@1) (not (> (* 1 f147@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 526 

(declare-fun __ic3_ind_gen_526 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_526 (not (or (not f152@0) (not (> (* 1 f147@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 527 

(declare-fun __ic3_ind_gen_527 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_527 (or (not f152@0) (not (> (* 1 f147@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_526 :named c3952))
;; Success 

(assert (! __ic3_frame_0 :named c3953))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3954))
;; Success 

(assert (! __ic3_ind_gen_527 :named c3955))
;; Success 

(assert (! __ic3_ind_gen_525 :named c3956))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3957))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3958))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3959))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_527))
;; Success 

(assert (not __ic3_ind_gen_526))
;; Success 

(assert (not __ic3_ind_gen_525))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 528 

(declare-fun __ic3_ind_gen_528 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_528 (not (or (not (> (* 1 f144@1) 0)) (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 529 

(declare-fun __ic3_ind_gen_529 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_529 (not (or (not (> (* 1 f144@0) 0)) (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 530 

(declare-fun __ic3_ind_gen_530 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_530 (or (not (> (* 1 f144@0) 0)) (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_529 :named c3960))
;; Success 

(assert (! __ic3_frame_0 :named c3961))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3962))
;; Success 

(assert (! __ic3_ind_gen_530 :named c3963))
;; Success 

(assert (! __ic3_ind_gen_528 :named c3964))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3965))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3966))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3967))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_530))
;; Success 

(assert (not __ic3_ind_gen_529))
;; Success 

(assert (not __ic3_ind_gen_528))
;; Success 

;; subsume_and_add: clause 28 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 531 

(declare-fun __ic3_ind_gen_531 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_531
 (not (or (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 532 

(declare-fun __ic3_ind_gen_532 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_532
 (not (or (not (> (* 1 f147@0) 0)) (not (> (+ (* 1 f144@0) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 533 

(declare-fun __ic3_ind_gen_533 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_533
 (or (not (> (* 1 f147@0) 0)) (not (> (+ (* 1 f144@0) 0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_532 :named c3968))
;; Success 

(assert (! __ic3_frame_0 :named c3969))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3970))
;; Success 

(assert (! __ic3_ind_gen_533 :named c3971))
;; Success 

(assert (! __ic3_ind_gen_531 :named c3972))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3973))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3974))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3975))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3976))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_533))
;; Success 

(assert (not __ic3_ind_gen_532))
;; Success 

(assert (not __ic3_ind_gen_531))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 534 

(declare-fun __ic3_ind_gen_534 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_534 (not (or (not f152@1) (not (> (+ (* 1 f144@1) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 535 

(declare-fun __ic3_ind_gen_535 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_535 (not (or (not f152@0) (not (> (+ (* 1 f144@0) 0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 536 

(declare-fun __ic3_ind_gen_536 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_536 (or (not f152@0) (not (> (+ (* 1 f144@0) 0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_535 :named c3977))
;; Success 

(assert (! __ic3_frame_0 :named c3978))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3979))
;; Success 

(assert (! __ic3_ind_gen_536 :named c3980))
;; Success 

(assert (! __ic3_ind_gen_534 :named c3981))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3982))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3983))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3984))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3985))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_536))
;; Success 

(assert (not __ic3_ind_gen_535))
;; Success 

(assert (not __ic3_ind_gen_534))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 537 

(declare-fun __ic3_ind_gen_537 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_537 (not (or (not (> (* 1 f147@1) 0)) (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 538 

(declare-fun __ic3_ind_gen_538 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_538 (not (or (not (> (* 1 f147@0) 0)) (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 539 

(declare-fun __ic3_ind_gen_539 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_539 (or (not (> (* 1 f147@0) 0)) (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_538 :named c3986))
;; Success 

(assert (! __ic3_frame_0 :named c3987))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3988))
;; Success 

(assert (! __ic3_ind_gen_539 :named c3989))
;; Success 

(assert (! __ic3_ind_gen_537 :named c3990))
;; Success 

(assert (! __ic3_clause_16_p0 :named c3991))
;; Success 

(assert (! __ic3_clause_17_p0 :named c3992))
;; Success 

(assert (! __ic3_clause_26_p0 :named c3993))
;; Success 

(assert (! __ic3_clause_7_p0 :named c3994))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_539))
;; Success 

(assert (not __ic3_ind_gen_538))
;; Success 

(assert (not __ic3_ind_gen_537))
;; Success 

;; subsume_and_add: clause 34 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 540 

(declare-fun __ic3_ind_gen_540 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_540 (> (+ (* 1 f147@1) (- 1)) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 541 

(declare-fun __ic3_ind_gen_541 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_541 (> (+ (* 1 f147@0) (- 1)) 0)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 542 

(declare-fun __ic3_ind_gen_542 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_542 (not (> (+ (* 1 f147@0) (- 1)) 0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_541 :named c3995))
;; Success 

(assert (! __ic3_frame_0 :named c3996))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c3997))
;; Success 

(assert (! __ic3_ind_gen_542 :named c3998))
;; Success 

(assert (! __ic3_ind_gen_540 :named c3999))
;; Success 

(assert (! __ic3_clause_16_p0 :named c4000))
;; Success 

(assert (! __ic3_clause_17_p0 :named c4001))
;; Success 

(assert (! __ic3_clause_26_p0 :named c4002))
;; Success 

(assert (! __ic3_clause_28_p0 :named c4003))
;; Success 

(assert (! __ic3_clause_7_p0 :named c4004))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_542))
;; Success 

(assert (not __ic3_ind_gen_541))
;; Success 

(assert (not __ic3_ind_gen_540))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 543 

(declare-fun __ic3_ind_gen_543 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_543 f152@1))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 544 

(declare-fun __ic3_ind_gen_544 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_544 f152@0))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 545 

(declare-fun __ic3_ind_gen_545 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_545 (not f152@0)))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_544 :named c4005))
;; Success 

(assert (! __ic3_frame_0 :named c4006))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_545))
;; Success 

(assert (not __ic3_ind_gen_544))
;; Success 

(assert (not __ic3_ind_gen_543))
;; Success 

;; subsume_and_add: clause 29 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 546 

(declare-fun __ic3_ind_gen_546 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_546
 (not
  (or
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f144@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 547 

(declare-fun __ic3_ind_gen_547 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_547
 (not
  (or
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f144@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 548 

(declare-fun __ic3_ind_gen_548 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_548
 (or
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f144@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_547 :named c4007))
;; Success 

(assert (! __ic3_frame_0 :named c4008))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c4009))
;; Success 

(assert (! __ic3_ind_gen_548 :named c4010))
;; Success 

(assert (! __ic3_ind_gen_546 :named c4011))
;; Success 

(assert (! __ic3_clause_16_p0 :named c4012))
;; Success 

(assert (! __ic3_clause_17_p0 :named c4013))
;; Success 

(assert (! __ic3_clause_26_p0 :named c4014))
;; Success 

(assert (! __ic3_clause_28_p0 :named c4015))
;; Success 

(assert (! __ic3_clause_34_p0 :named c4016))
;; Success 

(assert (! __ic3_clause_7_p0 :named c4017))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_548))
;; Success 

(assert (not __ic3_ind_gen_547))
;; Success 

(assert (not __ic3_ind_gen_546))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 549 

(declare-fun __ic3_ind_gen_549 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_549 (not (or (not f152@1) (not (> (* 1 f144@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 550 

(declare-fun __ic3_ind_gen_550 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_550 (not (or (not f152@0) (not (> (* 1 f144@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 551 

(declare-fun __ic3_ind_gen_551 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_551 (or (not f152@0) (not (> (* 1 f144@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_550 :named c4018))
;; Success 

(assert (! __ic3_frame_0 :named c4019))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c4020))
;; Success 

(assert (! __ic3_ind_gen_551 :named c4021))
;; Success 

(assert (! __ic3_ind_gen_549 :named c4022))
;; Success 

(assert (! __ic3_clause_16_p0 :named c4023))
;; Success 

(assert (! __ic3_clause_17_p0 :named c4024))
;; Success 

(assert (! __ic3_clause_26_p0 :named c4025))
;; Success 

(assert (! __ic3_clause_28_p0 :named c4026))
;; Success 

(assert (! __ic3_clause_34_p0 :named c4027))
;; Success 

(assert (! __ic3_clause_7_p0 :named c4028))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_551))
;; Success 

(assert (not __ic3_ind_gen_550))
;; Success 

(assert (not __ic3_ind_gen_549))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 552 

(declare-fun __ic3_ind_gen_552 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_552
 (not (or (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0)) (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 553 

(declare-fun __ic3_ind_gen_553 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_553
 (not (or (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0)) (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 554 

(declare-fun __ic3_ind_gen_554 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_554
 (or (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0)) (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_553 :named c4029))
;; Success 

(assert (! __ic3_frame_0 :named c4030))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_554))
;; Success 

(assert (not __ic3_ind_gen_553))
;; Success 

(assert (not __ic3_ind_gen_552))
;; Success 

;; subsume_and_add: clause 35 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 555 

(declare-fun __ic3_ind_gen_555 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_555
 (not
  (or
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
   (not (> (* 1 f147@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 556 

(declare-fun __ic3_ind_gen_556 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_556
 (not
  (or
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
   (not (> (* 1 f147@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 557 

(declare-fun __ic3_ind_gen_557 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_557
 (or
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f147@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_556 :named c4031))
;; Success 

(assert (! __ic3_frame_0 :named c4032))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c4033))
;; Success 

(assert (! __ic3_ind_gen_557 :named c4034))
;; Success 

(assert (! __ic3_ind_gen_555 :named c4035))
;; Success 

(assert (! __ic3_clause_16_p0 :named c4036))
;; Success 

(assert (! __ic3_clause_17_p0 :named c4037))
;; Success 

(assert (! __ic3_clause_29_p0 :named c4038))
;; Success 

(assert (! __ic3_clause_26_p0 :named c4039))
;; Success 

(assert (! __ic3_clause_28_p0 :named c4040))
;; Success 

(assert (! __ic3_clause_34_p0 :named c4041))
;; Success 

(assert (! __ic3_clause_7_p0 :named c4042))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_557))
;; Success 

(assert (not __ic3_ind_gen_556))
;; Success 

(assert (not __ic3_ind_gen_555))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 558 

(declare-fun __ic3_ind_gen_558 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_558 (not (or (not f152@1) (not (> (* 1 f147@1) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 559 

(declare-fun __ic3_ind_gen_559 () Bool)
;; Success 

(assert
 (=> __ic3_ind_gen_559 (not (or (not f152@0) (not (> (* 1 f147@0) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 560 

(declare-fun __ic3_ind_gen_560 () Bool)
;; Success 

(assert (=> __ic3_ind_gen_560 (or (not f152@0) (not (> (* 1 f147@0) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_559 :named c4043))
;; Success 

(assert (! __ic3_frame_0 :named c4044))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c4045))
;; Success 

(assert (! __ic3_ind_gen_560 :named c4046))
;; Success 

(assert (! __ic3_ind_gen_558 :named c4047))
;; Success 

(assert (! __ic3_clause_16_p0 :named c4048))
;; Success 

(assert (! __ic3_clause_17_p0 :named c4049))
;; Success 

(assert (! __ic3_clause_29_p0 :named c4050))
;; Success 

(assert (! __ic3_clause_26_p0 :named c4051))
;; Success 

(assert (! __ic3_clause_28_p0 :named c4052))
;; Success 

(assert (! __ic3_clause_34_p0 :named c4053))
;; Success 

(assert (! __ic3_clause_7_p0 :named c4054))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_560))
;; Success 

(assert (not __ic3_ind_gen_559))
;; Success 

(assert (not __ic3_ind_gen_558))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 561 

(declare-fun __ic3_ind_gen_561 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_561
 (not (or (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0)) (not f152@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 562 

(declare-fun __ic3_ind_gen_562 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_562
 (not (or (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0)) (not f152@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 563 

(declare-fun __ic3_ind_gen_563 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_563
 (or (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0)) (not f152@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_562 :named c4055))
;; Success 

(assert (! __ic3_frame_0 :named c4056))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_563))
;; Success 

(assert (not __ic3_ind_gen_562))
;; Success 

(assert (not __ic3_ind_gen_561))
;; Success 

;; fwd_propagate: Checking for inductiveness of clauses in last frame. 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for is_ind 5 

(declare-fun __ic3_is_ind_5 () Bool)
;; Success 

(assert
 (=>
 __ic3_is_ind_5
 (not
  (and
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (or
    (not f105@1)
    (= (+ (* (- 1) f146@1) 0) 0)
    (not f152@1)
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0)))))))
;; Success 

;; Checking for inductiveness of clauses 

(push 1)
;; Success 

(assert (! __ic3_is_ind_5 :named c4057))
;; Success 

(assert (! __ic3_clause_5_p0 :named c4058))
;; Success 

(assert (! __ic3_clause_24_p0 :named c4059))
;; Success 

(assert (! __ic3_clause_41_p0 :named c4060))
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
;;     (f152@1 false) 
;;     (f151@1 false) 
;;     (f150@1 false) 
;;     (f149@1 false) 
;;     (f148@1 2) 
;;     (f147@1 2) 
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
;;     (f104@1 0) 
;;     (f103@1 false) 
;;     (f102@1 false) 
;;     (f101@1 false) 
;;     (f100@1 true) 
;;     (f99@1 false) 
;;     (f98@1 false) 
;;     (f97@1 true) 
;;     (f96@1 true) 
;;     (f95@1 true) 
;;     (f94@1 true) 
;;     (f93@1 false) 
;;     (f92@1 false) 
;;     (f154@0 false) 
;;     (f155@0 false) 
;;     (f156@0 false) 
;;     (f157@0 1) 
;;     (f158@0 false) 
;;     (f153@0 0) 
;;     (f152@0 false) 
;;     (f151@0 false) 
;;     (f150@0 false) 
;;     (f149@0 false) 
;;     (f148@0 1) 
;;     (f147@0 1) 
;;     (f146@0 0) 
;;     (f145@0 1) 
;;     (f144@0 1) 
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

(assert (not __ic3_is_ind_5))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for is_ind 6 

(declare-fun __ic3_is_ind_6 () Bool)
;; Success 

(assert
 (=>
 __ic3_is_ind_6
 (not
  (and
   (not (> (+ (* 1 f144@1) (- 1)) 0))
   (or
    (not f105@1)
    (= (+ (* (- 1) f146@1) 0) 0)
    (not f152@1)
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0)))))))
;; Success 

;; Checking for inductiveness of clauses 

(push 1)
;; Success 

(assert (! __ic3_is_ind_6 :named c4061))
;; Success 

(assert (! __ic3_clause_24_p0 :named c4062))
;; Success 

(assert (! __ic3_clause_41_p0 :named c4063))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_is_ind_6))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 564 

(declare-fun __ic3_ind_gen_564 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_564
 (not
  (or
   (= (+ (* (- 1) f146@1) 0) 0)
   (not f152@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 565 

(declare-fun __ic3_ind_gen_565 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_565
 (not
  (or
   (= (+ (* (- 1) f146@0) 0) 0)
   (not f152@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0)) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 566 

(declare-fun __ic3_ind_gen_566 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_566
 (or
  (= (+ (* (- 1) f146@0) 0) 0)
  (not f152@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0)) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_565 :named c4064))
;; Success 

(assert (! __ic3_frame_0 :named c4065))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(declare-fun __ic3_clause_47_p0 () Bool)
;; Success 

(assert (=> __ic3_clause_47_p0 true))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_47_p0 :named c4066))
;; Success 

(assert (! __ic3_ind_gen_566 :named c4067))
;; Success 

(assert (! __ic3_ind_gen_564 :named c4068))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_566))
;; Success 

(assert (not __ic3_ind_gen_565))
;; Success 

(assert (not __ic3_ind_gen_564))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 567 

(declare-fun __ic3_ind_gen_567 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_567
 (not
  (or
   (not f105@1)
   (not f152@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 568 

(declare-fun __ic3_ind_gen_568 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_568
 (not
  (or
   (not f105@0)
   (not f152@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0)) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 569 

(declare-fun __ic3_ind_gen_569 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_569
 (or
  (not f105@0)
  (not f152@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0)) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_568 :named c4069))
;; Success 

(assert (! __ic3_frame_0 :named c4070))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_47_p0 :named c4071))
;; Success 

(assert (! __ic3_ind_gen_569 :named c4072))
;; Success 

(assert (! __ic3_ind_gen_567 :named c4073))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_569))
;; Success 

(assert (not __ic3_ind_gen_568))
;; Success 

(assert (not __ic3_ind_gen_567))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 570 

(declare-fun __ic3_ind_gen_570 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_570
 (not
  (or
   (not f105@1)
   (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 571 

(declare-fun __ic3_ind_gen_571 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_571
 (not
  (or
   (not f105@0)
   (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0)) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 572 

(declare-fun __ic3_ind_gen_572 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_572
 (or
  (not f105@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0)) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_571 :named c4074))
;; Success 

(assert (! __ic3_frame_0 :named c4075))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_47_p0 :named c4076))
;; Success 

(assert (! __ic3_ind_gen_572 :named c4077))
;; Success 

(assert (! __ic3_ind_gen_570 :named c4078))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_572))
;; Success 

(assert (not __ic3_ind_gen_571))
;; Success 

(assert (not __ic3_ind_gen_570))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 573 

(declare-fun __ic3_ind_gen_573 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_573
 (not
  (or
   (not f152@1)
   (not f105@1)
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* (- 1) f144@1) 2) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 574 

(declare-fun __ic3_ind_gen_574 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_574
 (not
  (or
   (not f152@0)
   (not f105@0)
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0)) 0))
   (not (> (+ (* (- 1) f144@0) 2) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 575 

(declare-fun __ic3_ind_gen_575 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_575
 (or
  (not f152@0)
  (not f105@0)
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0)) 0))
  (not (> (+ (* (- 1) f144@0) 2) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_574 :named c4079))
;; Success 

(assert (! __ic3_frame_0 :named c4080))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_47_p0 :named c4081))
;; Success 

(assert (! __ic3_ind_gen_575 :named c4082))
;; Success 

(assert (! __ic3_ind_gen_573 :named c4083))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_575))
;; Success 

(assert (not __ic3_ind_gen_574))
;; Success 

(assert (not __ic3_ind_gen_573))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 576 

(declare-fun __ic3_ind_gen_576 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_576
 (not (or (not f152@1) (not f105@1) (not (> (+ (* (- 1) f144@1) 2) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 577 

(declare-fun __ic3_ind_gen_577 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_577
 (not (or (not f152@0) (not f105@0) (not (> (+ (* (- 1) f144@0) 2) 0))))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 578 

(declare-fun __ic3_ind_gen_578 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_578
 (or (not f152@0) (not f105@0) (not (> (+ (* (- 1) f144@0) 2) 0)))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_577 :named c4084))
;; Success 

(assert (! __ic3_frame_0 :named c4085))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_578))
;; Success 

(assert (not __ic3_ind_gen_577))
;; Success 

(assert (not __ic3_ind_gen_576))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_gen 579 

(declare-fun __ic3_ind_gen_579 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_579
 (not
  (or
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not f152@1)
   (not f105@1)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_gen 580 

(declare-fun __ic3_ind_gen_580 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_580
 (not
  (or
   (not (> (+ (* 1 f148@0) (* (- 1) f153@0)) 0))
   (not f152@0)
   (not f105@0)))))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_gen 581 

(declare-fun __ic3_ind_gen_581 () Bool)
;; Success 

(assert
 (=>
 __ic3_ind_gen_581
 (or (not (> (+ (* 1 f148@0) (* (- 1) f153@0)) 0)) (not f152@0) (not f105@0))))
;; Success 

;; ind_generalize: Checking if clause without literal is initial. 

(push 1)
;; Success 

(assert (! __ic3_ind_gen_580 :named c4086))
;; Success 

(assert (! __ic3_frame_0 :named c4087))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; ind_generalize: Checking if clause without literal is relatively inductive. 

(push 1)
;; Success 

(assert (! __ic3_clause_47_p0 :named c4088))
;; Success 

(assert (! __ic3_ind_gen_581 :named c4089))
;; Success 

(assert (! __ic3_ind_gen_579 :named c4090))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_ind_gen_581))
;; Success 

(assert (not __ic3_ind_gen_580))
;; Success 

(assert (not __ic3_ind_gen_579))
;; Success 

;; ind_generalize: Dropped 3 literals from clause. 

;; Deactivating activation literals for clause 

(assert (not __ic3_clause_41_p0))
;; Success 

;; New clause from inductive generalization of #41: 
;; #48 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0)) 0))} 

;; fwd_propagate: Asserting new invariants. 

(assert (not (> (+ (* 1 f144@0) (- 1)) 0)))
;; Success 

(assert (not (> (+ (* 1 f144@1) (- 1)) 0)))
;; Success 

(assert
 (or (not f105@0) (not f152@0) (not (> (+ (* 1 f148@0) (* (- 1) f153@0)) 0))))
;; Success 

(assert
 (or (not f105@1) (not f152@1) (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))))
;; Success 

;; subsume_and_add: clause 5 

;; check_frames: frames k to 1 
;;  
;; Frame: 
;; 5 
;;  
;; Frame: 
;; 16 
;; 17 
;; 29 
;; 35 
;; 26 
;; 28 
;; 34 
;; 7 
;;  
;; Frame: 
;; 9 
;; 15 
;; 11 
;; 13 
;; 32 

;; check_frames: Does R_3 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c4091))
;; Success 

(assert (! __ic3_clause_5_p0 :named c4092))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_3 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c4093))
;; Success 

(assert (! __ic3_clause_5_n0_0 :named c4094))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_2 & T |= R_3 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 30 

(declare-fun __ic3_check_frames_30 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_30
 (not (and f105@1 (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_30 :named c4095))
;; Success 

(assert (! __ic3_clause_3_p0 :named c4096))
;; Success 

(assert (! __ic3_clause_5_p0 :named c4097))
;; Success 

(assert (! __ic3_clause_16_p0 :named c4098))
;; Success 

(assert (! __ic3_clause_17_p0 :named c4099))
;; Success 

(assert (! __ic3_clause_29_p0 :named c4100))
;; Success 

(assert (! __ic3_clause_35_p0 :named c4101))
;; Success 

(assert (! __ic3_clause_26_p0 :named c4102))
;; Success 

(assert (! __ic3_clause_28_p0 :named c4103))
;; Success 

(assert (! __ic3_clause_34_p0 :named c4104))
;; Success 

(assert (! __ic3_clause_7_p0 :named c4105))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_30))
;; Success 

;; check_frames: Does R_2 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c4106))
;; Success 

(assert (! __ic3_clause_16_p0 :named c4107))
;; Success 

(assert (! __ic3_clause_17_p0 :named c4108))
;; Success 

(assert (! __ic3_clause_29_p0 :named c4109))
;; Success 

(assert (! __ic3_clause_35_p0 :named c4110))
;; Success 

(assert (! __ic3_clause_26_p0 :named c4111))
;; Success 

(assert (! __ic3_clause_28_p0 :named c4112))
;; Success 

(assert (! __ic3_clause_34_p0 :named c4113))
;; Success 

(assert (! __ic3_clause_7_p0 :named c4114))
;; Success 

(assert (! __ic3_clause_5_p0 :named c4115))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c4116))
;; Success 

(assert (! __ic3_clause_16_n0_0 :named c4117))
;; Success 

(assert (! __ic3_clause_16_n0_1 :named c4118))
;; Success 

(assert (! __ic3_clause_16_n0_2 :named c4119))
;; Success 

(assert (! __ic3_clause_16_n0_3 :named c4120))
;; Success 

(assert (! __ic3_clause_16_n0_4 :named c4121))
;; Success 

(assert (! __ic3_clause_16_n0_5 :named c4122))
;; Success 

(assert (! __ic3_clause_16_n0_6 :named c4123))
;; Success 

(assert (! __ic3_clause_16_n0_7 :named c4124))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c4125))
;; Success 

(assert (! __ic3_clause_17_n0_0 :named c4126))
;; Success 

(assert (! __ic3_clause_17_n0_1 :named c4127))
;; Success 

(assert (! __ic3_clause_17_n0_2 :named c4128))
;; Success 

(assert (! __ic3_clause_17_n0_3 :named c4129))
;; Success 

(assert (! __ic3_clause_17_n0_4 :named c4130))
;; Success 

(assert (! __ic3_clause_17_n0_5 :named c4131))
;; Success 

(assert (! __ic3_clause_17_n0_6 :named c4132))
;; Success 

(assert (! __ic3_clause_17_n0_7 :named c4133))
;; Success 

(assert (! __ic3_clause_17_n0_8 :named c4134))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c4135))
;; Success 

(assert (! __ic3_clause_29_n0_0 :named c4136))
;; Success 

(assert (! __ic3_clause_29_n0_1 :named c4137))
;; Success 

(assert (! __ic3_clause_29_n0_2 :named c4138))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c4139))
;; Success 

(assert (! __ic3_clause_35_n0_0 :named c4140))
;; Success 

(assert (! __ic3_clause_35_n0_1 :named c4141))
;; Success 

(assert (! __ic3_clause_35_n0_2 :named c4142))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c4143))
;; Success 

(assert (! __ic3_clause_26_n0_0 :named c4144))
;; Success 

(assert (! __ic3_clause_26_n0_1 :named c4145))
;; Success 

(assert (! __ic3_clause_26_n0_2 :named c4146))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c4147))
;; Success 

(assert (! __ic3_clause_28_n0_0 :named c4148))
;; Success 

(assert (! __ic3_clause_28_n0_1 :named c4149))
;; Success 

(assert (! __ic3_clause_28_n0_2 :named c4150))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c4151))
;; Success 

(assert (! __ic3_clause_34_n0_0 :named c4152))
;; Success 

(assert (! __ic3_clause_34_n0_1 :named c4153))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_2 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c4154))
;; Success 

(assert (! __ic3_clause_7_n0_0 :named c4155))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_1 & T |= R_2 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 31 

(declare-fun __ic3_check_frames_31 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_31
 (not
  (and
   f105@1
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (or (not f152@1) (not (> (* 1 f144@1) 0)) (not (> (* 1 f147@1) 0)))
   (or (not f152@1) (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0)))
   (or (not f152@1) (not (> (+ (* 1 f147@1) (- 1)) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_31 :named c4156))
;; Success 

(assert (! __ic3_clause_3_p0 :named c4157))
;; Success 

(assert (! __ic3_clause_5_p0 :named c4158))
;; Success 

(assert (! __ic3_clause_16_p0 :named c4159))
;; Success 

(assert (! __ic3_clause_17_p0 :named c4160))
;; Success 

(assert (! __ic3_clause_29_p0 :named c4161))
;; Success 

(assert (! __ic3_clause_35_p0 :named c4162))
;; Success 

(assert (! __ic3_clause_26_p0 :named c4163))
;; Success 

(assert (! __ic3_clause_28_p0 :named c4164))
;; Success 

(assert (! __ic3_clause_34_p0 :named c4165))
;; Success 

(assert (! __ic3_clause_7_p0 :named c4166))
;; Success 

(assert (! __ic3_clause_9_p0 :named c4167))
;; Success 

(assert (! __ic3_clause_15_p0 :named c4168))
;; Success 

(assert (! __ic3_clause_11_p0 :named c4169))
;; Success 

(assert (! __ic3_clause_13_p0 :named c4170))
;; Success 

(assert (! __ic3_clause_32_p0 :named c4171))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_31))
;; Success 

;; check_frames: Does R_1 |= P hold? 

(push 1)
;; Success 

(assert (! __ic3_clause_3_n0_0 :named c4172))
;; Success 

(assert (! __ic3_clause_9_p0 :named c4173))
;; Success 

(assert (! __ic3_clause_15_p0 :named c4174))
;; Success 

(assert (! __ic3_clause_11_p0 :named c4175))
;; Success 

(assert (! __ic3_clause_13_p0 :named c4176))
;; Success 

(assert (! __ic3_clause_32_p0 :named c4177))
;; Success 

(assert (! __ic3_clause_16_p0 :named c4178))
;; Success 

(assert (! __ic3_clause_17_p0 :named c4179))
;; Success 

(assert (! __ic3_clause_29_p0 :named c4180))
;; Success 

(assert (! __ic3_clause_35_p0 :named c4181))
;; Success 

(assert (! __ic3_clause_26_p0 :named c4182))
;; Success 

(assert (! __ic3_clause_28_p0 :named c4183))
;; Success 

(assert (! __ic3_clause_34_p0 :named c4184))
;; Success 

(assert (! __ic3_clause_7_p0 :named c4185))
;; Success 

(assert (! __ic3_clause_5_p0 :named c4186))
;; Success 

(check-sat)
;; Sat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c4187))
;; Success 

(assert (! __ic3_clause_9_n0_0 :named c4188))
;; Success 

(assert (! __ic3_clause_9_n0_1 :named c4189))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c4190))
;; Success 

(assert (! __ic3_clause_15_n0_0 :named c4191))
;; Success 

(assert (! __ic3_clause_15_n0_1 :named c4192))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c4193))
;; Success 

(assert (! __ic3_clause_11_n0_0 :named c4194))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c4195))
;; Success 

(assert (! __ic3_clause_13_n0_0 :named c4196))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does I |= C for C in R_1 hold? 

(push 1)
;; Success 

(assert (! __ic3_frame_0 :named c4197))
;; Success 

(assert (! __ic3_clause_32_n0_0 :named c4198))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

;; check_frames: Does R_0 & T |= R_1 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 32 

(declare-fun __ic3_check_frames_32 () Bool)
;; Success 

(assert
 (=>
 __ic3_check_frames_32
 (not
  (and
   f105@1
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (not (> (* 1 f145@1) 0))
   (not (> (* 1 f146@1) 0))
   (not (> (+ (* 1 f147@1) (- 1)) 0))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f145@1) 0)))
   (or
    (not f105@1)
    (not f152@1)
    (not (> (+ (* (- 1) f144@1) 1) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0))
    (not (> (+ (* (- 1) f144@1) 2) 0))
    (not (> (+ (* (- 1) f148@1) (* 1 f153@1) 1) 0))
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (+ (* (- 1) f145@1) 1) 0))
    (not (> (* 1 f146@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f144@1) 0)))
   (or
    (not f152@1)
    (not (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0))
    (not (> (* 1 f147@1) 0)))
   (or (not f152@1) (not (> (* 1 f144@1) 0)) (not (> (* 1 f147@1) 0)))
   (or (not f152@1) (not (> (* 1 f147@1) 0)) (not (> (+ (* 1 f144@1) 0) 0)))
   (or (not f152@1) (not (> (+ (* 1 f147@1) (- 1)) 0)))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1)) 0))
   (not (> (+ (* 1 f148@1) (* (- 1) f153@1) (- 1)) 0))))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_check_frames_32 :named c4199))
;; Success 

(assert (! __ic3_frame_0 :named c4200))
;; Success 

(check-sat)
;; Unsat 

(pop 1)
;; Success 

(assert (not __ic3_check_frames_32))
;; Success 

;; block: Check if all successors of frontier R_3 are safe. 

(push 1)
;; Success 

(assert (! __ic3_clause_3_p0 :named c4201))
;; Success 

(assert (! __ic3_clause_3_n1_0 :named c4202))
;; Success 

(assert (! __ic3_clause_5_p0 :named c4203))
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
;;     (f103@1 true) 
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
;;     (f148@0 1) 
;;     (f147@0 0) 
;;     (f146@0 0) 
;;     (f145@0 0) 
;;     (f144@0 1) 
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
;; #49 {(not top.usr.OK@0); 
;;      (not top.res.abs_8@0); 
;;      (not (> (+ (* (- 1) top.res.abs_4@0) (* 1 top.res.abs_9@0) 2) 0)); 
;;      (not (> (+ (* 1 top.res.abs_4@0) (* (- 1) top.res.abs_9@0) 1) 0)); 
;;      (not (> (* 1 top.res.abs_0@0) 0)); 
;;      (not (> (+ (* (- 1) top.res.abs_0@0) 3) 0))} 

;; block: Is blocking clause relative inductive to R_2? 

(declare-fun __ic3_clause_49_n1_0 () Bool)
;; Success 

(assert (=> __ic3_clause_49_n1_0 f105@1))
;; Success 

(declare-fun __ic3_clause_49_n1_1 () Bool)
;; Success 

(assert (=> __ic3_clause_49_n1_1 f152@1))
;; Success 

(declare-fun __ic3_clause_49_n1_2 () Bool)
;; Success 

(assert (=> __ic3_clause_49_n1_2 (> (+ (* (- 1) f148@1) (* 1 f153@1) 2) 0)))
;; Success 

(declare-fun __ic3_clause_49_n1_3 () Bool)
;; Success 

(assert (=> __ic3_clause_49_n1_3 (> (+ (* 1 f148@1) (* (- 1) f153@1) 1) 0)))
;; Success 

(declare-fun __ic3_clause_49_n1_4 () Bool)
;; Success 

(assert (=> __ic3_clause_49_n1_4 (> (* 1 f144@1) 0)))
;; Success 

(declare-fun __ic3_clause_49_n1_5 () Bool)
;; Success 

(assert (=> __ic3_clause_49_n1_5 (> (+ (* (- 1) f144@1) 3) 0)))
;; Success 

(declare-fun __ic3_clause_49_p0 () Bool)
;; Success 

(assert
 (=>
 __ic3_clause_49_p0
 (or
  (not f105@0)
  (not f152@0)
  (not (> (+ (* (- 1) f148@0) (* 1 f153@0) 2) 0))
  (not (> (+ (* 1 f148@0) (* (- 1) f153@0) 1) 0))
  (not (> (* 1 f144@0) 0))
  (not (> (+ (* (- 1) f144@0) 3) 0)))))
;; Success 

(push 1)
;; Success 

(assert (! __ic3_clause_49_p0 :named c4204))
;; Success 

(assert (! __ic3_clause_49_n1_0 :named c4205))
;; Success 

(assert (! __ic3_clause_49_n1_1 :named c4206))
;; Success 

(assert (! __ic3_clause_49_n1_2 :named c4207))
;; Success 

(assert (! __ic3_clause_49_n1_3 :named c4208))
;; Success 

(assert (! __ic3_clause_49_n1_4 :named c4209))
;; Success 

(assert (! __ic3_clause_49_n1_5 :named c4210))
;; Success 

(assert (! __ic3_clause_5_p0 :named c4211))
;; Success 

(assert (! __ic3_clause_3_p0 :named c4212))
;; Success 

(assert (! __ic3_clause_16_p0 :named c4213))
;; Success 

(assert (! __ic3_clause_17_p0 :named c4214))
;; Success 

(assert (! __ic3_clause_29_p0 :named c4215))
;; Success 

(assert (! __ic3_clause_35_p0 :named c4216))
;; Success 

(assert (! __ic3_clause_26_p0 :named c4217))
;; Success 

(assert (! __ic3_clause_28_p0 :named c4218))
;; Success 

(assert (! __ic3_clause_34_p0 :named c4219))
;; Success 

(assert (! __ic3_clause_7_p0 :named c4220))
;; Success 

(check-sat)
