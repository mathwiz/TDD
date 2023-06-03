;;; -*- Mode: LISP; package:maxima; syntax:common-lisp; -*- 
(in-package :maxima)
(DSKSETQ $%I1
         '((MSETQ) |$v| ((MTIMES) ((MQUOTIENT) 4. 3.) $%PI ((MEXPT) $R 3.)))) 
(ADDLABEL '$%I1) 
(DSKSETQ $%O1 '((MTIMES SIMP) ((RAT SIMP) 4. 3.) $%PI ((MEXPT SIMP) $R 3.))) 
(ADDLABEL '$%O1) 
(DSKSETQ $%I2 '((MSETQ) $R 10.)) 
(ADDLABEL '$%I2) 
(DSKSETQ $%O2 '10.) 
(ADDLABEL '$%O2) 
(DSKSETQ $%I3 '|$v|) 
(ADDLABEL '$%I3) 
(DSKSETQ $%O3 '((MTIMES SIMP) ((RAT SIMP) 4. 3.) $%PI ((MEXPT SIMP) $R 3.))) 
(ADDLABEL '$%O3) 
(DSKSETQ $%I4 '((MTIMES SIMP) ((RAT SIMP) 4. 3.) $%PI ((MEXPT SIMP) $R 3.))) 
(ADDLABEL '$%I4) 
(DSKSETQ $%O4 '((MTIMES SIMP) ((RAT SIMP) 4000. 3.) $%PI)) 
(ADDLABEL '$%O4) 
(DSKSETQ $%I5
         '(($EV) ((MTIMES SIMP) ((RAT SIMP) 4. 3.) $%PI ((MEXPT SIMP) $R 3.))
           $NUMER)) 
(ADDLABEL '$%I5) 
(DSKSETQ $%O5 '4188.790204786391) 
(ADDLABEL '$%O5) 
(DSKSETQ $%I6 '(($SAVE) "minimal-maxima.lisp" $ALL)) 
(ADDLABEL '$%I6) 
(DSKSETQ $%O6 '#A((19.) BASE-CHAR . "minimal-maxima.lisp")) 
(ADDLABEL '$%O6) 
(DSKSETQ $%I7 '|$v|) 
(ADDLABEL '$%I7) 
(DSKSETQ $%O7 '((MTIMES SIMP) ((RAT SIMP) 4. 3.) $%PI ((MEXPT SIMP) $R 3.))) 
(ADDLABEL '$%O7) 
(DSKSETQ $%I8 '((MTIMES SIMP) ((RAT SIMP) 4. 3.) $%PI ((MEXPT SIMP) $R 3.))) 
(ADDLABEL '$%I8) 
(DSKSETQ $%O8 '((MTIMES SIMP) ((RAT SIMP) 4000. 3.) $%PI)) 
(ADDLABEL '$%O8) 
(DSKSETQ $%I9
         '(($EV) ((MTIMES SIMP) ((RAT SIMP) 4. 3.) $%PI ((MEXPT SIMP) $R 3.))
           $NUMER)) 
(ADDLABEL '$%I9) 
(DSKSETQ $%O9 '4188.790204786391) 
(ADDLABEL '$%O9) 
(DSKSETQ $%I10
         '((MSETQ) |$l|
           ((MLIST) $A $B $C $%PI $%E 1729.
            ((MQUOTIENT) 1.
             ((MPLUS) ((MTIMES) $A $D) ((MMINUS) ((MTIMES) $B $C))))))) 
(ADDLABEL '$%I10) 
(DSKSETQ $%O10
         '((MLIST SIMP) $A $B $C $%PI $%E 1729.
           ((MEXPT SIMP)
            ((MPLUS SIMP) ((MTIMES SIMP) -1. $B $C) ((MTIMES SIMP) $A $D))
            -1.))) 
(ADDLABEL '$%O10) 
(DSKSETQ $%I11 '|$l|) 
(ADDLABEL '$%I11) 
(DSKSETQ $%O11
         '((MLIST SIMP) $A $B $C $%PI $%E 1729.
           ((MEXPT SIMP)
            ((MPLUS SIMP) ((MTIMES SIMP) -1. $B $C) ((MTIMES SIMP) $A $D))
            -1.))) 
(ADDLABEL '$%O11) 
(DSKSETQ $%I12
         '((MSETQ) |$l2|
           ((MLIST) $A $B
            ((MLIST) $C $%PI ((MLIST) $%E 1729.)
             ((MQUOTIENT) 1.
              ((MPLUS) ((MTIMES) $A $D) ((MMINUS) ((MTIMES) $B $C)))))))) 
(ADDLABEL '$%I12) 
(DSKSETQ $%O12
         '((MLIST SIMP) $A $B
           ((MLIST SIMP) $C $%PI ((MLIST SIMP) $%E 1729.)
            ((MEXPT SIMP)
             ((MPLUS SIMP) ((MTIMES SIMP) -1. $B $C) ((MTIMES SIMP) $A $D))
             -1.)))) 
(ADDLABEL '$%O12) 
(DSKSETQ $%I13 '((|$l| ARRAY) 7.)) 
(ADDLABEL '$%I13) 
(DSKSETQ $%O13
         '((MEXPT SIMP)
           ((MPLUS SIMP) ((MTIMES SIMP) -1. $B $C) ((MTIMES SIMP) $A $D)) -1.)) 
(ADDLABEL '$%O13) 
(DSKSETQ $%I14 '((|$l2| ARRAY) 3.)) 
(ADDLABEL '$%I14) 
(DSKSETQ $%O14
         '((MLIST SIMP) $C $%PI ((MLIST SIMP) $%E 1729.)
           ((MEXPT SIMP)
            ((MPLUS SIMP) ((MTIMES SIMP) -1. $B $C) ((MTIMES SIMP) $A $D))
            -1.))) 
(ADDLABEL '$%O14) 
(DSKSETQ $%I15 '((MSETQ) |$m| (($MATRIX) ((MLIST) $%PI 17.) ((MLIST) 29. $%E)))) 
(ADDLABEL '$%I15) 
(DSKSETQ $%O15 '(($MATRIX SIMP) ((MLIST SIMP) $%PI 17.) ((MLIST SIMP) 29. $%E))) 
(ADDLABEL '$%O15) 
(DSKSETQ $%I16
         '((MSETQ) |$m2|
           (($MATRIX)
            ((MLIST) ((MLIST) $%PI 17.)
             ((MPLUS) ((MTIMES) $A $D) ((MMINUS) ((MTIMES) $B $C))))
            ((MLIST) (($MATRIX) ((MLIST) 1. $A) ((MLIST) $B 7.)) $%E)))) 
(ADDLABEL '$%I16) 
(DSKSETQ $%O16
         '(($MATRIX SIMP)
           ((MLIST SIMP) ((MLIST SIMP) $%PI 17.)
            ((MPLUS SIMP) ((MTIMES SIMP) -1. $B $C) ((MTIMES SIMP) $A $D)))
           ((MLIST SIMP)
            (($MATRIX SIMP) ((MLIST SIMP) 1. $A) ((MLIST SIMP) $B 7.)) $%E))) 
(ADDLABEL '$%O16) 
(DSKSETQ $%I17 '((MQAPPLY ARRAY) ((|$m| ARRAY) 2.) 1.)) 
(ADDLABEL '$%I17) 
(DSKSETQ $%O17 '29.) 
(ADDLABEL '$%O17) 
(DSKSETQ $%I18 '((MQAPPLY ARRAY) ((|$m2| ARRAY) 2.) 1.)) 
(ADDLABEL '$%I18) 
(DSKSETQ $%O18 '(($MATRIX SIMP) ((MLIST SIMP) 1. $A) ((MLIST SIMP) $B 7.))) 
(ADDLABEL '$%O18) 
(DSKSETQ $%I19 '(($SAVE) "minimal-maxima.lisp" $ALL)) 
(ADDLABEL '$%I19) 
(DSKSETQ |$v| '((MTIMES SIMP) ((RAT SIMP) 4. 3.) $%PI ((MEXPT SIMP) $R 3.))) 
(ADD2LNC '|$v| $VALUES) 
(DSKSETQ $R '10.) 
(ADD2LNC '$R $VALUES) 
(DSKSETQ |$l|
         '((MLIST SIMP) $A $B $C $%PI $%E 1729.
           ((MEXPT SIMP)
            ((MPLUS SIMP) ((MTIMES SIMP) -1. $B $C) ((MTIMES SIMP) $A $D))
            -1.))) 
(ADD2LNC '|$l| $VALUES) 
(DSKSETQ |$l2|
         '((MLIST SIMP) $A $B
           ((MLIST SIMP) $C $%PI ((MLIST SIMP) $%E 1729.)
            ((MEXPT SIMP)
             ((MPLUS SIMP) ((MTIMES SIMP) -1. $B $C) ((MTIMES SIMP) $A $D))
             -1.)))) 
(ADD2LNC '|$l2| $VALUES) 
(DSKSETQ |$m| '(($MATRIX SIMP) ((MLIST SIMP) $%PI 17.) ((MLIST SIMP) 29. $%E))) 
(ADD2LNC '|$m| $VALUES) 
(DSKSETQ |$m2|
         '(($MATRIX SIMP)
           ((MLIST SIMP) ((MLIST SIMP) $%PI 17.)
            ((MPLUS SIMP) ((MTIMES SIMP) -1. $B $C) ((MTIMES SIMP) $A $D)))
           ((MLIST SIMP)
            (($MATRIX SIMP) ((MLIST SIMP) 1. $A) ((MLIST SIMP) $B 7.)) $%E))) 
(ADD2LNC '|$m2| $VALUES) 
(SETQ $DONTFACTOR
        (NCONC
         '((MLIST)
           ((%BUILD_INFO) $VERSION $TIMESTAMP $HOST $LISP_NAME $LISP_VERSION
            $MAXIMA_USERDIR $MAXIMA_TEMPDIR $MAXIMA_OBJDIR $MAXIMA_FRONTEND
            $MAXIMA_FRONTEND_VERSION)
           ((%BUILD_INFO) $VERSION $TIMESTAMP $HOST $LISP_NAME $LISP_VERSION
            $MAXIMA_USERDIR $MAXIMA_TEMPDIR $MAXIMA_OBJDIR $MAXIMA_FRONTEND
            $MAXIMA_FRONTEND_VERSION))
         (CDR $DONTFACTOR))) 
(ADD2LNC '$DONTFACTOR $MYOPTIONS) 
(DEFPROP %HYPERGEOMETRIC SIMP-%HYPERGEOMETRIC OPERATORS) 
(ADD2LNC '%HYPERGEOMETRIC $PROPS) 
(SETQ $LINENUM 19.) 
(SETQ *ALPHABET*
        (NCONC '(#\LOW_LINE #\PERCENT_SIGN #\LOW_LINE #\PERCENT_SIGN)
               *ALPHABET*)) 