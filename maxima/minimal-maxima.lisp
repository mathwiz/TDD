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
(DSKSETQ $%O19
         '#A((56.) BASE-CHAR
             . "/Users/yohanlee/Developer/TDD/maxima/minimal-maxima.lisp")) 
(ADDLABEL '$%O19) 
(DSKSETQ $%I20 '((MPLUS) ((MSETQ) $A 42.) ((MMINUS) ((MSETQ) $B 17.)))) 
(ADDLABEL '$%I20) 
(DSKSETQ $%O20 '25.) 
(ADDLABEL '$%O20) 
(DSKSETQ $%I21 '((MLIST) $A $B)) 
(ADDLABEL '$%I21) 
(DSKSETQ $%O21 '((MLIST SIMP) 42. 17.)) 
(ADDLABEL '$%O21) 
(DSKSETQ $%I22
         '((MPLUS)
           ((MPROG) ((MLIST) $A) ((MSETQ) $A 42.)
            ((MPLUS) ((MEXPT) $A 2.) ((MMINUS) 1600.)))
           ((MPROG) ((MLIST) $B) ((MSETQ) $B 5.) ((MEXPT) $%PI $B)))) 
(ADDLABEL '$%I22) 
(DSKSETQ $%O22 '((MPLUS SIMP) 164. ((MEXPT SIMP) $%PI 5.))) 
(ADDLABEL '$%O22) 
(DSKSETQ $%I23
         '((MPLUS) ((MCOND) ((MGREATERP) $A 1.) $%PI T $%E)
           ((MCOND) ((MLESSP) $B 0.) ((MQUOTIENT) 1. 2.) T
            ((MQUOTIENT) 1. 7.)))) 
(ADDLABEL '$%I23) 
(DSKSETQ $%O23 '((MPLUS SIMP) ((RAT SIMP) 1. 7.) $%PI)) 
(ADDLABEL '$%O23) 
(DSKSETQ $%I24 '(($OP) ((MPLUS) $P $Q))) 
(ADDLABEL '$%I24) 
(DSKSETQ $%O24 '"+") 
(ADDLABEL '$%O24) 
(DSKSETQ $%I25 '(($OP) ((MGREATERP) ((MPLUS) $P $Q) ((MTIMES) $P $Q)))) 
(ADDLABEL '$%I25) 
(DSKSETQ $%O25 '">") 
(ADDLABEL '$%O25) 
(DSKSETQ $%I26 '(($OP) ((%SIN) ((MPLUS) $P $Q)))) 
(ADDLABEL '$%I26) 
(DSKSETQ $%O26 '%SIN) 
(ADDLABEL '$%O26) 
(DSKSETQ $%I27 '(($ARGS) (($FOO) $P $Q))) 
(ADDLABEL '$%I27) 
(DSKSETQ $%O27 '((MLIST SIMP) $P $Q)) 
(ADDLABEL '$%O27) 
(DSKSETQ $%I28 '(($ARGS) ((%SIN) ((MPLUS) $P $Q)))) 
(ADDLABEL '$%I28) 
(DSKSETQ $%O28 '((MLIST SIMP) ((MPLUS SIMP) $P $Q))) 
(ADDLABEL '$%O28) 
(DSKSETQ $%I29 '|$l|) 
(ADDLABEL '$%I29) 
(DSKSETQ $%O29
         '((MLIST SIMP) $A $B $C $%PI $%E 1729.
           ((MEXPT SIMP)
            ((MPLUS SIMP) ((MTIMES SIMP) -1. $B $C) ((MTIMES SIMP) $A $D))
            -1.))) 
(ADDLABEL '$%O29) 
(DSKSETQ $%I30
         '(($ARGS) ((MQUOTE) ((MDOIN) $X |$l| NIL NIL NIL NIL (($PRINT) $X))))) 
(ADDLABEL '$%I30) 
(DSKSETQ $%O30 '((MLIST SIMP) $X |$l| NIL NIL NIL NIL (($PRINT SIMP) $X))) 
(ADDLABEL '$%O30) 
(DSKSETQ $%I31 '(($PRINT) |$l|)) 
(ADDLABEL '$%I31) 
(DSKSETQ $%O31
         '((MLIST SIMP) $A $B $C $%PI $%E 1729.
           ((MEXPT SIMP)
            ((MPLUS SIMP) ((MTIMES SIMP) -1. $B $C) ((MTIMES SIMP) $A $D))
            -1.))) 
(ADDLABEL '$%O31) 
(DSKSETQ $%I32 '((MQUOTE) |$l|)) 
(ADDLABEL '$%I32) 
(DSKSETQ $%O32 '|$l|) 
(ADDLABEL '$%O32) 
(DSKSETQ $%I33 '|$l|) 
(ADDLABEL '$%I33) 
(DSKSETQ $%O33
         '((MLIST SIMP) $A $B $C $%PI $%E 1729.
           ((MEXPT SIMP)
            ((MPLUS SIMP) ((MTIMES SIMP) -1. $B $C) ((MTIMES SIMP) $A $D))
            -1.))) 
(ADDLABEL '$%O33) 
(DSKSETQ $%I34
         '((MLIST SIMP) $A $B $C $%PI $%E 1729.
           ((MEXPT SIMP)
            ((MPLUS SIMP) ((MTIMES SIMP) -1. $B $C) ((MTIMES SIMP) $A $D))
            -1.))) 
(ADDLABEL '$%I34) 
(DSKSETQ $%O34
         '((MLIST SIMP) 42. 17. $C $%PI $%E 1729.
           ((MEXPT SIMP)
            ((MPLUS SIMP) ((MTIMES SIMP) -17. $C) ((MTIMES SIMP) 42. $D)) -1.))) 
(ADDLABEL '$%O34) 
(DSKSETQ $%I35
         '(($EV)
           ((MLIST SIMP) $A $B $C $%PI $%E 1729.
            ((MEXPT SIMP)
             ((MPLUS SIMP) ((MTIMES SIMP) -1. $B $C) ((MTIMES SIMP) $A $D))
             -1.))
           $NUMER)) 
(ADDLABEL '$%I35) 
(DSKSETQ $%O35
         '((MLIST SIMP) 42. 17. $C 3.141592653589793 $%E 1729.
           ((MEXPT SIMP)
            ((MPLUS SIMP) ((MTIMES SIMP) -17. $C) ((MTIMES SIMP) 42. $D)) -1.))) 
(ADDLABEL '$%O35) 
(DSKSETQ $%I36 '((MEXPT) $%E 1.)) 
(ADDLABEL '$%I36) 
(DSKSETQ $%O36 '$%E) 
(ADDLABEL '$%O36) 
(DSKSETQ $%I37 '(($EV) ((MEXPT) $%E 1.) $NUMER)) 
(ADDLABEL '$%I37) 
(DSKSETQ $%O37 '2.718281828459045) 
(ADDLABEL '$%O37) 
(DSKSETQ $%I38 '((MPROG) ((MSETQ) $A 1.) ((MSETQ) $B 2.) ((MSETQ) $E 5.))) 
(ADDLABEL '$%I38) 
(DSKSETQ $%O38 '5.) 
(ADDLABEL '$%O38) 
(DSKSETQ $%I39 '((MLIST) $A $B $C $D $E)) 
(ADDLABEL '$%I39) 
(DSKSETQ $%O39 '((MLIST SIMP) 1. 2. $C $D 5.)) 
(ADDLABEL '$%O39) 
(DSKSETQ $%I40 '((MPROG) ((MSETQ) $X $%PI) ((MSETQ) $Y $%E))) 
(ADDLABEL '$%I40) 
(DSKSETQ $%O40 '$%E) 
(ADDLABEL '$%O40) 
(DSKSETQ $%I41 '((%SIN) ((MPLUS) $X $Y))) 
(ADDLABEL '$%I41) 
(DSKSETQ $%O41 '((MTIMES SIMP) -1. ((%SIN SIMP) $%E))) 
(ADDLABEL '$%O41) 
(DSKSETQ $%I42 '((MGREATERP) $X $Y)) 
(ADDLABEL '$%I42) 
(DSKSETQ $%O42 '((MGREATERP SIMP) $%PI $%E)) 
(ADDLABEL '$%O42) 
(DSKSETQ $%I43 '((MFACTORIAL) $X)) 
(ADDLABEL '$%I43) 
(DSKSETQ $%O43 '((MFACTORIAL SIMP) $%PI)) 
(ADDLABEL '$%O43) 
(DSKSETQ $%I44 '$ADD) 
(ADDLABEL '$%I44) 
(DSKSETQ $%O44 '$ADD) 
(ADDLABEL '$%O44) 
(DSKSETQ $%I45 '((MDEFINE) (($ADD) $P $Q) ((MPLUS) $P $Q))) 
(ADDLABEL '$%I45) 
(DSKSETQ $%O45 '((MDEFINE SIMP) (($ADD) $P $Q) ((MPLUS) $P $Q))) 
(ADDLABEL '$%O45) 
(DSKSETQ $%I46 '(($ADD) 3. 6.)) 
(ADDLABEL '$%I46) 
(DSKSETQ $%O46 '9.) 
(ADDLABEL '$%O46) 
(DSKSETQ $%I47 '((MSETQ) $P $%PHI)) 
(ADDLABEL '$%I47) 
(DSKSETQ $%O47 '$%PHI) 
(ADDLABEL '$%O47) 
(DSKSETQ $%I48 '((MQUOTE) $P)) 
(ADDLABEL '$%I48) 
(DSKSETQ $%O48 '$P) 
(ADDLABEL '$%O48) 
(DSKSETQ $%I49 '(($EV) ((MQUOTE) $P) $NUMER)) 
(ADDLABEL '$%I49) 
(DSKSETQ $%O49 '$%PHI) 
(ADDLABEL '$%O49) 
(DSKSETQ $%I50 '(($ADD) $P $Q)) 
(ADDLABEL '$%I50) 
(DSKSETQ $%O50 '((MPLUS SIMP) $%PHI $Q)) 
(ADDLABEL '$%O50) 
(DSKSETQ $%I51 '(($BAR) $%PHI $Q)) 
(ADDLABEL '$%I51) 
(DSKSETQ $%O51 '(($BAR SIMP) $%PHI $Q)) 
(ADDLABEL '$%O51) 
(DSKSETQ $%I52
         '((MPROG) ((MSETQ) $A 1.) ((MSETQ) $B $%PI)
           ((MSETQ) $C ((MPLUS) $X $Y)))) 
(ADDLABEL '$%I52) 
(DSKSETQ $%O52 '((MPLUS SIMP) $%E $%PI)) 
(ADDLABEL '$%O52) 
(DSKSETQ $%I53 '((MLIST) $A $B $C)) 
(ADDLABEL '$%I53) 
(DSKSETQ $%O53 '((MLIST SIMP) 1. $%PI ((MPLUS SIMP) $%E $%PI))) 
(ADDLABEL '$%O53) 
(DSKSETQ $%I54 '%EXP) 
(ADDLABEL '$%I54) 
(DSKSETQ $%O54 '%EXP) 
(ADDLABEL '$%O54) 
(DSKSETQ $%I55 '%EXP) 
(ADDLABEL '$%I55) 
(DSKSETQ $%O55 '%EXP) 
(ADDLABEL '$%O55) 
(DSKSETQ $%I56 '((MDEFINE) (($F) $A) ((MEXPT) $A $B))) 
(ADDLABEL '$%I56) 
(DSKSETQ $%O56 '((MDEFINE SIMP) (($F) $A) ((MEXPT) $A $B))) 
(ADDLABEL '$%O56) 
(DSKSETQ $%I57 '(($F) 7.)) 
(ADDLABEL '$%I57) 
(DSKSETQ $%O57 '((MEXPT SIMP) 7. $%PI)) 
(ADDLABEL '$%O57) 
(DSKSETQ $%I58 '((MDEFINE) (($FOO) $X $Y) ((MPLUS) $Y ((MMINUS) $X)))) 
(ADDLABEL '$%I58) 
(DSKSETQ $%O58 '((MDEFINE SIMP) (($FOO) $X $Y) ((MPLUS) $Y ((MMINUS) $X)))) 
(ADDLABEL '$%O58) 
(DSKSETQ $%I59 '((MPROG) ((MSETQ) $A $%E) ((MSETQ) $B 17.))) 
(ADDLABEL '$%I59) 
(DSKSETQ $%O59 '17.) 
(ADDLABEL '$%O59) 
(DSKSETQ $%I60 '(($FOO) $A $B)) 
(ADDLABEL '$%I60) 
(DSKSETQ $%O60 '((MPLUS SIMP) 17. ((MTIMES SIMP) -1. $%E))) 
(ADDLABEL '$%O60) 
(DSKSETQ $%I61 '(($FOO) ((MQUOTE) $A) ((MQUOTE) $B))) 
(ADDLABEL '$%I61) 
(DSKSETQ $%O61 '((MPLUS SIMP) ((MTIMES SIMP) -1. $A) $B)) 
(ADDLABEL '$%O61) 
(DSKSETQ $%I62 '((%FOO) $A $B)) 
(ADDLABEL '$%I62) 
(DSKSETQ $%O62 '((%FOO SIMP) $%E 17.)) 
(ADDLABEL '$%O62) 
(DSKSETQ $%I63 '((MQUOTE) (($FOO) $A $B))) 
(ADDLABEL '$%I63) 
(DSKSETQ $%O63 '(($FOO SIMP) $A $B)) 
(ADDLABEL '$%O63) 
(DSKSETQ $%I64 '(($DIFF) ((%SIN) $X) $X)) 
(ADDLABEL '$%I64) 
(DSKSETQ $%I65 '(($KILL) $X)) 
(ADDLABEL '$%I65) 
(DSKSETQ $%O65 '$DONE) 
(ADDLABEL '$%O65) 
(DSKSETQ $%I66 '$X) 
(ADDLABEL '$%I66) 
(DSKSETQ $%O66 '$X) 
(ADDLABEL '$%O66) 
(DSKSETQ $%I67 '(($DIFF) ((%SIN) $X) $X)) 
(ADDLABEL '$%I67) 
(DSKSETQ $%O67 '((%COS SIMP) $X)) 
(ADDLABEL '$%O67) 
(DSKSETQ $%I68 '((MDEFINE) (($FOO) $X) (($DIFF) ((%SIN) $X) $X))) 
(ADDLABEL '$%I68) 
(DSKSETQ $%O68 '((MDEFINE SIMP) (($FOO) $X) (($DIFF) ((%SIN) $X) $X))) 
(ADDLABEL '$%O68) 
(DSKSETQ $%I69 '(($FOO) ((MQUOTIENT) $%PI 4.))) 
(ADDLABEL '$%I69) 
(DSKSETQ $%I70 '(($FOO) $Y)) 
(ADDLABEL '$%I70) 
(DSKSETQ $%I71 '(($KILL) $Y)) 
(ADDLABEL '$%I71) 
(DSKSETQ $%O71 '$DONE) 
(ADDLABEL '$%O71) 
(DSKSETQ $%I72 '(($FOO) $Y)) 
(ADDLABEL '$%I72) 
(DSKSETQ $%O72 '((%COS SIMP) $Y)) 
(ADDLABEL '$%O72) 
(DSKSETQ $%I73 '(($SAVE) "minimal-maxima.lisp" $ALL)) 
(ADDLABEL '$%I73) 
(DSKSETQ $%O73
         '#A((56.) BASE-CHAR
             . "/Users/yohanlee/Developer/TDD/maxima/minimal-maxima.lisp")) 
(ADDLABEL '$%O73) 
(DSKSETQ $%I74 '((MPROG) ((MSETQ) $A $AA) ((MSETQ) $B $BB) ((MSETQ) $C $CC))) 
(ADDLABEL '$%I74) 
(DSKSETQ $%O74 '$CC) 
(ADDLABEL '$%O74) 
(DSKSETQ $%I75 '((MPROG) ((MSETQ) $AA 11.) ((MSETQ) $BB 22.) ((MSETQ) $CC 33.))) 
(ADDLABEL '$%I75) 
(DSKSETQ $%O75 '33.) 
(ADDLABEL '$%O75) 
(DSKSETQ $%I76 '((MLIST) $A $B $C $AA $BB $CC)) 
(ADDLABEL '$%I76) 
(DSKSETQ $%O76 '((MLIST SIMP) $AA $BB $CC 11. 22. 33.)) 
(ADDLABEL '$%O76) 
(DSKSETQ $%I77 '(($APPLY) $KILL ((MLIST) $A $B $C))) 
(ADDLABEL '$%I77) 
(DSKSETQ $%O77 '$DONE) 
(ADDLABEL '$%O77) 
(DSKSETQ $%I78 '((MLIST) $A $B $C $AA $BB $CC)) 
(ADDLABEL '$%I78) 
(DSKSETQ $%O78 '((MLIST SIMP) $AA $BB $CC $AA $BB $CC)) 
(ADDLABEL '$%O78) 
(DSKSETQ $%I79 '|$v|) 
(ADDLABEL '$%I79) 
(DSKSETQ $%O79 '((MTIMES SIMP) ((RAT SIMP) 4. 3.) $%PI ((MEXPT SIMP) $R 3.))) 
(ADDLABEL '$%O79) 
(DSKSETQ $%I80 '$Y) 
(ADDLABEL '$%I80) 
(DSKSETQ $%O80 '$Y) 
(ADDLABEL '$%O80) 
(DSKSETQ $%I81 '$X) 
(ADDLABEL '$%I81) 
(DSKSETQ $%O81 '$X) 
(ADDLABEL '$%O81) 
(DSKSETQ $%I82 '((MLIST) $A $B)) 
(ADDLABEL '$%I82) 
(DSKSETQ $%O82 '((MLIST SIMP) $AA $BB)) 
(ADDLABEL '$%O82) 
(DSKSETQ $%I83 '(($KILL) $A $B $C)) 
(ADDLABEL '$%I83) 
(DSKSETQ $%O83 '$DONE) 
(ADDLABEL '$%O83) 
(DSKSETQ $%I84 '((MLIST) $A $B $C $AA $BB $CC)) 
(ADDLABEL '$%I84) 
(DSKSETQ $%O84 '((MLIST SIMP) $A $B $C $AA $BB $CC)) 
(ADDLABEL '$%O84) 
(DSKSETQ $%I85 '(($INTEGRATE) ((%SIN) ((MTIMES) $A $X)) $X 0. $%PI)) 
(ADDLABEL '$%I85) 
(DSKSETQ $%O85
         '((MPLUS SIMP) ((MEXPT SIMP RATSIMP) $A -1.)
           ((MTIMES SIMP) -1. ((MEXPT SIMP RATSIMP) $A -1.)
            ((%COS SIMP) ((MTIMES SIMP RATSIMP) $%PI $A))))) 
(ADDLABEL '$%O85) 
(DSKSETQ $%I86
         '((MDEFINE) (($FOO) $X)
           (($INTEGRATE) ((%SIN) ((MTIMES) $A $X)) $X 0. $%PI))) 
(ADDLABEL '$%I86) 
(DSKSETQ $%O86
         '((MDEFINE SIMP) (($FOO) $X)
           (($INTEGRATE) ((%SIN) ((MTIMES) $A $X)) $X 0. $%PI))) 
(ADDLABEL '$%O86) 
(DSKSETQ $%I87
         '(($DEFINE) (($FOO) $X)
           (($INTEGRATE) ((%SIN) ((MTIMES) $A $X)) $X 0. $%PI))) 
(ADDLABEL '$%I87) 
(DSKSETQ $%O87
         '((MDEFINE SIMP) (($FOO) $X)
           ((MPLUS SIMP) ((MEXPT SIMP RATSIMP) $A -1.)
            ((MTIMES SIMP) -1. ((MEXPT SIMP RATSIMP) $A -1.)
             ((%COS SIMP) ((MTIMES SIMP RATSIMP) $%PI $A)))))) 
(ADDLABEL '$%O87) 
(DSKSETQ $%I88 '(($SAVE) "minimal-maxima.lisp" $ALL)) 
(ADDLABEL '$%I88) 
(DSKSETQ $%O88
         '#A((56.) BASE-CHAR
             . "/Users/yohanlee/Developer/TDD/maxima/minimal-maxima.lisp")) 
(ADDLABEL '$%O88) 
(DSKSETQ $%I89
         '((MQUOTE)
           ((MLIST) ((MPLUS) 1. 1.) ((MPLUS) $X $X) ((MTIMES) $X $X)
            ((%SIN) $%PI)))) 
(ADDLABEL '$%I89) 
(DSKSETQ $%O89 '((MLIST SIMP) 2. ((MTIMES SIMP) 2. $X) ((MEXPT SIMP) $X 2.) 0.)) 
(ADDLABEL '$%O89) 
(DSKSETQ $%I90 '((MEXPT) ((MPLUS) $A $B) 2.)) 
(ADDLABEL '$%I90) 
(DSKSETQ $%O90 '((MEXPT SIMP) ((MPLUS SIMP) $A $B) 2.)) 
(ADDLABEL '$%O90) 
(DSKSETQ $%I91 '(($EXPAND) $%)) 
(ADDLABEL '$%I91) 
(DSKSETQ $%O91
         '((MPLUS SIMP) ((MEXPT SIMP) $A 2.) ((MTIMES SIMP) 2. $A $B)
           ((MEXPT SIMP) $B 2.))) 
(ADDLABEL '$%O91) 
(DSKSETQ $%I92 '((MPLUS) ((MQUOTIENT) $A $B) ((MQUOTIENT) $C $B))) 
(ADDLABEL '$%I92) 
(DSKSETQ $%O92
         '((MPLUS SIMP) ((MTIMES SIMP) $A ((MEXPT SIMP) $B -1.))
           ((MTIMES SIMP) ((MEXPT SIMP) $B -1.) $C))) 
(ADDLABEL '$%O92) 
(DSKSETQ $%I93 '(($RATSIMP) $%)) 
(ADDLABEL '$%I93) 
(DSKSETQ $%O93
         '((MTIMES SIMP) ((MEXPT SIMP RATSIMP) $B -1.) ((MPLUS SIMP) $A $C))) 
(ADDLABEL '$%O93) 
(DSKSETQ $%I94 '((%SIN) ((MTIMES) 2. $X))) 
(ADDLABEL '$%I94) 
(DSKSETQ $%O94 '((%SIN SIMP) ((MTIMES SIMP) 2. $X))) 
(ADDLABEL '$%O94) 
(DSKSETQ $%I95 '(($TRIGEXPAND) $%)) 
(ADDLABEL '$%I95) 
(DSKSETQ $%O95 '((MTIMES SIMP) 2. ((%COS SIMP) $X) ((%SIN SIMP) $X))) 
(ADDLABEL '$%O95) 
(DSKSETQ $%I96 '((MTIMES) $A ((%EXP) ((MTIMES) $B $%I)))) 
(ADDLABEL '$%I96) 
(DSKSETQ $%O96 '((MTIMES SIMP) $A ((MEXPT SIMP) $%E ((MTIMES SIMP) $%I $B)))) 
(ADDLABEL '$%O96) 
(DSKSETQ $%I97 '(($DEMOIVRE) $%)) 
(ADDLABEL '$%I97) 
(DSKSETQ $%O97
         '((MTIMES SIMP) $A
           ((MPLUS SIMP) ((%COS SIMP) $B)
            ((MTIMES SIMP) $%I ((%SIN SIMP) $B))))) 
(ADDLABEL '$%O97) 
(DSKSETQ $%I98 '(($APPLY) %SIN ((MLIST) ((MTIMES) $X $%PI)))) 
(ADDLABEL '$%I98) 
(DSKSETQ $%O98 '((%SIN SIMP) ((MTIMES SIMP) $%PI $X))) 
(ADDLABEL '$%O98) 
(DSKSETQ $%I99 '(($APPLY) "+" ((MLIST) $A $B $C $X $Y $Z))) 
(ADDLABEL '$%I99) 
(DSKSETQ $%O99 '((MPLUS SIMP) $A $B $C $X $Y $Z)) 
(ADDLABEL '$%O99) 
(DSKSETQ $%I100 '(($MAP) $FOO ((MLIST) $X $Y $Z))) 
(ADDLABEL '$%I100) 
(DSKSETQ $%O100
         '((MLIST SIMP)
           ((MPLUS SIMP) ((MEXPT SIMP RATSIMP) $A -1.)
            ((MTIMES SIMP) -1. ((MEXPT SIMP RATSIMP) $A -1.)
             ((%COS SIMP) ((MTIMES SIMP RATSIMP) $%PI $A))))
           ((MPLUS SIMP) ((MEXPT SIMP RATSIMP) $A -1.)
            ((MTIMES SIMP) -1. ((MEXPT SIMP RATSIMP) $A -1.)
             ((%COS SIMP) ((MTIMES SIMP RATSIMP) $%PI $A))))
           ((MPLUS SIMP) ((MEXPT SIMP RATSIMP) $A -1.)
            ((MTIMES SIMP) -1. ((MEXPT SIMP RATSIMP) $A -1.)
             ((%COS SIMP) ((MTIMES SIMP RATSIMP) $%PI $A)))))) 
(ADDLABEL '$%O100) 
(DSKSETQ $%I101 '(($MAP) $FOO ((MQUOTE) ((MLIST) $X $Y $Z)))) 
(ADDLABEL '$%I101) 
(DSKSETQ $%O101
         '((MLIST SIMP)
           ((MPLUS SIMP) ((MEXPT SIMP RATSIMP) $A -1.)
            ((MTIMES SIMP) -1. ((MEXPT SIMP RATSIMP) $A -1.)
             ((%COS SIMP) ((MTIMES SIMP RATSIMP) $%PI $A))))
           ((MPLUS SIMP) ((MEXPT SIMP RATSIMP) $A -1.)
            ((MTIMES SIMP) -1. ((MEXPT SIMP RATSIMP) $A -1.)
             ((%COS SIMP) ((MTIMES SIMP RATSIMP) $%PI $A))))
           ((MPLUS SIMP) ((MEXPT SIMP RATSIMP) $A -1.)
            ((MTIMES SIMP) -1. ((MEXPT SIMP RATSIMP) $A -1.)
             ((%COS SIMP) ((MTIMES SIMP RATSIMP) $%PI $A)))))) 
(ADDLABEL '$%O101) 
(DSKSETQ $%I102 '$Z) 
(ADDLABEL '$%I102) 
(DSKSETQ $%O102 '$Z) 
(ADDLABEL '$%O102) 
(DSKSETQ $%I103 '$X) 
(ADDLABEL '$%I103) 
(DSKSETQ $%O103 '$X) 
(ADDLABEL '$%O103) 
(DSKSETQ $%I104 '$Y) 
(ADDLABEL '$%I104) 
(DSKSETQ $%O104 '$Y) 
(ADDLABEL '$%O104) 
(DSKSETQ $%I105
         '(($MAP) $ATOM ((MLIST) $A $B $C ((MPLUS) $A $B) ((MPLUS) $A $B $C)))) 
(ADDLABEL '$%I105) 
(DSKSETQ $%O105 '((MLIST SIMP) T T T NIL NIL)) 
(ADDLABEL '$%O105) 
(DSKSETQ $%I106
         '((MSETQ) $F
           ((LAMBDA) ((MLIST) $X $Y)
            ((MTIMES) ((MPLUS) $X $Y) ((MPLUS) $X ((MMINUS) $Y)))))) 
(ADDLABEL '$%I106) 
(DSKSETQ $%O106
         '((LAMBDA SIMP) ((MLIST) $X $Y)
           ((MTIMES) ((MPLUS) $X $Y) ((MPLUS) $X ((MMINUS) $Y))))) 
(ADDLABEL '$%O106) 
(DSKSETQ $%I107 '(($F) $A $B)) 
(ADDLABEL '$%I107) 
(DSKSETQ $%I108 '(($KILL) $F)) 
(ADDLABEL '$%I108) 
(DSKSETQ $%O108 '$DONE) 
(ADDLABEL '$%O108) 
(DSKSETQ $%I109
         '((MSETQ) $F
           ((LAMBDA) ((MLIST) $X $Y)
            ((MTIMES) ((MPLUS) $X $Y) ((MPLUS) $X ((MMINUS) $Y)))))) 
(ADDLABEL '$%I109) 
(DSKSETQ $%O109
         '((LAMBDA SIMP) ((MLIST) $X $Y)
           ((MTIMES) ((MPLUS) $X $Y) ((MPLUS) $X ((MMINUS) $Y))))) 
(ADDLABEL '$%O109) 
(DSKSETQ $%I110 '(($F) $A $B)) 
(ADDLABEL '$%I110) 
(DSKSETQ $%O110
         '((MTIMES SIMP) ((MPLUS SIMP) $A ((MTIMES SIMP) -1. $B))
           ((MPLUS SIMP) $A $B))) 
(ADDLABEL '$%O110) 
(DSKSETQ $%I111 '(($APPLY) $F ((MLIST) $P $Q))) 
(ADDLABEL '$%I111) 
(DSKSETQ $%O111
         '((MTIMES SIMP) ((MPLUS SIMP) $%PHI ((MTIMES SIMP) -1. $Q))
           ((MPLUS SIMP) $%PHI $Q))) 
(ADDLABEL '$%O111) 
(DSKSETQ $%I112 '(($MAP) $F ((MLIST) 1. 2. 3.) ((MLIST) $A $B $C))) 
(ADDLABEL '$%I112) 
(DSKSETQ $%O112
         '((MLIST SIMP)
           ((MTIMES SIMP) ((MPLUS SIMP) 1. ((MTIMES SIMP) -1. $A))
            ((MPLUS SIMP) 1. $A))
           ((MTIMES SIMP) ((MPLUS SIMP) 2. ((MTIMES SIMP) -1. $B))
            ((MPLUS SIMP) 2. $B))
           ((MTIMES SIMP) ((MPLUS SIMP) 3. ((MTIMES SIMP) -1. $C))
            ((MPLUS SIMP) 3. $C)))) 
(ADDLABEL '$%O112) 
(DSKSETQ $%I113 '(($SAVE) "minimal-maxima.lisp" $ALL)) 
(ADDLABEL '$%I113) 
(DSKSETQ $%O113
         '#A((56.) BASE-CHAR
             . "/Users/yohanlee/Developer/TDD/maxima/minimal-maxima.lisp")) 
(ADDLABEL '$%O113) 
(DSKSETQ $%I114 '((MDEFINE) (($FOO) $X) (($DIFF) ((MEXPT) ((%SIN) $X) 2.) $X))) 
(ADDLABEL '$%I114) 
(DSKSETQ $%O114
         '((MDEFINE SIMP) (($FOO) $X) (($DIFF) ((MEXPT) ((%SIN) $X) 2.) $X))) 
(ADDLABEL '$%O114) 
(DSKSETQ $%I115 '(($FOO) $U)) 
(ADDLABEL '$%I115) 
(DSKSETQ $%O115 '((MTIMES SIMP) 2. ((%COS SIMP) $U) ((%SIN SIMP) $U))) 
(ADDLABEL '$%O115) 
(DSKSETQ $%I116 '(($FOO) $Y)) 
(ADDLABEL '$%I116) 
(DSKSETQ $%O116 '((MTIMES SIMP) 2. ((%COS SIMP) $Y) ((%SIN SIMP) $Y))) 
(ADDLABEL '$%O116) 
(DSKSETQ $%I117 '(($FOO) ((MEXPT) $Y 2.))) 
(ADDLABEL '$%I117) 
(DSKSETQ $%I118 '(($DEFINE) (($FOO) $X) (($DIFF) ((MEXPT) ((%SIN) $X) 2.) $X))) 
(ADDLABEL '$%I118) 
(DSKSETQ $%O118
         '((MDEFINE SIMP) (($FOO) $X)
           ((MTIMES SIMP) 2. ((%COS SIMP) $X) ((%SIN SIMP) $X)))) 
(ADDLABEL '$%O118) 
(DSKSETQ $%I119 '(($FOO) $P)) 
(ADDLABEL '$%I119) 
(DSKSETQ $%O119 '((MTIMES SIMP) 2. ((%COS SIMP) $%PHI) ((%SIN SIMP) $%PHI))) 
(ADDLABEL '$%O119) 
(DSKSETQ $%I120 '(($FOO) $I)) 
(ADDLABEL '$%I120) 
(DSKSETQ $%O120 '((MTIMES SIMP) 2. ((%COS SIMP) $I) ((%SIN SIMP) $I))) 
(ADDLABEL '$%O120) 
(DSKSETQ $%I121 '(($FOO) 1.)) 
(ADDLABEL '$%I121) 
(DSKSETQ $%O121 '((MTIMES SIMP) 2. ((%COS SIMP) 1.) ((%SIN SIMP) 1.))) 
(ADDLABEL '$%O121) 
(DSKSETQ $%I122 '(($FOO) ((MEXPT) $Y 2.))) 
(ADDLABEL '$%I122) 
(DSKSETQ $%O122
         '((MTIMES SIMP) 2. ((%COS SIMP) ((MEXPT SIMP) $Y 2.))
           ((%SIN SIMP) ((MEXPT SIMP) $Y 2.)))) 
(ADDLABEL '$%O122) 
(DSKSETQ $%I123
         '((MSETQ) $EQ_1
           ((MEQUAL) ((MPLUS) ((MTIMES) $A $X) ((MTIMES) $B $Y) $Z) $%PI))) 
(ADDLABEL '$%I123) 
(DSKSETQ $%O123
         '((MEQUAL SIMP)
           ((MPLUS SIMP) ((MTIMES SIMP) $A $X) ((MTIMES SIMP) $B $Y) $Z) $%PI)) 
(ADDLABEL '$%O123) 
(DSKSETQ $%I124
         '((MSETQ) $EQ_2
           ((MEQUAL) ((MPLUS) $Z ((MMINUS) ((MTIMES) 5. $Y)) $X) 0.))) 
(ADDLABEL '$%I124) 
(DSKSETQ $%O124 '((MEQUAL SIMP) ((MPLUS SIMP) $X ((MTIMES SIMP) -5. $Y) $Z) 0.)) 
(ADDLABEL '$%O124) 
(DSKSETQ $%I125 '((MSETQ) $S (($SOLVE) ((MLIST) $EQ_1 $EQ_2) ((MLIST) $X $Z)))) 
(ADDLABEL '$%I125) 
(DSKSETQ $%O125
         '((MLIST SIMP)
           ((MLIST SIMP)
            ((MEQUAL SIMP) $X
             ((MTIMES SIMP) -1. ((MEXPT SIMP) ((MPLUS SIMP) -1. $A) -1.)
              ((MPLUS SIMP) ((MTIMES SIMP RATSIMP) -1. $%PI)
               ((MTIMES SIMP) ((MPLUS SIMP) 5. $B) $Y))))
            ((MEQUAL SIMP) $Z
             ((MTIMES SIMP) ((MEXPT SIMP) ((MPLUS SIMP) -1. $A) -1.)
              ((MPLUS SIMP) ((MTIMES SIMP RATSIMP) -1. $%PI)
               ((MTIMES SIMP) ((MPLUS SIMP) ((MTIMES SIMP RATSIMP) 5. $A) $B)
                $Y))))))) 
(ADDLABEL '$%O125) 
(DSKSETQ $%I126 '(($LENGTH) $S)) 
(ADDLABEL '$%I126) 
(DSKSETQ $%O126 '1.) 
(ADDLABEL '$%O126) 
(DSKSETQ $%I127
         '((MLIST) (($SUBSTITUTE) (($S ARRAY) 1.) $EQ_1)
           (($SUBSTITUTE) (($S ARRAY) 1.) $EQ_2))) 
(ADDLABEL '$%I127) 
(DSKSETQ $%O127
         '((MLIST SIMP)
           ((MEQUAL SIMP)
            ((MPLUS SIMP) ((MTIMES SIMP) $B $Y)
             ((MTIMES SIMP) -1. ((MEXPT SIMP) ((MPLUS SIMP) -1. $A) -1.) $A
              ((MPLUS SIMP) ((MTIMES SIMP RATSIMP) -1. $%PI)
               ((MTIMES SIMP) ((MPLUS SIMP) 5. $B) $Y)))
             ((MTIMES SIMP) ((MEXPT SIMP) ((MPLUS SIMP) -1. $A) -1.)
              ((MPLUS SIMP) ((MTIMES SIMP RATSIMP) -1. $%PI)
               ((MTIMES SIMP) ((MPLUS SIMP) ((MTIMES SIMP RATSIMP) 5. $A) $B)
                $Y))))
            $%PI)
           ((MEQUAL SIMP)
            ((MPLUS SIMP) ((MTIMES SIMP) -5. $Y)
             ((MTIMES SIMP) -1. ((MEXPT SIMP) ((MPLUS SIMP) -1. $A) -1.)
              ((MPLUS SIMP) ((MTIMES SIMP RATSIMP) -1. $%PI)
               ((MTIMES SIMP) ((MPLUS SIMP) 5. $B) $Y)))
             ((MTIMES SIMP) ((MEXPT SIMP) ((MPLUS SIMP) -1. $A) -1.)
              ((MPLUS SIMP) ((MTIMES SIMP RATSIMP) -1. $%PI)
               ((MTIMES SIMP) ((MPLUS SIMP) ((MTIMES SIMP RATSIMP) 5. $A) $B)
                $Y))))
            0.))) 
(ADDLABEL '$%O127) 
(DSKSETQ $%I128 '(($RATSIMP) $%)) 
(ADDLABEL '$%I128) 
(DSKSETQ $%O128 '((MLIST SIMP) ((MEQUAL SIMP) $%PI $%PI) ((MEQUAL SIMP) 0. 0.))) 
(ADDLABEL '$%O128) 
(DSKSETQ $%I129 '(($SAVE) "minimal-maxima.lisp" $ALL)) 
(ADDLABEL '$%I129) 
(DSKSETQ $%O129
         '#A((56.) BASE-CHAR
             . "/Users/yohanlee/Developer/TDD/maxima/minimal-maxima.lisp")) 
(ADDLABEL '$%O129) 
(DSKSETQ $%I130 '(($INTEGRATE) ((MQUOTIENT) 1. ((MPLUS) 1. $X)) $X 0. 1.)) 
(ADDLABEL '$%I130) 
(DSKSETQ $%O130 '((%LOG SIMP) 2.)) 
(ADDLABEL '$%O130) 
(DSKSETQ $%I131
         '(($INTEGRATE) ((MTIMES) ((%EXP) ((MMINUS) $U)) ((%SIN) $U)) $U 0.
           $INF)) 
(ADDLABEL '$%I131) 
(DSKSETQ $%O131 '((RAT SIMP) 1. 2.)) 
(ADDLABEL '$%O131) 
(DSKSETQ $%I132 '(($ASSUME) ((MGREATERP) $A 0.))) 
(ADDLABEL '$%I132) 
(DSKSETQ $%O132 '((MLIST SIMP) ((MGREATERP SIMP) $A 0.))) 
(ADDLABEL '$%O132) 
(DSKSETQ $%I133
         '(($INTEGRATE) ((MTIMES) ((%EXP) ((MMINUS) $U)) ((%SIN) $U)) $U 0. $A)) 
(ADDLABEL '$%I133) 
(DSKSETQ $%O133
         '((MPLUS SIMP) ((RAT SIMP) 1. 2.)
           ((MTIMES SIMP) ((RAT SIMP) -1. 2.)
            ((MEXPT SIMP) $%E ((MTIMES SIMP) -1. $A))
            ((MPLUS SIMP) ((%COS SIMP) $A) ((%SIN SIMP) $A))))) 
(ADDLABEL '$%O133) 
(DSKSETQ $%I134
         '(($INTEGRATE)
           ((MTIMES) ((%EXP) ((MTIMES) ((MMINUS) $A) $U))
            ((%SIN) ((MTIMES) $A $U)))
           $U 0. $A)) 
(ADDLABEL '$%I134) 
(DSKSETQ $%O134
         '((MPLUS SIMP)
           ((MTIMES SIMP) ((RAT SIMP) 1. 2.) ((MEXPT SIMP) $A -1.))
           ((MTIMES SIMP) ((RAT SIMP) -1. 2.) ((MEXPT SIMP) $A -1.)
            ((MEXPT SIMP) $%E ((MTIMES SIMP) -1. ((MEXPT SIMP RATSIMP) $A 2.)))
            ((MPLUS SIMP) ((%COS SIMP) ((MEXPT SIMP RATSIMP) $A 2.))
             ((%SIN SIMP) ((MEXPT SIMP RATSIMP) $A 2.)))))) 
(ADDLABEL '$%O134) 
(DSKSETQ $%I135
         '(($INTEGRATE)
           ((MTIMES) ((%EXP) ((MTIMES) ((MMINUS) $A) $U))
            ((%SIN) ((MTIMES) $A $U)))
           $U 0. $INF)) 
(ADDLABEL '$%I135) 
(DSKSETQ $%O135 '((MTIMES SIMP) ((RAT SIMP) 1. 2.) ((MEXPT SIMP) $A -1.))) 
(ADDLABEL '$%O135) 
(DSKSETQ $%I136 '(($INTEGRATE) ((MQUOTIENT) 1. ((MPLUS) 1. $X)) $X 0. $A)) 
(ADDLABEL '$%I136) 
(DSKSETQ $%O136 '((%LOG SIMP) ((MPLUS SIMP) 1. $A))) 
(ADDLABEL '$%O136) 
(DSKSETQ $%I137 '(($INTEGRATE) ((%EXP) ((%SIN) $T)) $T 0. $%PI)) 
(ADDLABEL '$%I137) 
(DSKSETQ $%O137
         '((%INTEGRATE SIMP) ((MEXPT SIMP) $%E ((%SIN SIMP) $T)) $T 0. $%PI)) 
(ADDLABEL '$%O137) 
(DSKSETQ $%I138
         '((%INTEGRATE) ((MTIMES) ((%EXP) ((MMINUS) $U)) ((%SIN) $U)) $U 0.
           $INF)) 
(ADDLABEL '$%I138) 
(DSKSETQ $%O138
         '((%INTEGRATE SIMP)
           ((MTIMES SIMP) ((MEXPT SIMP) $%E ((MTIMES SIMP) -1. $U))
            ((%SIN SIMP) $U))
           $U 0. $INF)) 
(ADDLABEL '$%O138) 
(DSKSETQ $%I139 '(($SAVE) "minimal-maxima.lisp" $ALL)) 
(ADDLABEL '$%I139) 
(DSKSETQ $%O139
         '#A((56.) BASE-CHAR
             . "/Users/yohanlee/Developer/TDD/maxima/minimal-maxima.lisp")) 
(ADDLABEL '$%O139) 
(DSKSETQ $%I140 '(($DIFF) ((%SIN) ((MTIMES) $Y $X)))) 
(ADDLABEL '$%I140) 
(DSKSETQ $%O140
         '((MPLUS SIMP)
           ((MTIMES SIMP) $Y ((%COS SIMP) ((MTIMES SIMP) $X $Y))
            ((%DEL SIMP) $X))
           ((MTIMES SIMP) $X ((%COS SIMP) ((MTIMES SIMP) $X $Y))
            ((%DEL SIMP) $Y)))) 
(ADDLABEL '$%O140) 
(DSKSETQ $%I141 '(($DIFF) ((%SIN) ((MTIMES) $Y $X)) $X)) 
(ADDLABEL '$%I141) 
(DSKSETQ $%O141 '((MTIMES SIMP) $Y ((%COS SIMP) ((MTIMES SIMP) $X $Y)))) 
(ADDLABEL '$%O141) 
(DSKSETQ $%I142 '(($DIFF) ((%SIN) ((MTIMES) $Y $X)) $Y)) 
(ADDLABEL '$%I142) 
(DSKSETQ $%O142 '((MTIMES SIMP) $X ((%COS SIMP) ((MTIMES SIMP) $X $Y)))) 
(ADDLABEL '$%O142) 
(DSKSETQ $%I143 '(($DIFF) ((%SIN) ((MTIMES) $Y $X)) $X 2.)) 
(ADDLABEL '$%I143) 
(DSKSETQ $%O143
         '((MTIMES SIMP) -1. ((MEXPT SIMP) $Y 2.)
           ((%SIN SIMP) ((MTIMES SIMP) $X $Y)))) 
(ADDLABEL '$%O143) 
(DSKSETQ $%I144 '((%DERIVATIVE) ((%SIN) ((MTIMES) $Y $X)) $X 2.)) 
(ADDLABEL '$%I144) 
(DSKSETQ $%O144 '((%DERIVATIVE SIMP) ((%SIN SIMP) ((MTIMES SIMP) $X $Y)) $X 2.)) 
(ADDLABEL '$%O144) 
(DSKSETQ $%I145
         '(($PLOT2D) ((MTIMES) ((%EXP) ((MMINUS) $U)) ((%SIN) $U))
           ((MLIST) $U 0. ((MTIMES) 2. $%PI)))) 
(ADDLABEL '$%I145) 
(DSKSETQ $%O145 'NIL) 
(ADDLABEL '$%O145) 
(DSKSETQ $%I146
         '(($PLOT2D)
           ((MLIST) ((%EXP) ((MMINUS) $U))
            ((MTIMES) ((%EXP) ((MMINUS) $U)) ((%SIN) $U)))
           ((MLIST) $U 0. ((MTIMES) 2. $%PI)))) 
(ADDLABEL '$%I146) 
(DSKSETQ $%O146 'NIL) 
(ADDLABEL '$%O146) 
(DSKSETQ $%I147 '((MSETQ) $XX (($MAKELIST) ((MQUOTIENT) $I 2.5) $I 1. 10.))) 
(ADDLABEL '$%I147) 
(DSKSETQ $%O147 '((MLIST SIMP) 0.4 0.8 1.2 1.6 2.0 2.4 2.8 3.2 3.6 4.0)) 
(ADDLABEL '$%O147) 
(DSKSETQ $%I148
         '((MSETQ) $YY
           (($MAP)
            ((LAMBDA) ((MLIST) $X)
             ((MTIMES) ((%EXP) ((MMINUS) $X)) ((%SIN) $X)))
            $XX))) 
(ADDLABEL '$%I148) 
(DSKSETQ $%O148
         '((MLIST SIMP) 0.261034921143457 0.322328869227062 0.2807247779692679
           0.20181042993345175 0.12306002480577674 0.06127663726195732
           0.02037065038968651 -0.0023794587414574246 -0.012091305769841415
           -0.013861321214152955)) 
(ADDLABEL '$%O148) 
(DSKSETQ $%I149 '(($PLOT2D) ((MLIST) $DISCRETE $XX $YY))) 
(ADDLABEL '$%I149) 
(DSKSETQ $%O149 'NIL) 
(ADDLABEL '$%O149) 
(DSKSETQ $%I150
         '(($PLOT2D) ((MLIST) $DISCRETE $XX $YY)
           ((MLIST) $GNUPLOT_CURVE_STYLES ((MLIST) "with points")))) 
(ADDLABEL '$%I150) 
(DSKSETQ $%I151
         '(($PLOT2D) ((MLIST) $DISCRETE $XX $YY)
           ((MLIST) $GNUPLOT_CURVE_STYLES "with points"))) 
(ADDLABEL '$%I151) 
(DSKSETQ $%O151 'NIL) 
(ADDLABEL '$%O151) 
(DSKSETQ $%I152 '(($SAVE) "minimal-maxima.lisp" $ALL)) 
(ADDLABEL '$%I152) 
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
(DSKSETQ $E '5.) 
(ADD2LNC '$E $VALUES) 
(DSKSETQ $P '$%PHI) 
(ADD2LNC '$P $VALUES) 
(DSKSETQ $F
         '((LAMBDA SIMP) ((MLIST) $X $Y)
           ((MTIMES) ((MPLUS) $X $Y) ((MPLUS) $X ((MMINUS) $Y))))) 
(ADD2LNC '$F $VALUES) 
(DSKSETQ $EQ_1
         '((MEQUAL SIMP)
           ((MPLUS SIMP) ((MTIMES SIMP) $A $X) ((MTIMES SIMP) $B $Y) $Z) $%PI)) 
(ADD2LNC '$EQ_1 $VALUES) 
(DSKSETQ $EQ_2 '((MEQUAL SIMP) ((MPLUS SIMP) $X ((MTIMES SIMP) -5. $Y) $Z) 0.)) 
(ADD2LNC '$EQ_2 $VALUES) 
(DSKSETQ $S
         '((MLIST SIMP)
           ((MLIST SIMP)
            ((MEQUAL SIMP) $X
             ((MTIMES SIMP) -1. ((MEXPT SIMP) ((MPLUS SIMP) -1. $A) -1.)
              ((MPLUS SIMP) ((MTIMES SIMP RATSIMP) -1. $%PI)
               ((MTIMES SIMP) ((MPLUS SIMP) 5. $B) $Y))))
            ((MEQUAL SIMP) $Z
             ((MTIMES SIMP) ((MEXPT SIMP) ((MPLUS SIMP) -1. $A) -1.)
              ((MPLUS SIMP) ((MTIMES SIMP RATSIMP) -1. $%PI)
               ((MTIMES SIMP) ((MPLUS SIMP) ((MTIMES SIMP RATSIMP) 5. $A) $B)
                $Y))))))) 
(ADD2LNC '$S $VALUES) 
(DSKSETQ $NEXTLAYERFACTOR 'NIL) 
(ADD2LNC '$NEXTLAYERFACTOR $VALUES) 
(DEFPROP $NEXTLAYERFACTOR ASSIGN-MODE-CHECK ASSIGN) 
(ADD2LNC '$NEXTLAYERFACTOR $PROPS) 
(DEFPROP $NEXTLAYERFACTOR $BOOLEAN MODE) 
(ADD2LNC '$NEXTLAYERFACTOR $PROPS) 
(DSKSETQ $FACSUM_COMBINE 'T) 
(ADD2LNC '$FACSUM_COMBINE $VALUES) 
(DEFPROP $FACSUM_COMBINE ASSIGN-MODE-CHECK ASSIGN) 
(ADD2LNC '$FACSUM_COMBINE $PROPS) 
(DEFPROP $FACSUM_COMBINE $BOOLEAN MODE) 
(ADD2LNC '$FACSUM_COMBINE $PROPS) 
(DSKSETQ $XX '((MLIST SIMP) 0.4 0.8 1.2 1.6 2.0 2.4 2.8 3.2 3.6 4.0)) 
(ADD2LNC '$XX $VALUES) 
(DSKSETQ $YY
         '((MLIST SIMP) 0.261034921143457 0.322328869227062 0.2807247779692679
           0.20181042993345175 0.12306002480577674 0.06127663726195732
           0.02037065038968651 -0.0023794587414574246 -0.012091305769841415
           -0.013861321214152955)) 
(ADD2LNC '$YY $VALUES) 
(MDEFPROP $ADD ((LAMBDA) ((MLIST) $P $Q) ((MPLUS) $P $Q)) MEXPR) 
(ADD2LNC '(($ADD) $P $Q) $FUNCTIONS) 
(DEFPROP $FOO %FOO VERB) 
(MDEFPROP $FOO
          ((LAMBDA) ((MLIST) $X)
           ((MTIMES SIMP) 2. ((%COS SIMP) $X) ((%SIN SIMP) $X)))
          MEXPR) 
(ADD2LNC '(($FOO) $X) $FUNCTIONS) 
(DEFPROP %FOO $FOO NOUN) 
(MDEFPROP $NULLLISTP
          ((LAMBDA) ((MLIST) %EXP)
           (($IS
             (63.
              #A((82.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
              SRC $NULLLISTP 62.))
            ((MEQUAL
              (63.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $NULLLISTP 62.))
             %EXP
             ((MLIST
               (63.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $NULLLISTP 62.))))))
          MEXPR) 
(ADD2LNC '(($NULLLISTP) %EXP) $FUNCTIONS) 
(MDEFPROP $ZEROLISTP
          ((LAMBDA) ((MLIST) $LIST)
           (($CATCH
             (66.
              #A((82.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
              SRC $ZEROLISTP 65.))
            ((MDOIN
              (66.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $ZEROLISTP 65.))
             %EXP $LIST NIL NIL NIL NIL
             ((MCOND
               (66.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $ZEROLISTP 65.))
              ((MNOTEQUAL
                (66.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $ZEROLISTP 65.))
               %EXP 0.)
              (($THROW
                (66.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $ZEROLISTP 65.))
               NIL)
              T $FALSE))
            T))
          MEXPR) 
(ADD2LNC '(($ZEROLISTP) $LIST) $FUNCTIONS) 
(MDEFPROP $FREEOFL
          ((LAMBDA) ((MLIST) $VARL %EXP)
           (($CATCH
             (69.
              #A((82.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
              SRC $FREEOFL 68.))
            ((MDOIN
              (69.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $FREEOFL 68.))
             $VAR $VARL NIL NIL NIL NIL
             ((MCOND
               (69.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $FREEOFL 68.))
              ((MNOT
                (69.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $FREEOFL 68.))
               (($FREEOF
                 (69.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $FREEOFL 68.))
                $VAR %EXP))
              (($THROW
                (69.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $FREEOFL 68.))
               NIL)
              T $FALSE))
            T))
          MEXPR) 
(ADD2LNC '(($FREEOFL) $VARL %EXP) $FUNCTIONS) 
(MDEFPROP $ORPARTITION
          ((LAMBDA) ((MLIST) %EXP $OP $VAR)
           ((MCOND
             (80.
              #A((82.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
              SRC $ORPARTITION 79.))
            ((MAND
              (80.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $ORPARTITION 79.))
             ((MNOT
               (80.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $ORPARTITION 79.))
              (($ATOM
                (80.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $ORPARTITION 79.))
               %EXP))
             ((MEQUAL
               (80.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $ORPARTITION 79.))
              (($INPART
                (80.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $ORPARTITION 79.))
               %EXP 0.)
              $OP))
            (($PARTITION
              (81.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $ORPARTITION 79.))
             %EXP $VAR)
            T
            ((MCOND
              (82.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $ORPARTITION 79.))
             (($FREEOF
               (82.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $ORPARTITION 79.))
              $VAR %EXP)
             ((MLIST
               (83.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $ORPARTITION 79.))
              %EXP
              (($APPLY
                (83.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $ORPARTITION 79.))
               $OP
               ((MLIST
                 (83.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $ORPARTITION 79.)))))
             T
             ((MLIST
               (84.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $ORPARTITION 79.))
              (($APPLY
                (84.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $ORPARTITION 79.))
               $OP
               ((MLIST
                 (84.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $ORPARTITION 79.))))
              %EXP))))
          MEXPR) 
(ADD2LNC '(($ORPARTITION) %EXP $OP $VAR) $FUNCTIONS) 
(MDEFPROP $ORPARTITIONL
          ((LAMBDA) ((MLIST) %EXP $OP $VARL)
           ((MPROG
             (89.
              #A((82.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
              SRC $ORPARTITIONL 88.))
            ((MLIST
              (89.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $ORPARTITIONL 88.))
             $FREE $NOTFREE $PARTIT)
            ((MSETQ
              (90.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $ORPARTITIONL 88.))
             $FREE %EXP)
            ((MSETQ
              (91.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $ORPARTITIONL 88.))
             $NOTFREE
             (($APPLY
               (91.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $ORPARTITIONL 88.))
              $OP
              ((MLIST
                (91.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $ORPARTITIONL 88.)))))
            ((MDOIN
              (92.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $ORPARTITIONL 88.))
             $VAR $VARL NIL NIL NIL NIL
             ((MPROGN
               (93.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $ORPARTITIONL 88.))
              ((MSETQ
                (93.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $ORPARTITIONL 88.))
               $PARTIT
               (($ORPARTITION
                 (93.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $ORPARTITIONL 88.))
                $FREE $OP $VAR))
              ((MSETQ
                (94.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $ORPARTITIONL 88.))
               $FREE
               (($FIRST
                 (94.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $ORPARTITIONL 88.))
                $PARTIT))
              ((MSETQ
                (95.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $ORPARTITIONL 88.))
               $NOTFREE
               ((MCOND
                 (95.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $ORPARTITIONL 88.))
                ((MEQUAL
                  (95.
                   #A((82.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                   SRC $ORPARTITIONL 88.))
                 $OP "[")
                (($APPEND
                  (96.
                   #A((82.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                   SRC $ORPARTITIONL 88.))
                 $NOTFREE
                 (($LAST
                   (96.
                    #A((82.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                    SRC $ORPARTITIONL 88.))
                  $PARTIT))
                T
                (($APPLY
                  (97.
                   #A((82.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                   SRC $ORPARTITIONL 88.))
                 $OP
                 ((MLIST
                   (97.
                    #A((82.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                    SRC $ORPARTITIONL 88.))
                  $NOTFREE
                  (($LAST
                    (97.
                     #A((82.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                     SRC $ORPARTITIONL 88.))
                   $PARTIT)))))))
            ((MLIST
              (98.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $ORPARTITIONL 88.))
             $FREE $NOTFREE)))
          MEXPR) 
(ADD2LNC '(($ORPARTITIONL) %EXP $OP $VARL) $FUNCTIONS) 
(MDEFPROP $ORPARTITIONLIST
          ((LAMBDA)
           ((MLIST) $LIST $OP
            ((MLIST
              (100.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $ORPARTITIONLIST 100.))
             $VARS))
           ((MPROG
             (101.
              #A((82.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
              SRC $ORPARTITIONLIST 100.))
            ((MLIST
              (101.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $ORPARTITIONLIST 100.))
             ((MSETQ
               (101.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $ORPARTITIONLIST 100.))
              $PARTITL
              (($MAP
                (101.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $ORPARTITIONLIST 100.))
               ((LAMBDA
                    (101.
                     #A((82.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                     SRC $ORPARTITIONLIST 100.))
                ((MLIST
                  (101.
                   #A((82.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                   SRC $ORPARTITIONLIST 100.))
                 %EXP)
                (($ORPARTITIONL
                  (101.
                   #A((82.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                   SRC $ORPARTITIONLIST 100.))
                 %EXP $OP $VARS))
               $LIST)))
            ((MLIST
              (102.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $ORPARTITIONLIST 100.))
             (($MAP
               (102.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $ORPARTITIONLIST 100.))
              ((MQUOTE
                (102.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $ORPARTITIONLIST 100.))
               $FIRST)
              $PARTITL)
             (($MAP
               (102.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $ORPARTITIONLIST 100.))
              ((MQUOTE
                (102.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $ORPARTITIONLIST 100.))
               $LAST)
              $PARTITL))))
          MEXPR) 
(ADD2LNC
 '(($ORPARTITIONLIST) $LIST $OP
   ((MLIST
     (100.
      #A((82.) BASE-CHAR
         . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
      SRC $ORPARTITIONLIST 100.))
    $VARS))
 $FUNCTIONS) 
(MDEFPROP $ORPARTITIONLIST T MLEXPRP) 
(MDEFPROP $LDELETE
          ((LAMBDA) ((MLIST) $VARL %EXP)
           ((MPROGN
             (105.
              #A((82.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
              SRC $LDELETE 104.))
            ((MDOIN
              (105.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $LDELETE 104.))
             $VAR $VARL NIL NIL NIL NIL
             ((MSETQ
               (105.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $LDELETE 104.))
              %EXP
              (($DELETE
                (105.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $LDELETE 104.))
               $VAR %EXP)))
            %EXP))
          MEXPR) 
(ADD2LNC '(($LDELETE) $VARL %EXP) $FUNCTIONS) 
(MDEFPROP $LISTTOSUM
          ((LAMBDA) ((MLIST) $LIST)
           (($APPLY
             (108.
              #A((82.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
              SRC $LISTTOSUM 107.))
            "+" $LIST))
          MEXPR) 
(ADD2LNC '(($LISTTOSUM) $LIST) $FUNCTIONS) 
(MDEFPROP $LISTTOPROD
          ((LAMBDA) ((MLIST) $LIST)
           (($APPLY
             (111.
              #A((82.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
              SRC $LISTTOPROD 110.))
            "*" $LIST))
          MEXPR) 
(ADD2LNC '(($LISTTOPROD) $LIST) $FUNCTIONS) 
(MDEFPROP $INTERSECT_LIST
          ((LAMBDA) ((MLIST) $EXP1 $EXP2)
           ((MPROGN
             (117.
              #A((82.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
              SRC $INTERSECT_LIST 116.))
            ((MCOND
              (117.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $INTERSECT_LIST 116.))
             (($ATOM
               (117.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $INTERSECT_LIST 116.))
              $EXP1)
             (($ERROR
               (118.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $INTERSECT_LIST 116.))
              (($CONCAT
                (118.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $INTERSECT_LIST 116.))
               "argument value `" $EXP1 "' to `intersect_list' was atomic"))
             T $FALSE)
            ((MCOND
              (119.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $INTERSECT_LIST 116.))
             (($ATOM
               (119.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $INTERSECT_LIST 116.))
              $EXP2)
             (($ERROR
               (120.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $INTERSECT_LIST 116.))
              (($CONCAT
                (120.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $INTERSECT_LIST 116.))
               "argument value `" $EXP2 "' to `intersect_list' was atomic"))
             T $FALSE)
            ((MPROG
              (121.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $INTERSECT_LIST 116.))
             ((MLIST
               (121.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $INTERSECT_LIST 116.))
              ((MSETQ
                (121.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $INTERSECT_LIST 116.))
               $OP
               (($INPART
                 (121.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $INTERSECT_LIST 116.))
                $EXP1 0.)))
             ((MCOND
               (122.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $INTERSECT_LIST 116.))
              ((MNOTEQUAL
                (122.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $INTERSECT_LIST 116.))
               $OP
               (($INPART
                 (122.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $INTERSECT_LIST 116.))
                $EXP2 0.))
              (($ERROR
                (123.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $INTERSECT_LIST 116.))
               "Arguments to `intersect_list' are not compatible.")
              T $FALSE)
             ((MPROG
               (124.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $INTERSECT_LIST 116.))
              ((MLIST
                (124.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $INTERSECT_LIST 116.))
               ((MSETQ
                 (124.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $INTERSECT_LIST 116.))
                $INFLAG T)
               ((MSETQ
                 (124.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $INTERSECT_LIST 116.))
                $CAP
                ((MLIST
                  (124.
                   #A((82.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                   SRC $INTERSECT_LIST 116.)))))
              ((MDOIN
                (125.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $INTERSECT_LIST 116.))
               $TERM $EXP1 NIL NIL NIL NIL
               ((MCOND
                 (126.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $INTERSECT_LIST 116.))
                (($MEMBER
                  (126.
                   #A((82.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                   SRC $INTERSECT_LIST 116.))
                 $TERM $EXP2)
                ((MSETQ
                  (127.
                   #A((82.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                   SRC $INTERSECT_LIST 116.))
                 $CAP
                 (($ENDCONS
                   (127.
                    #A((82.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                    SRC $INTERSECT_LIST 116.))
                  $TERM $CAP))
                T $FALSE))
              (($APPLY
                (128.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $INTERSECT_LIST 116.))
               $OP $CAP)))))
          MEXPR) 
(ADD2LNC '(($INTERSECT_LIST) $EXP1 $EXP2) $FUNCTIONS) 
(MDEFPROP $SETLIST
          ((LAMBDA) ((MLIST) $LST $L1 $L2)
           ((MPROGN
             (131.
              #A((82.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
              SRC $SETLIST 130.))
            ((MSET
              (131.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $SETLIST 130.))
             $L1
             (($FIRST
               (131.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $SETLIST 130.))
              $LST))
            ((MSET
              (131.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $SETLIST 130.))
             $L2
             (($LAST
               (131.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $SETLIST 130.))
              $LST))))
          MEXPR) 
(ADD2LNC '(($SETLIST) $LST $L1 $L2) $FUNCTIONS) 
(MDEFPROP $NONUMFACTOR
          ((LAMBDA) ((MLIST) %EXP)
           ((MCOND
             (134.
              #A((82.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
              SRC $NONUMFACTOR 133.))
            (($NUMBERP
              (134.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $NONUMFACTOR 133.))
             %EXP)
            %EXP T
            (($FACTOR
              (136.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $NONUMFACTOR 133.))
             %EXP)))
          MEXPR) 
(ADD2LNC '(($NONUMFACTOR) %EXP) $FUNCTIONS) 
(MDEFPROP $NONUMFACTOR_ALT
          ((LAMBDA) ((MLIST) %EXP)
           ((MPROG
             (144.
              #A((82.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
              SRC $NONUMFACTOR_ALT 143.))
            ((MLIST
              (144.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $NONUMFACTOR_ALT 143.))
             ((MSETQ
               (144.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $NONUMFACTOR_ALT 143.))
              $DUM
              (($NONUMFACTOR
                (144.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $NONUMFACTOR_ALT 143.))
               %EXP)))
            ((MCOND
              (145.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $NONUMFACTOR_ALT 143.))
             ((MOR
               (145.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $NONUMFACTOR_ALT 143.))
              (($ATOM
                (145.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $NONUMFACTOR_ALT 143.))
               $DUM)
              ((MEQUAL
                (145.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $NONUMFACTOR_ALT 143.))
               (($INPART
                 (145.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $NONUMFACTOR_ALT 143.))
                $DUM 0.)
               "+"))
             %EXP T $DUM)))
          MEXPR) 
(ADD2LNC '(($NONUMFACTOR_ALT) %EXP) $FUNCTIONS) 
(MDEFPROP $OPMAP
          ((LAMBDA) ((MLIST) %EXP $LST)
           ((MPROG
             (170.
              #A((82.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
              SRC $OPMAP 170.))
            ((MLIST
              (170.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $OPMAP 170.))
             ((MSETQ
               (170.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $OPMAP 170.))
              $OP_FCN_LIST $LST)
             $E_OP $X
             ((MSETQ
               (170.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $OPMAP 170.))
              $FUN NIL)
             ((MSETQ
               (170.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $OPMAP 170.))
              $INFLAG T))
            ((MCOND
              (171.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $OPMAP 170.))
             (($MAPATOM
               (171.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $OPMAP 170.))
              %EXP)
             %EXP T
             ((MPROGN
               (172.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $OPMAP 170.))
              ((MSETQ
                (173.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $OPMAP 170.))
               $E_OP
               (($OP
                 (173.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $OPMAP 170.))
                %EXP))
              ((MDO
                (174.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $OPMAP 170.))
               NIL NIL NIL NIL NIL
               ((MNOT
                 (174.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $OPMAP 170.))
                ((MNOTEQUAL
                  (174.
                   #A((82.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                   SRC $OPMAP 170.))
                 $LST
                 ((MLIST
                   (174.
                    #A((82.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                    SRC $OPMAP 170.)))))
               ((MPROGN
                 (174.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $OPMAP 170.))
                ((MSETQ
                  (175.
                   #A((82.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                   SRC $OPMAP 170.))
                 $X
                 (($FIRST
                   (175.
                    #A((82.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                    SRC $OPMAP 170.))
                  $LST))
                ((MSETQ
                  (176.
                   #A((82.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                   SRC $OPMAP 170.))
                 $LST
                 (($REST
                   (176.
                    #A((82.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                    SRC $OPMAP 170.))
                  $LST))
                ((MCOND
                  (177.
                   #A((82.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                   SRC $OPMAP 170.))
                 ((MAND
                   (177.
                    #A((82.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                    SRC $OPMAP 170.))
                  ((MEQUAL
                    (177.
                     #A((82.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                     SRC $OPMAP 170.))
                   $X $E_OP)
                  ((MNOTEQUAL
                    (177.
                     #A((82.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                     SRC $OPMAP 170.))
                   $LST
                   ((MLIST
                     (177.
                      #A((82.) BASE-CHAR
                         . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                      SRC $OPMAP 170.)))))
                 ((MPROGN
                   (177.
                    #A((82.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                    SRC $OPMAP 170.))
                  ((MSETQ
                    (178.
                     #A((82.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                     SRC $OPMAP 170.))
                   $FUN
                   (($FIRST
                     (178.
                      #A((82.) BASE-CHAR
                         . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                      SRC $OPMAP 170.))
                    $LST))
                  ((MSETQ
                    (179.
                     #A((82.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                     SRC $OPMAP 170.))
                   $LST
                   ((MLIST
                     (179.
                      #A((82.) BASE-CHAR
                         . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                      SRC $OPMAP 170.)))))
                 T $FALSE)))
              ((MCOND
                (180.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $OPMAP 170.))
               ((MEQUAL
                 (180.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $OPMAP 170.))
                $FUN NIL)
               %EXP T
               (($APPLY
                 (180.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $OPMAP 170.))
                $FUN
                ((MLIST
                  (180.
                   #A((82.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                   SRC $OPMAP 170.))
                 %EXP)))))))
          MEXPR) 
(ADD2LNC '(($OPMAP) %EXP $LST) $FUNCTIONS) 
(MDEFPROP $IFLOPMAP
          ((LAMBDA) ((MLIST) $OP $FUN %EXP)
           ((MCOND
             (183.
              #A((82.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
              SRC $IFLOPMAP 182.))
            ((MEQUAL
              (183.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $IFLOPMAP 182.))
             $OP "*")
            (($GENUT_PRODMAP
              (184.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $IFLOPMAP 182.))
             $FUN %EXP)
            T
            ((MCOND
              (185.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $IFLOPMAP 182.))
             (($ATOM
               (185.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $IFLOPMAP 182.))
              %EXP)
             %EXP T
             ((MCOND
               (187.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $IFLOPMAP 182.))
              ((MEQUAL
                (187.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $IFLOPMAP 182.))
               (($INPART
                 (187.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $IFLOPMAP 182.))
                %EXP 0.)
               $OP)
              (($MAP
                (188.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $IFLOPMAP 182.))
               $FUN %EXP)
              T
              (($APPLY
                (189.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $IFLOPMAP 182.))
               $FUN
               ((MLIST
                 (189.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $IFLOPMAP 182.))
                %EXP))))))
          MEXPR) 
(ADD2LNC '(($IFLOPMAP) $OP $FUN %EXP) $FUNCTIONS) 
(MDEFPROP $GENUT_PRODMAP
          ((LAMBDA) ((MLIST) $FUN %EXP)
           ((MCOND
             (192.
              #A((82.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
              SRC $GENUT_PRODMAP 191.))
            (($ATOM
              (192.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $GENUT_PRODMAP 191.))
             %EXP)
            %EXP T
            ((MPROG
              (194.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $GENUT_PRODMAP 191.))
             ((MLIST
               (194.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $GENUT_PRODMAP 191.))
              ((MSETQ
                (194.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $GENUT_PRODMAP 191.))
               $MOP
               (($INPART
                 (194.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $GENUT_PRODMAP 191.))
                %EXP 0.)))
             ((MCOND
               (195.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $GENUT_PRODMAP 191.))
              ((MEQUAL
                (195.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $GENUT_PRODMAP 191.))
               $MOP "*")
              (($MAP
                (196.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $GENUT_PRODMAP 191.))
               ((LAMBDA
                    (196.
                     #A((82.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                     SRC $GENUT_PRODMAP 191.))
                ((MLIST
                  (196.
                   #A((82.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                   SRC $GENUT_PRODMAP 191.))
                 %EXP)
                (($GENUT_PRODMAP
                  (196.
                   #A((82.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                   SRC $GENUT_PRODMAP 191.))
                 $FUN %EXP))
               %EXP)
              T
              ((MCOND
                (197.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $GENUT_PRODMAP 191.))
               ((MAND
                 (197.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $GENUT_PRODMAP 191.))
                ((MEQUAL
                  (197.
                   #A((82.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                   SRC $GENUT_PRODMAP 191.))
                 $MOP "^")
                ((MEQUAL
                  (197.
                   #A((82.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                   SRC $GENUT_PRODMAP 191.))
                 (($ASKINTEGER
                   (197.
                    #A((82.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                    SRC $GENUT_PRODMAP 191.))
                  (($INPART
                    (197.
                     #A((82.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                     SRC $GENUT_PRODMAP 191.))
                   %EXP 2.))
                 ((MQUOTE
                   (198.
                    #A((82.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                    SRC $GENUT_PRODMAP 191.))
                  $YES)))
               (($SUBSTINPART
                 (198.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $GENUT_PRODMAP 191.))
                (($GENUT_PRODMAP
                  (198.
                   #A((82.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                   SRC $GENUT_PRODMAP 191.))
                 $FUN
                 (($INPART
                   (198.
                    #A((82.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                    SRC $GENUT_PRODMAP 191.))
                  %EXP 1.))
                %EXP 1.)
               T
               (($APPLY
                 (199.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $GENUT_PRODMAP 191.))
                $FUN
                ((MLIST
                  (199.
                   #A((82.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                   SRC $GENUT_PRODMAP 191.))
                 %EXP)))))))
          MEXPR) 
(ADD2LNC '(($GENUT_PRODMAP) $FUN %EXP) $FUNCTIONS) 
(MDEFPROP $LISTOFOPS_NONRAT
          ((LAMBDA)
           ((MLIST) %EXP
            ((MLIST
              (204.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $LISTOFOPS_NONRAT 204.))
             $OPL))
           (($LISTOFOPS_NONRATL
             (205.
              #A((82.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
              SRC $LISTOFOPS_NONRAT 204.))
            %EXP $OPL
            ((MLIST
              (205.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $LISTOFOPS_NONRAT 204.)))))
          MEXPR) 
(ADD2LNC
 '(($LISTOFOPS_NONRAT) %EXP
   ((MLIST
     (204.
      #A((82.) BASE-CHAR
         . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
      SRC $LISTOFOPS_NONRAT 204.))
    $OPL))
 $FUNCTIONS) 
(MDEFPROP $LISTOFOPS_NONRAT T MLEXPRP) 
(MDEFPROP $LISTOFOPS_NONRATL
          ((LAMBDA) ((MLIST) %EXP $OPL $LST)
           ((MPROG
             (208.
              #A((82.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
              SRC $LISTOFOPS_NONRATL 207.))
            ((MCOND
              (208.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $LISTOFOPS_NONRATL 207.))
             (($ATOM
               (208.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $LISTOFOPS_NONRATL 207.))
              %EXP)
             ((MRETURN
               (208.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $LISTOFOPS_NONRATL 207.))
              $LST)
             T $FALSE)
            ((MCOND
              (209.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $LISTOFOPS_NONRATL 207.))
             (($MEMBER
               (209.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $LISTOFOPS_NONRATL 207.))
              (($INPART
                (209.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $LISTOFOPS_NONRATL 207.))
               %EXP 0.)
              $OPL)
             ((MRETURN
               (210.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $LISTOFOPS_NONRATL 207.))
              (($CONS
                (210.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $LISTOFOPS_NONRATL 207.))
               %EXP $LST))
             T
             ((MDOIN
               (211.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $LISTOFOPS_NONRATL 207.))
              $EXPDUM %EXP NIL NIL NIL NIL
              ((MSETQ
                (212.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $LISTOFOPS_NONRATL 207.))
               $LST
               (($LISTOFOPS_NONRATL
                 (212.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $LISTOFOPS_NONRATL 207.))
                $EXPDUM $OPL $LST))))
            $LST))
          MEXPR) 
(ADD2LNC '(($LISTOFOPS_NONRATL) %EXP $OPL $LST) $FUNCTIONS) 
(MDEFPROP $EXPLICITFACTOR
          ((LAMBDA) ((MLIST) $EXPL)
           ((MPROG
             (220.
              #A((82.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
              SRC $EXPLICITFACTOR 219.))
            ((MLIST
              (220.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $EXPLICITFACTOR 219.))
             ((MSETQ
               (220.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $EXPLICITFACTOR 219.))
              $VARS
              (($MAP
                (220.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $EXPLICITFACTOR 219.))
               ((LAMBDA
                    (220.
                     #A((82.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                     SRC $EXPLICITFACTOR 219.))
                ((MLIST
                  (220.
                   #A((82.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                   SRC $EXPLICITFACTOR 219.))
                 $DUM)
                ((GENSYM
                  (220.
                   #A((82.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                   SRC $EXPLICITFACTOR 219.))))
               $EXPL))
             $COMMON $OTHER)
            (($SETLIST
              (221.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $EXPLICITFACTOR 219.))
             (($ORPARTITIONL
               (221.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $EXPLICITFACTOR 219.))
              (($FACTOR
                (221.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $EXPLICITFACTOR 219.))
               ((MNCTIMES
                 (221.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $EXPLICITFACTOR 219.))
                $EXPL $VARS))
              "*" $VARS)
             ((MQUOTE
               (221.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $EXPLICITFACTOR 219.))
              $COMMON)
             ((MQUOTE
               (221.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $EXPLICITFACTOR 219.))
              $OTHER))
            ((MLIST
              (222.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $EXPLICITFACTOR 219.))
             $COMMON
             (($MAP
               (222.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $EXPLICITFACTOR 219.))
              ((LAMBDA
                   (222.
                    #A((82.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                    SRC $EXPLICITFACTOR 219.))
               ((MLIST
                 (222.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $EXPLICITFACTOR 219.))
                $VAR)
               (($COEFF
                 (222.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $EXPLICITFACTOR 219.))
                $OTHER $VAR))
              $VARS))))
          MEXPR) 
(ADD2LNC '(($EXPLICITFACTOR) $EXPL) $FUNCTIONS) 
(MDEFPROP $LCPRED
          ((LAMBDA) ((MLIST) $LINP $IS_OP %EXP)
           ((MCOND
             (227.
              #A((82.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
              SRC $LCPRED 226.))
            (($ATOM
              (227.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $LCPRED 226.))
             %EXP)
            NIL T
            ((MCOND
              (229.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $LCPRED 226.))
             (($APPLY
               (229.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $LCPRED 226.))
              $IS_OP
              ((MLIST
                (229.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $LCPRED 226.))
               %EXP))
             T T
             ((MCOND
               (231.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $LCPRED 226.))
              ((MEQUAL
                (231.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $LCPRED 226.))
               (($INPART
                 (231.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $LCPRED 226.))
                %EXP 0.)
               "*")
              (($IS
                (232.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $LCPRED 226.))
               ((MEQUAL
                 (232.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $LCPRED 226.))
                (($LENGTH
                  (232.
                   #A((82.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                   SRC $LCPRED 226.))
                 (($LAST
                   (232.
                    #A((82.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                    SRC $LCPRED 226.))
                  (($PREDPARTITION
                    (232.
                     #A((82.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                     SRC $LCPRED 226.))
                   %EXP $IS_OP)))
                1.))
              T
              ((MCOND
                (233.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $LCPRED 226.))
               ((MEQUAL
                 (233.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $LCPRED 226.))
                (($INPART
                  (233.
                   #A((82.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                   SRC $LCPRED 226.))
                 %EXP 0.)
                "+")
               (($IS
                 (234.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $LCPRED 226.))
                ((MEQUAL
                  (234.
                   #A((82.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                   SRC $LCPRED 226.))
                 (($FIRST
                   (234.
                    #A((82.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                    SRC $LCPRED 226.))
                  (($PREDPARTITION
                    (234.
                     #A((82.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                     SRC $LCPRED 226.))
                   %EXP $LINP))
                 ((MLIST
                   (234.
                    #A((82.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                    SRC $LCPRED 226.)))))
               T NIL)))))
          MEXPR) 
(ADD2LNC '(($LCPRED) $LINP $IS_OP %EXP) $FUNCTIONS) 
(MDEFPROP $RLOIEWL
          ((LAMBDA) ((MLIST) $OP %EXP)
           ((MPROG
             (239.
              #A((82.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
              SRC $RLOIEWL 239.))
            ((MLIST
              (240.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $RLOIEWL 239.))
             ((MSETQ
               (240.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $RLOIEWL 239.))
              $PARTSWITCH T)
             ((MSETQ
               (240.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $RLOIEWL 239.))
              $INFLAG T)
             $PIECE)
            ((MCOND
              (241.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $RLOIEWL 239.))
             ((MEQUAL
               (241.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $RLOIEWL 239.))
              (($INPART
                (241.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $RLOIEWL 239.))
               %EXP 0.)
              $OP)
             (($ARGS
               (242.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $RLOIEWL 239.))
              %EXP)
             T
             ((MLIST
               (243.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $RLOIEWL 239.))
              %EXP))))
          MEXPR) 
(ADD2LNC '(($RLOIEWL) $OP %EXP) $FUNCTIONS) 
(MDEFPROP $PREDPARTITION
          ((LAMBDA) ((MLIST) $LIST $PREDICATE)
           ((MPROG
             (245.
              #A((82.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
              SRC $PREDPARTITION 245.))
            ((MLIST
              (246.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $PREDPARTITION 245.))
             ((MSETQ
               (246.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $PREDPARTITION 245.))
              $NOLIST
              ((MLIST
                (246.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $PREDPARTITION 245.))))
             ((MSETQ
               (246.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $PREDPARTITION 245.))
              $YESLIST
              ((MLIST
                (246.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $PREDPARTITION 245.)))))
            ((MDOIN
              (247.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $PREDPARTITION 245.))
             $IDUM
             (($REVERSE
               (247.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $PREDPARTITION 245.))
              $LIST)
             NIL NIL NIL NIL
             ((MCOND
               (248.
                #A((82.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                SRC $PREDPARTITION 245.))
              (($MODE_IDENTITY
                (248.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $PREDPARTITION 245.))
               $BOOLEAN
               (($APPLY
                 (248.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $PREDPARTITION 245.))
                $PREDICATE
                ((MLIST
                  (248.
                   #A((82.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                   SRC $PREDPARTITION 245.))
                 $IDUM)))
              ((MSETQ
                (249.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $PREDPARTITION 245.))
               $YESLIST
               (($CONS
                 (249.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $PREDPARTITION 245.))
                $IDUM $YESLIST))
              T
              ((MSETQ
                (250.
                 #A((82.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                 SRC $PREDPARTITION 245.))
               $NOLIST
               (($CONS
                 (250.
                  #A((82.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
                  SRC $PREDPARTITION 245.))
                $IDUM $NOLIST))))
            ((MLIST
              (251.
               #A((82.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/genut.mac")
               SRC $PREDPARTITION 245.))
             $NOLIST $YESLIST)))
          MEXPR) 
(ADD2LNC '(($PREDPARTITION) $LIST $PREDICATE) $FUNCTIONS) 
(MDEFPROP $LOPPLUSP
          ((LAMBDA) ((MLIST) %EXP)
           (($IS
             (67.
              #A((83.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
              SRC $LOPPLUSP 67.))
            ((MEQUAL
              (67.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $LOPPLUSP 67.))
             (($INPART
               (67.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $LOPPLUSP 67.))
              %EXP 0.)
             "+")))
          MEXPR) 
(ADD2LNC '(($LOPPLUSP) %EXP) $FUNCTIONS) 
(MDEFPROP $OPERATOR0P
          ((LAMBDA) ((MLIST) %EXP)
           ((MPROG
             (69.
              #A((83.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
              SRC $OPERATOR0P 69.))
            ((MLIST
              (70.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $OPERATOR0P 69.))
             $IP0DUM)
            (($IS
              (71.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $OPERATOR0P 69.))
             ((MOR
               (71.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $OPERATOR0P 69.))
              ((MEQUAL
                (71.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $OPERATOR0P 69.))
               ((MSETQ
                 (71.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $OPERATOR0P 69.))
                $IP0DUM
                (($INPART
                  (71.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $OPERATOR0P 69.))
                 %EXP 0.))
               ((MQUOTE
                 (71.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $OPERATOR0P 69.))
                $OPERATOR))
              ((MEQUAL
                (71.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $OPERATOR0P 69.))
               $IP0DUM
               (($NOUNIFY
                 (71.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $OPERATOR0P 69.))
                ((MQUOTE
                  (71.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $OPERATOR0P 69.))
                 $OPERATOR)))))))
          MEXPR) 
(ADD2LNC '(($OPERATOR0P) %EXP) $FUNCTIONS) 
(MDEFPROP $ORDERLASTP
          ((LAMBDA) ((MLIST) $EXP1 $EXP2)
           (($ORDERLESSP
             (73.
              #A((83.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
              SRC $ORDERLASTP 73.))
            (($LAST
              (73.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $ORDERLASTP 73.))
             $EXP1)
            (($LAST
              (73.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $ORDERLASTP 73.))
             $EXP2)))
          MEXPR) 
(ADD2LNC '(($ORDERLASTP) $EXP1 $EXP2) $FUNCTIONS) 
(MDEFPROP $FACTORFACSUM T MLEXPRP) 
(MDEFPROP $FACTORFACSUM
          ((LAMBDA)
           ((MLIST) %EXP
            ((MLIST
              (81.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $FACTORFACSUM 81.))
             $ARGDUM))
           ((MPROG
             (81.
              #A((83.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
              SRC $FACTORFACSUM 81.))
            ((MLIST
              (82.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $FACTORFACSUM 81.))
             $EXPDUM $IP0DUM
             ((MSETQ
               (82.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACTORFACSUM 81.))
              $PARTSWITCH T)
             ((MSETQ
               (82.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACTORFACSUM 81.))
              $INFLAG T)
             $PIECE)
            ((MCOND
              (83.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $FACTORFACSUM 81.))
             (($ATOM
               (83.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACTORFACSUM 81.))
              %EXP)
             ((MRETURN
               (83.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACTORFACSUM 81.))
              %EXP)
             T $FALSE)
            ((MCOND
              (84.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $FACTORFACSUM 81.))
             (($NULLLISTP
               (84.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACTORFACSUM 81.))
              $ARGDUM)
             ((MRETURN
               (84.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACTORFACSUM 81.))
              (($AUTOFORM
                (84.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACTORFACSUM 81.))
               %EXP))
             T $FALSE)
            ((MCOND
              (85.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $FACTORFACSUM 81.))
             ((MOR
               (85.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACTORFACSUM 81.))
              (($MATRIXP
                (85.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACTORFACSUM 81.))
               %EXP)
              (($LISTP
                (85.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACTORFACSUM 81.))
               %EXP)
              ((MEQUAL
                (85.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACTORFACSUM 81.))
               (($INPART
                 (85.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $FACTORFACSUM 81.))
                %EXP 0.)
               "="))
             ((MRETURN
               (86.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACTORFACSUM 81.))
              (($MAP
                (86.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACTORFACSUM 81.))
               ((LAMBDA
                    (86.
                     #A((83.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                     SRC $FACTORFACSUM 81.))
                ((MLIST
                  (86.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $FACTORFACSUM 81.))
                 $ELEMDUM)
                (($APPLY
                  (86.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $FACTORFACSUM 81.))
                 ((MQUOTE
                   (86.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $FACTORFACSUM 81.))
                  $FACTORFACSUM)
                 (($CONS
                   (86.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $FACTORFACSUM 81.))
                  $ELEMDUM $ARGDUM)))
               %EXP))
             T $FALSE)
            ((MSETQ
              (88.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $FACTORFACSUM 81.))
             $EXPDUM
             (($AUTOFORM
               (88.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACTORFACSUM 81.))
              %EXP))
            ((MCOND
              (89.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $FACTORFACSUM 81.))
             ((MOR
               (89.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACTORFACSUM 81.))
              ((MEQUAL
                (89.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACTORFACSUM 81.))
               ((MSETQ
                 (89.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $FACTORFACSUM 81.))
                $IP0DUM
                (($INPART
                  (89.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $FACTORFACSUM 81.))
                 $EXPDUM 0.))
               "^")
              ((MEQUAL
                (89.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACTORFACSUM 81.))
               $IP0DUM "*"))
             (($MAP
               (90.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACTORFACSUM 81.))
              ((LAMBDA
                   (90.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $FACTORFACSUM 81.))
               ((MLIST
                 (90.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $FACTORFACSUM 81.))
                $FACTDUM)
               (($APPLY
                 (90.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $FACTORFACSUM 81.))
                ((MQUOTE
                  (90.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $FACTORFACSUM 81.))
                 $FACTORFACSUM)
                (($CONS
                  (90.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $FACTORFACSUM 81.))
                 $FACTDUM $ARGDUM)))
              $EXPDUM)
             T
             (($FACSUML
               (92.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACTORFACSUM 81.))
              (($CONS
                (92.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACTORFACSUM 81.))
               $EXPDUM $ARGDUM)))))
          MEXPR) 
(ADD2LNC
 '(($FACTORFACSUM) %EXP
   ((MLIST
     (81.
      #A((83.) BASE-CHAR
         . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
      SRC $FACTORFACSUM 81.))
    $ARGDUM))
 $FUNCTIONS) 
(MDEFPROP $FACSUM (NIL $AUTOMATIC $NONUMFACTOR) $PROPS) 
(ADD2LNC '$FACSUM $PROPS) 
(MDEFPROP $FACSUM T MLEXPRP) 
(MDEFPROP $FACSUM
          ((LAMBDA)
           ((MLIST)
            ((MLIST
              (95.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $FACSUM 95.))
             $ARGLIST))
           (($FACSUML
             (95.
              #A((83.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
              SRC $FACSUM 95.))
            $ARGLIST))
          MEXPR) 
(ADD2LNC
 '(($FACSUM)
   ((MLIST
     (95.
      #A((83.) BASE-CHAR
         . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
      SRC $FACSUM 95.))
    $ARGLIST))
 $FUNCTIONS) 
(MDEFPROP $FACSUML
          ((LAMBDA) ((MLIST) $ARGLIST)
           ((MPROG
             (97.
              #A((83.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
              SRC $FACSUML 97.))
            ((MLIST
              (98.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $FACSUML 97.))
             ((MSETQ
               (98.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACSUML 97.))
              $FACTORFLAG NIL)
             ((MSETQ
               (98.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACSUML 97.))
              $PARTSWITCH T)
             ((MSETQ
               (98.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACSUML 97.))
              $INFLAG T)
             $PIECE
             ((MSETQ
               (99.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACSUML 97.))
              $FARGLIST
              (($FIRST
                (99.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACSUML 97.))
               $ARGLIST)))
            ((MCOND
              (100.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $FACSUML 97.))
             (($MATRIXP
               (100.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACSUML 97.))
              $FARGLIST)
             (($MATRIXMAP
               (101.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACSUML 97.))
              ((LAMBDA
                   (101.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $FACSUML 97.))
               ((MLIST
                 (101.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $FACSUML 97.))
                $DUM)
               (($FACSUML
                 (101.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $FACSUML 97.))
                (($CONS
                  (101.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $FACSUML 97.))
                 $DUM
                 (($REST
                   (101.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $FACSUML 97.))
                  $ARGLIST))))
              $FARGLIST)
             T
             ((MCOND
               (102.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACSUML 97.))
              ((MOR
                (102.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACSUML 97.))
               (($LISTP
                 (102.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $FACSUML 97.))
                $FARGLIST)
               ((MEQUAL
                 (102.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $FACSUML 97.))
                (($INPART
                  (102.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $FACSUML 97.))
                 $FARGLIST 0.)
                "="))
              (($MAP
                (103.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACSUML 97.))
               ((LAMBDA
                    (103.
                     #A((83.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                     SRC $FACSUML 97.))
                ((MLIST
                  (103.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $FACSUML 97.))
                 $DUM)
                (($FACSUML
                  (103.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $FACSUML 97.))
                 (($CONS
                   (103.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $FACSUML 97.))
                  $DUM
                  (($REST
                    (103.
                     #A((83.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                     SRC $FACSUML 97.))
                   $ARGLIST))))
               $FARGLIST)
              T
              ((MPROG
                (104.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACSUML 97.))
               ((MLIST
                 (105.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $FACSUML 97.))
                ((MSETQ
                  (105.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $FACSUML 97.))
                 $ARGDUM
                 (($REST
                   (105.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $FACSUML 97.))
                  $ARGLIST))
                ((MSETQ
                  (105.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $FACSUML 97.))
                 $ARGDUM2
                 ((MLIST
                   (105.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $FACSUML 97.))))
                ((MSETQ
                  (105.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $FACSUML 97.))
                 $RATFAC NIL))
               (($SETLIST
                 (107.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $FACSUML 97.))
                (($ARGSPLIT
                  (107.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $FACSUML 97.))
                 $FARGLIST $ARGDUM)
                ((MQUOTE
                  (107.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $FACSUML 97.))
                 $ARGDUM)
                ((MQUOTE
                  (107.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $FACSUML 97.))
                 $ARGDUM2))
               ((MPROG
                 (108.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $FACSUML 97.))
                ((MLIST
                  (108.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $FACSUML 97.))
                 ((MSETQ
                   (108.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $FACSUML 97.))
                  $RATVARS
                  (($APPEND
                    (108.
                     #A((83.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                     SRC $FACSUML 97.))
                   $RATVARS
                   ((MSETQ
                     (108.
                      #A((83.) BASE-CHAR
                         . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                      SRC $FACSUML 97.))
                    $ARGDUM
                    (($RATSIMP
                      (108.
                       #A((83.) BASE-CHAR
                          . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                       SRC $FACSUML 97.))
                     $ARGDUM)))))
                (($FACEXPL
                  (109.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $FACSUML 97.))
                 (($CONS
                   (109.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $FACSUML 97.))
                  (($RATSIMP
                    (109.
                     #A((83.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                     SRC $FACSUML 97.))
                   $FARGLIST)
                  $ARGDUM))))))))
          MEXPR) 
(ADD2LNC '(($FACSUML) $ARGLIST) $FUNCTIONS) 
(MDEFPROP $FACEXP
          ((LAMBDA)
           ((MLIST)
            ((MLIST
              (113.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $FACEXP 113.))
             $ARGLIST))
           (($FACEXPL
             (113.
              #A((83.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
              SRC $FACEXP 113.))
            $ARGLIST))
          MEXPR) 
(ADD2LNC
 '(($FACEXP)
   ((MLIST
     (113.
      #A((83.) BASE-CHAR
         . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
      SRC $FACEXP 113.))
    $ARGLIST))
 $FUNCTIONS) 
(MDEFPROP $FACEXP T MLEXPRP) 
(MDEFPROP $NEXTLAYER
          ((LAMBDA) ((MLIST) %EXP)
           ((MPROG
             (115.
              #A((83.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
              SRC $NEXTLAYER 115.))
            ((MCOND
              (116.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $NEXTLAYER 115.))
             ((MNOT
               (116.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $NEXTLAYER 115.))
              (($NULLLISTP
                (116.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $NEXTLAYER 115.))
               $ARGDUM2))
             (($IFLOPMAP
               (117.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $NEXTLAYER 115.))
              "*"
              ((LAMBDA
                   (118.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $NEXTLAYER 115.))
               ((MLIST
                 (118.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $NEXTLAYER 115.))
                $DUM)
               (($FACSUML
                 (118.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $NEXTLAYER 115.))
                (($CONS
                  (118.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $NEXTLAYER 115.))
                 $DUM $ARGDUM2)))
              ((MCOND
                (119.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $NEXTLAYER 115.))
               $NEXTLAYERFACTOR
               (($AUTOFORM
                 (120.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $NEXTLAYER 115.))
                %EXP)
               T %EXP))
             T
             (($AUTOFORM
               (122.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $NEXTLAYER 115.))
              %EXP))))
          MEXPR) 
(ADD2LNC '(($NEXTLAYER) %EXP) $FUNCTIONS) 
(MDEFPROP $FACEXPL
          ((LAMBDA) ((MLIST) $ARGLIST)
           ((MPROG
             (124.
              #A((83.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
              SRC $FACEXPL 124.))
            ((MLIST
              (125.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $FACEXPL 124.))
             ((MSETQ
               (125.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACEXPL 124.))
              $EXPDUM
              (($FIRST
                (125.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACEXPL 124.))
               $ARGLIST))
             $PARTITIONDUM
             ((MSETQ
               (126.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACEXPL 124.))
              $ARGDUM
              (($REST
                (126.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACEXPL 124.))
               $ARGLIST))
             ((MSETQ
               (126.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACEXPL 124.))
              $NEXTLAYERFACTORSAVE $NEXTLAYERFACTOR)
             ((MSETQ
               (127.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACEXPL 124.))
              $NEXTLAYERFACTOR NIL)
             $NUMEXPDUM $DENEXPDUM)
            (($MODEDECLARE
              (128.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $FACEXPL 124.))
             $NEXTLAYERFACTORSAVE $BOOLEAN)
            ((MCOND
              (130.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $FACEXPL 124.))
             (($MEMBER
               (130.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACEXPL 124.))
              ((MQUOTE
                (130.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACEXPL 124.))
               $NEXTLAYERFACTOR)
              $ARGLIST)
             ((MPROGN
               (131.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACEXPL 124.))
              ((MSETQ
                (131.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACEXPL 124.))
               $ARGLIST
               (($DELETE
                 (131.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $FACEXPL 124.))
                ((MQUOTE
                  (131.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $FACEXPL 124.))
                 $NEXTLAYERFACTOR)
                $ARGLIST))
              ((MSETQ
                (132.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACEXPL 124.))
               $NEXTLAYERFACTOR T))
             T
             ((MSETQ
               (133.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACEXPL 124.))
              $NEXTLAYERFACTOR $NEXTLAYERFACTORSAVE))
            ((MCOND
              (134.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $FACEXPL 124.))
             ((MOR
               (134.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACEXPL 124.))
              (($NULLLISTP
                (134.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACEXPL 124.))
               $ARGDUM)
              ((MLESSP
                (134.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACEXPL 124.))
               (($LENGTH
                 (134.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $FACEXPL 124.))
                $ARGLIST)
               2.)
              (($FREEOFL
                (134.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACEXPL 124.))
               (($REST
                 (134.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $FACEXPL 124.))
                $ARGLIST)
               $EXPDUM))
             ((MRETURN
               (135.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACEXPL 124.))
              (($NEXTLAYER
                (135.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACEXPL 124.))
               $EXPDUM))
             T $FALSE)
            ((MSETQ
              (136.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $FACEXPL 124.))
             $NUMEXPDUM
             (($FACEXPFORM
               (136.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACEXPL 124.))
              (($NUM
                (136.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACEXPL 124.))
               $EXPDUM)))
            ((MCOND
              (137.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $FACEXPL 124.))
             ((MNOTEQUAL
               (137.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACEXPL 124.))
              ((MSETQ
                (137.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACEXPL 124.))
               $DENEXPDUM
               (($DENOM
                 (137.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $FACEXPL 124.))
                $EXPDUM))
              1.)
             ((MSETQ
               (137.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACEXPL 124.))
              $DENEXPDUM
              (($FACEXPFORM
                (137.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACEXPL 124.))
               (($DENOM
                 (137.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $FACEXPL 124.))
                $EXPDUM)))
             T $FALSE)
            ((MCOND
              (138.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $FACEXPL 124.))
             ((MAND
               (139.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACEXPL 124.))
              ((MEQUAL
                (138.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACEXPL 124.))
               (($INPART
                 (138.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $FACEXPL 124.))
                $NUMEXPDUM 0.)
               "+")
              ((MNOT
                (139.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACEXPL 124.))
               (($FREEOFL
                 (139.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $FACEXPL 124.))
                $ARGDUM $NUMEXPDUM))
              ((MNOT
                (140.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACEXPL 124.))
               $FACSUM_COMBINE))
             ((MCOND
               (141.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACEXPL 124.))
              ((MNOTEQUAL
                (141.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACEXPL 124.))
               $DENEXPDUM 1.)
              ((MPROGN
                (142.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACEXPL 124.))
               ((MSETQ
                 (142.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $FACEXPL 124.))
                $PARTITIONDUM
                (($ORPARTITIONL
                  (142.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $FACEXPL 124.))
                 $NUMEXPDUM "+" $ARGDUM))
               ((MPLUS
                 (144.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $FACEXPL 124.))
                (($MULTTHRU
                  (143.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $FACEXPL 124.))
                 ((MEXPT
                   (143.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $FACEXPL 124.))
                  $DENEXPDUM
                  ((MMINUS
                    (143.
                     #A((83.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                     SRC $FACEXPL 124.))
                   1.))
                 (($LAST
                   (143.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $FACEXPL 124.))
                  $PARTITIONDUM))
                ((MTIMES
                  (144.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $FACEXPL 124.))
                 ((MEXPT
                   (144.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $FACEXPL 124.))
                  $DENEXPDUM
                  ((MMINUS
                    (144.
                     #A((83.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                     SRC $FACEXPL 124.))
                   1.))
                 (($FIRST
                   (144.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $FACEXPL 124.))
                  $PARTITIONDUM))))
              T $NUMEXPDUM)
             T
             ((MTIMES
               (146.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACEXPL 124.))
              $NUMEXPDUM
              ((MEXPT
                (146.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACEXPL 124.))
               $DENEXPDUM
               ((MMINUS
                 (146.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $FACEXPL 124.))
                1.))))))
          MEXPR) 
(ADD2LNC '(($FACEXPL) $ARGLIST) $FUNCTIONS) 
(MDEFPROP $FACEXPFORM
          ((LAMBDA) ((MLIST) %EXP)
           ((MPROGN
             (148.
              #A((83.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
              SRC $FACEXPFORM 148.))
            ((MSETQ
              (149.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $FACEXPFORM 148.))
             %EXP
             (($OPMAP
               (149.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACEXPFORM 148.))
              %EXP
              ((MLIST
                (149.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACEXPFORM 148.))
               "+"
               ((MQUOTE
                 (149.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $FACEXPFORM 148.))
                $VPLUS)
               "*"
               ((MQUOTE
                 (149.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $FACEXPFORM 148.))
                $VSTAR))))
            ((MCOND
              (150.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $FACEXPFORM 148.))
             ((MEQUAL
               (150.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACEXPFORM 148.))
              (($INPART
                (150.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACEXPFORM 148.))
               %EXP 0.)
              "+")
             (($FACEXPFORM1
               (151.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACEXPFORM 148.))
              %EXP)
             T %EXP)))
          MEXPR) 
(ADD2LNC '(($FACEXPFORM) %EXP) $FUNCTIONS) 
(MDEFPROP $FACEXPFORM1
          ((LAMBDA) ((MLIST) $EXPDUM)
           ((MPROG
             (154.
              #A((83.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
              SRC $FACEXPFORM1 154.))
            ((MLIST
              (155.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $FACEXPFORM1 154.))
             ((MSETQ
               (155.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACEXPFORM1 154.))
              $SUBDUM
              (($ZEROSUBST
                (155.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FACEXPFORM1 154.))
               $ARGDUM $EXPDUM)))
            ((MPLUS
              (157.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $FACEXPFORM1 154.))
             $EXPDUM
             ((MMINUS
               (157.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACEXPFORM1 154.))
              $SUBDUM)
             (($NEXTLAYER
               (157.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FACEXPFORM1 154.))
              $SUBDUM))))
          MEXPR) 
(ADD2LNC '(($FACEXPFORM1) $EXPDUM) $FUNCTIONS) 
(MDEFPROP $VPLUS
          ((LAMBDA) ((MLIST) %EXP)
           ((MPROG
             (173.
              #A((83.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
              SRC $VPLUS 173.))
            ((MLIST
              (174.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $VPLUS 173.))
             ((MSETQ
               (174.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $VPLUS 173.))
              $VPSDUM
              (($MAP
                (174.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $VPLUS 173.))
               ((LAMBDA
                    (174.
                     #A((83.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                     SRC $VPLUS 173.))
                ((MLIST
                  (174.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $VPLUS 173.))
                 $TERM)
                ((MCOND
                  (175.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $VPLUS 173.))
                 (($NULLLISTP
                   (175.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $VPLUS 173.))
                  (($INTERSECT_LIST
                    (175.
                     #A((83.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                     SRC $VPLUS 173.))
                   (($SHOWRATVARS
                     (175.
                      #A((83.) BASE-CHAR
                         . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                      SRC $VPLUS 173.))
                    $TERM)
                   $ARGDUM))
                 (($NEXTLAYER
                   (176.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $VPLUS 173.))
                  $TERM)
                 T
                 (($OPMAP
                   (177.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $VPLUS 173.))
                  $TERM $OP_FCN_LIST)))
               %EXP)))
            ((MCOND
              (180.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $VPLUS 173.))
             ((MEQUAL
               (180.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $VPLUS 173.))
              (($INPART
                (180.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $VPLUS 173.))
               $VPSDUM 0.)
              "+")
             (($FACEXPFORM1
               (181.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $VPLUS 173.))
              $VPSDUM)
             T $VPSDUM)))
          MEXPR) 
(ADD2LNC '(($VPLUS) %EXP) $FUNCTIONS) 
(MDEFPROP $VSTAR
          ((LAMBDA) ((MLIST) %EXP)
           ((MPROG
             (184.
              #A((83.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
              SRC $VSTAR 184.))
            ((MLIST
              (185.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $VSTAR 184.))
             ((MSETQ
               (185.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $VSTAR 184.))
              $ARGSEXPDUM
              (($ARGS
                (185.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $VSTAR 184.))
               %EXP))
             $PARTITIONDUM $EXPIARGDUM)
            ((MDOIN
              (186.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $VSTAR 184.))
             $IARGDUM $ARGSEXPDUM NIL NIL NIL NIL
             ((MCOND
               (187.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $VSTAR 184.))
              ((MEQUAL
                (187.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $VSTAR 184.))
               (($INPART
                 (187.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $VSTAR 184.))
                $IARGDUM 0.)
               "+")
              ((MCOND
                (188.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $VSTAR 184.))
               ((MNOT
                 (188.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $VSTAR 184.))
                (($NULLLISTP
                  (188.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $VSTAR 184.))
                 (($INTERSECT_LIST
                   (188.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $VSTAR 184.))
                  $ARGDUM
                  (($SHOWRATVARS
                    (188.
                     #A((83.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                     SRC $VSTAR 184.))
                   $IARGDUM))))
               ((MPROGN
                 (189.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $VSTAR 184.))
                ((MSETQ
                  (189.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $VSTAR 184.))
                 $PARTITIONDUM
                 (($ORPARTITIONL
                   (189.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $VSTAR 184.))
                  (($FACEXPFORM
                    (189.
                     #A((83.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                     SRC $VSTAR 184.))
                   $IARGDUM)
                  "+" $ARGDUM))
                ((MSETQ
                  (190.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $VSTAR 184.))
                 $EXPIARGDUM
                 (($IFMULTTHRU
                   (190.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $VSTAR 184.))
                  ((MQUOTIENT
                    (190.
                     #A((83.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                     SRC $VSTAR 184.))
                   1. $IARGDUM)
                  %EXP))
                ((MSETQ
                  (191.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $VSTAR 184.))
                 %EXP
                 ((MPLUS
                   (192.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $VSTAR 184.))
                  (($IFMULTTHRU
                    (191.
                     #A((83.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                     SRC $VSTAR 184.))
                   $EXPIARGDUM
                   (($LAST
                     (191.
                      #A((83.) BASE-CHAR
                         . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                      SRC $VSTAR 184.))
                    $PARTITIONDUM))
                  ((MTIMES
                    (192.
                     #A((83.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                     SRC $VSTAR 184.))
                   $EXPIARGDUM
                   (($NEXTLAYER
                     (192.
                      #A((83.) BASE-CHAR
                         . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                      SRC $VSTAR 184.))
                    (($FIRST
                      (192.
                       #A((83.) BASE-CHAR
                          . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                       SRC $VSTAR 184.))
                     $PARTITIONDUM))))))
               T
               ((MSETQ
                 (193.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $VSTAR 184.))
                %EXP
                ((MTIMES
                  (193.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $VSTAR 184.))
                 ((MQUOTIENT
                   (193.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $VSTAR 184.))
                  %EXP $IARGDUM)
                 (($NEXTLAYER
                   (193.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $VSTAR 184.))
                  $IARGDUM))))
              T $FALSE))
            ((MCOND
              (194.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $VSTAR 184.))
             ((MEQUAL
               (194.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $VSTAR 184.))
              (($INPART
                (194.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $VSTAR 184.))
               %EXP 0.)
              "+")
             (($FACEXPFORM1
               (195.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $VSTAR 184.))
              %EXP)
             T %EXP)))
          MEXPR) 
(ADD2LNC '(($VSTAR) %EXP) $FUNCTIONS) 
(MDEFPROP $FPLUS
          ((LAMBDA) ((MLIST) %EXP)
           ((MPROG
             (198.
              #A((83.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
              SRC $FPLUS 198.))
            (($IFLOPMAP
              (200.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $FPLUS 198.))
             "+"
             ((LAMBDA
                  (201.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $FPLUS 198.))
              ((MLIST
                (201.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FPLUS 198.))
               $DUM)
              (($OPMAP
                (201.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FPLUS 198.))
               $DUM $OP_FCN_LIST))
             (($LISTTOSUM
               (202.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FPLUS 198.))
              (($LDELETE
                (202.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FPLUS 198.))
               $LIST
               (($ARGS
                 (202.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $FPLUS 198.))
                %EXP))))))
          MEXPR) 
(ADD2LNC '(($FPLUS) %EXP) $FUNCTIONS) 
(MDEFPROP $FEXPT
          ((LAMBDA) ((MLIST) %EXP)
           ((MPROG
             (204.
              #A((83.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
              SRC $FEXPT 204.))
            ((MLIST
              (205.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $FEXPT 204.))
             ((MSETQ
               (205.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FEXPT 204.))
              $IP1EXP
              (($ZEROSUBST
                (205.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FEXPT 204.))
               $LIST
               (($INPART
                 (205.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $FEXPT 204.))
                %EXP 1.))))
            ((MCOND
              (207.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $FEXPT 204.))
             ((MEQUAL
               (207.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FEXPT 204.))
              $IP1EXP 0.)
             0. T
             ((MEXPT
               (209.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FEXPT 204.))
              $IP1EXP
              (($ZEROSUBST
                (209.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FEXPT 204.))
               $LIST
               (($INPART
                 (209.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $FEXPT 204.))
                %EXP 2.))))))
          MEXPR) 
(ADD2LNC '(($FEXPT) %EXP) $FUNCTIONS) 
(MDEFPROP $FSTAR
          ((LAMBDA) ((MLIST) %EXP)
           ((MPROG
             (211.
              #A((83.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
              SRC $FSTAR 211.))
            ((MCOND
              (213.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $FSTAR 211.))
             ((MEQUAL
               (213.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FSTAR 211.))
              (($LDELETE
                (213.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FSTAR 211.))
               $LIST
               (($ARGS
                 (213.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $FSTAR 211.))
                %EXP))
              (($ARGS
                (213.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $FSTAR 211.))
               %EXP))
             (($MAP
               (214.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $FSTAR 211.))
              ((LAMBDA
                   (214.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $FSTAR 211.))
               ((MLIST
                 (214.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $FSTAR 211.))
                $DUM)
               (($OPMAP
                 (214.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $FSTAR 211.))
                $DUM $OP_FCN_LIST))
              %EXP)
             T 0.)))
          MEXPR) 
(ADD2LNC '(($FSTAR) %EXP) $FUNCTIONS) 
(MDEFPROP $ZEROSUBST
          ((LAMBDA) ((MLIST) $LIST %EXP)
           ((MCOND
             (218.
              #A((83.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
              SRC $ZEROSUBST 217.))
            (($MEMBER
              (218.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $ZEROSUBST 217.))
             %EXP $LIST)
            0. T
            (($OPMAP
              (220.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $ZEROSUBST 217.))
             %EXP
             ((MLIST
               (220.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $ZEROSUBST 217.))
              "*"
              ((MQUOTE
                (220.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $ZEROSUBST 217.))
               $FSTAR)
              "+"
              ((MQUOTE
                (220.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $ZEROSUBST 217.))
               $FPLUS)
              "^"
              ((MQUOTE
                (220.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $ZEROSUBST 217.))
               $FEXPT)))))
          MEXPR) 
(ADD2LNC '(($ZEROSUBST) $LIST %EXP) $FUNCTIONS) 
(MDEFPROP $IFMULTTHRU
          ((LAMBDA) ((MLIST) $EXP1 $EXP2)
           ((MCOND
             (223.
              #A((83.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
              SRC $IFMULTTHRU 222.))
            ((MEQUAL
              (223.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $IFMULTTHRU 222.))
             (($INPART
               (223.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $IFMULTTHRU 222.))
              $EXP2 0.)
             "+")
            (($MULTTHRU
              (224.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $IFMULTTHRU 222.))
             $EXP1 $EXP2)
            T
            ((MTIMES
              (225.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $IFMULTTHRU 222.))
             $EXP1 $EXP2)))
          MEXPR) 
(ADD2LNC '(($IFMULTTHRU) $EXP1 $EXP2) $FUNCTIONS) 
(MDEFPROP $COLLECTTERMS T MLEXPRP) 
(MDEFPROP $COLLECTTERMS
          ((LAMBDA)
           ((MLIST) %EXP
            ((MLIST
              (230.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $COLLECTTERMS 230.))
             $VARLIST))
           (($COLLECTTERMSL
             (230.
              #A((83.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
              SRC $COLLECTTERMS 230.))
            %EXP $VARLIST))
          MEXPR) 
(ADD2LNC
 '(($COLLECTTERMS) %EXP
   ((MLIST
     (230.
      #A((83.) BASE-CHAR
         . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
      SRC $COLLECTTERMS 230.))
    $VARLIST))
 $FUNCTIONS) 
(MDEFPROP $COLLECTTERMSL
          ((LAMBDA) ((MLIST) %EXP $VARLIST)
           ((MPROG
             (232.
              #A((83.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
              SRC $COLLECTTERMSL 232.))
            ((MLIST
              (233.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $COLLECTTERMSL 232.))
             ((MSETQ
               (233.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $COLLECTTERMSL 232.))
              $PARTSWITCH T)
             ((MSETQ
               (233.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $COLLECTTERMSL 232.))
              $INFLAG T)
             $PIECE)
            (($APPLY
              (234.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $COLLECTTERMSL 232.))
             ((MQUOTE
               (234.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $COLLECTTERMSL 232.))
              $COLLECTTERMS0)
             (($CONS
               (234.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $COLLECTTERMSL 232.))
              %EXP
              (($ARGSPLIT
                (234.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $COLLECTTERMSL 232.))
               %EXP $VARLIST)))))
          MEXPR) 
(ADD2LNC '(($COLLECTTERMSL) %EXP $VARLIST) $FUNCTIONS) 
(MDEFPROP $COLLECTTERMS0
          ((LAMBDA) ((MLIST) %EXP $THISLEVELDUM $NEXTLEVELDUM)
           ((MPROG
             (236.
              #A((83.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
              SRC $COLLECTTERMS0 236.))
            ((MLIST
              (237.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $COLLECTTERMS0 236.))
             ((MSETQ
               (237.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $COLLECTTERMS0 236.))
              $IFORP T)
             $SPLITDUM1 $SPLITDUM2 $SPLITDUM3
             ((MSETQ
               (237.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $COLLECTTERMS0 236.))
              $ANSLIST
              ((MLIST
                (237.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $COLLECTTERMS0 236.))))
             $PREVDUM $LSPLIT3 $ANSDUM $LASTDUMSAVE $PREVLASTDUM $RTHISLEVELDUM
             $FTHISLEVELDUM)
            (($MODEDECLARE
              (240.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $COLLECTTERMS0 236.))
             $LSPLIT3 $FIXNUM)
            ((MCOND
              (242.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $COLLECTTERMS0 236.))
             ((MEQUAL
               (242.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $COLLECTTERMS0 236.))
              %EXP 0.)
             ((MRETURN
               (242.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $COLLECTTERMS0 236.))
              0.)
             T $FALSE)
            ((MCOND
              (243.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $COLLECTTERMS0 236.))
             ((MOR
               (243.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $COLLECTTERMS0 236.))
              (($NULLLISTP
                (243.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $COLLECTTERMS0 236.))
               $THISLEVELDUM)
              (($FREEOFL
                (243.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $COLLECTTERMS0 236.))
               $THISLEVELDUM %EXP))
             ((MCOND
               (244.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $COLLECTTERMS0 236.))
              (($NULLLISTP
                (244.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $COLLECTTERMS0 236.))
               $NEXTLEVELDUM)
              ((MRETURN
                (245.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $COLLECTTERMS0 236.))
               %EXP)
              T
              ((MPROGN
                (246.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $COLLECTTERMS0 236.))
               ((MSETQ
                 (246.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $COLLECTTERMS0 236.))
                $SPLITDUM1
                (($ORPARTITIONL
                  (246.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $COLLECTTERMS0 236.))
                 %EXP "+" $NEXTLEVELDUM))
               ((MRETURN
                 (247.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $COLLECTTERMS0 236.))
                ((MPLUS
                  (251.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $COLLECTTERMS0 236.))
                 (($COLLECTTERMSL
                   (247.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $COLLECTTERMS0 236.))
                  (($FIRST
                    (247.
                     #A((83.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                     SRC $COLLECTTERMS0 236.))
                   $SPLITDUM1)
                  $NEXTLEVELDUM)
                 (($IFLOPMAP
                   (248.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $COLLECTTERMS0 236.))
                  "+"
                  ((LAMBDA
                       (249.
                        #A((83.) BASE-CHAR
                           . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                        SRC $COLLECTTERMS0 236.))
                   ((MLIST
                     (249.
                      #A((83.) BASE-CHAR
                         . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                      SRC $COLLECTTERMS0 236.))
                    $TERMDUM)
                   (($COLLECTTERMSL
                     (250.
                      #A((83.) BASE-CHAR
                         . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                      SRC $COLLECTTERMS0 236.))
                    $TERMDUM $NEXTLEVELDUM))
                  (($LAST
                    (251.
                     #A((83.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                     SRC $COLLECTTERMS0 236.))
                   $SPLITDUM1))))))
             T $FALSE)
            ((MSETQ
              (252.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $COLLECTTERMS0 236.))
             $RTHISLEVELDUM
             (($REST
               (252.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $COLLECTTERMS0 236.))
              $THISLEVELDUM))
            ((MCOND
              (253.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $COLLECTTERMS0 236.))
             (($FREEOF
               (253.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $COLLECTTERMS0 236.))
              ((MSETQ
                (253.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $COLLECTTERMS0 236.))
               $FTHISLEVELDUM
               (($FIRST
                 (253.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $COLLECTTERMS0 236.))
                $THISLEVELDUM))
              %EXP)
             ((MRETURN
               (254.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $COLLECTTERMS0 236.))
              (($COLLECTTERMS0
                (254.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $COLLECTTERMS0 236.))
               %EXP $RTHISLEVELDUM $NEXTLEVELDUM))
             T $FALSE)
            ((MSETQ
              (255.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $COLLECTTERMS0 236.))
             $SPLITDUM1
             (($ORPARTITIONL
               (255.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $COLLECTTERMS0 236.))
              %EXP "+" $THISLEVELDUM))
            ((MSETQ
              (256.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $COLLECTTERMS0 236.))
             $SPLITDUM2
             (($ORPARTITION
               (256.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $COLLECTTERMS0 236.))
              (($LAST
                (256.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $COLLECTTERMS0 236.))
               $SPLITDUM1)
              "+" $FTHISLEVELDUM))
            ((MSETQ
              (257.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $COLLECTTERMS0 236.))
             $ANSDUM
             ((MPLUS
               (258.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $COLLECTTERMS0 236.))
              (($COLLECTTERMSL
                (257.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $COLLECTTERMS0 236.))
               (($FIRST
                 (257.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $COLLECTTERMS0 236.))
                $SPLITDUM1)
               $NEXTLEVELDUM)
              (($COLLECTTERMS0
                (258.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $COLLECTTERMS0 236.))
               (($FIRST
                 (258.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $COLLECTTERMS0 236.))
                $SPLITDUM2)
               $RTHISLEVELDUM $NEXTLEVELDUM)))
            ((MCOND
              (259.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $COLLECTTERMS0 236.))
             ((MNOT
               (259.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $COLLECTTERMS0 236.))
              (($LOPPLUSP
                (259.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $COLLECTTERMS0 236.))
               ((MSETQ
                 (259.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $COLLECTTERMS0 236.))
                $SPLITDUM3
                (($LAST
                  (259.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $COLLECTTERMS0 236.))
                 $SPLITDUM2))))
             ((MRETURN
               (260.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $COLLECTTERMS0 236.))
              ((MPLUS
                (260.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $COLLECTTERMS0 236.))
               $ANSDUM
               (($COLLECTTERMSL
                 (260.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $COLLECTTERMS0 236.))
                $SPLITDUM3 $NEXTLEVELDUM)))
             T $FALSE)
            ((MSETQ
              (261.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $COLLECTTERMS0 236.))
             $SPLITDUM3
             (($SORT
               (261.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $COLLECTTERMS0 236.))
              (($MAPLIST
                (261.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $COLLECTTERMS0 236.))
               ((LAMBDA
                    (261.
                     #A((83.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                     SRC $COLLECTTERMS0 236.))
                ((MLIST
                  (261.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $COLLECTTERMS0 236.))
                 $TERM)
                (($ORPARTITION
                  (261.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $COLLECTTERMS0 236.))
                 $TERM "*" $FTHISLEVELDUM))
               $SPLITDUM3)
              ((MQUOTE
                (263.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $COLLECTTERMS0 236.))
               $ORDERLASTP)))
            ((MSETQ
              (264.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $COLLECTTERMS0 236.))
             $LSPLIT3
             ((MPLUS
               (264.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $COLLECTTERMS0 236.))
              (($LENGTH
                (264.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $COLLECTTERMS0 236.))
               $SPLITDUM3)
              ((MMINUS
                (264.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $COLLECTTERMS0 236.))
               1.)))
            ((MSETQ
              (265.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $COLLECTTERMS0 236.))
             $PREVLASTDUM
             (($INPART
               (265.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $COLLECTTERMS0 236.))
              $SPLITDUM3 1. 2.))
            ((MSETQ
              (266.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $COLLECTTERMS0 236.))
             $PREVDUM
             (($INPART
               (266.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $COLLECTTERMS0 236.))
              $SPLITDUM3 1. 1.))
            ((MSETQ
              (267.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $COLLECTTERMS0 236.))
             $SPLITDUM3
             (($REST
               (267.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $COLLECTTERMS0 236.))
              $SPLITDUM3))
            ((MDO
              (268.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $COLLECTTERMS0 236.))
             $IDUM NIL NIL NIL $LSPLIT3 NIL
             ((MPROGN
               (269.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $COLLECTTERMS0 236.))
              ((MCOND
                (269.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $COLLECTTERMS0 236.))
               ((MEQUAL
                 (269.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $COLLECTTERMS0 236.))
                ((MSETQ
                  (269.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $COLLECTTERMS0 236.))
                 $LASTDUMSAVE
                 (($INPART
                   (269.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $COLLECTTERMS0 236.))
                  $SPLITDUM3 $IDUM 2.))
                $PREVLASTDUM)
               ((MSETQ
                 (270.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $COLLECTTERMS0 236.))
                $PREVDUM
                ((MPLUS
                  (271.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $COLLECTTERMS0 236.))
                 $PREVDUM
                 (($INPART
                   (270.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $COLLECTTERMS0 236.))
                  $SPLITDUM3 $IDUM 1.)))
               T
               ((MPROGN
                 (271.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $COLLECTTERMS0 236.))
                ((MSETQ
                  (271.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $COLLECTTERMS0 236.))
                 $ANSLIST
                 (($ENDCONS
                   (271.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $COLLECTTERMS0 236.))
                  ((MLIST
                    (271.
                     #A((83.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                     SRC $COLLECTTERMS0 236.))
                   $PREVDUM $PREVLASTDUM)
                  $ANSLIST))
                ((MSETQ
                  (272.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $COLLECTTERMS0 236.))
                 $PREVDUM
                 (($INPART
                   (272.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $COLLECTTERMS0 236.))
                  $SPLITDUM3 $IDUM 1.))
                ((MSETQ
                  (273.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $COLLECTTERMS0 236.))
                 $PREVLASTDUM $LASTDUMSAVE)))
              ((MCOND
                (274.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $COLLECTTERMS0 236.))
               ((MEQUAL
                 (274.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $COLLECTTERMS0 236.))
                $IDUM $LSPLIT3)
               ((MSETQ
                 (275.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $COLLECTTERMS0 236.))
                $ANSLIST
                (($ENDCONS
                  (275.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $COLLECTTERMS0 236.))
                 ((MLIST
                   (275.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $COLLECTTERMS0 236.))
                  $PREVDUM $PREVLASTDUM)
                 $ANSLIST))
               T $FALSE)))
            ((MPLUS
              (284.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $COLLECTTERMS0 236.))
             (($LISTTOSUM
               (276.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $COLLECTTERMS0 236.))
              (($MAPLIST
                (276.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $COLLECTTERMS0 236.))
               ((LAMBDA
                    (276.
                     #A((83.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                     SRC $COLLECTTERMS0 236.))
                ((MLIST
                  (276.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $COLLECTTERMS0 236.))
                 $DUM)
                ((MCOND
                  (277.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $COLLECTTERMS0 236.))
                 (($FREEOFL
                   (277.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $COLLECTTERMS0 236.))
                  $RTHISLEVELDUM
                  (($FIRST
                    (277.
                     #A((83.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                     SRC $COLLECTTERMS0 236.))
                   $DUM))
                 ((MTIMES
                   (279.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $COLLECTTERMS0 236.))
                  (($COLLECTTERMSL
                    (278.
                     #A((83.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                     SRC $COLLECTTERMS0 236.))
                   (($FIRST
                     (278.
                      #A((83.) BASE-CHAR
                         . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                      SRC $COLLECTTERMS0 236.))
                    $DUM)
                   $NEXTLEVELDUM)
                  (($LAST
                    (279.
                     #A((83.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                     SRC $COLLECTTERMS0 236.))
                   $DUM))
                 T
                 (($MULTTHRUSPLIT
                   (280.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $COLLECTTERMS0 236.))
                  (($LAST
                    (280.
                     #A((83.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                     SRC $COLLECTTERMS0 236.))
                   $DUM)
                  (($COLLECTTERMS0
                    (281.
                     #A((83.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                     SRC $COLLECTTERMS0 236.))
                   (($FIRST
                     (281.
                      #A((83.) BASE-CHAR
                         . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                      SRC $COLLECTTERMS0 236.))
                    $DUM)
                   $RTHISLEVELDUM $NEXTLEVELDUM)
                  $RTHISLEVELDUM)))
               $ANSLIST))
             $ANSDUM)))
          MEXPR) 
(ADD2LNC '(($COLLECTTERMS0) %EXP $THISLEVELDUM $NEXTLEVELDUM) $FUNCTIONS) 
(MDEFPROP $ARGSPLIT
          ((LAMBDA) ((MLIST) %EXP $LIST)
           ((MPROG
             (286.
              #A((83.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
              SRC $ARGSPLIT 286.))
            ((MLIST
              (287.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $ARGSPLIT 286.))
             ((MSETQ
               (287.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $ARGSPLIT 286.))
              $LISTARGSDUM
              ((MLIST
                (287.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $ARGSPLIT 286.))))
             ((MSETQ
               (287.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $ARGSPLIT 286.))
              $NEWLIST
              ((MLIST
                (287.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $ARGSPLIT 286.)))))
            ((MDOIN
              (288.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $ARGSPLIT 286.))
             $ARG $LIST NIL NIL NIL NIL
             ((MCOND
               (289.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $ARGSPLIT 286.))
              (($LISTP
                (289.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $ARGSPLIT 286.))
               $ARG)
              ((MSETQ
                (290.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $ARGSPLIT 286.))
               $LISTARGSDUM
               (($APPEND
                 (290.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $ARGSPLIT 286.))
                $LISTARGSDUM $ARG))
              T
              ((MCOND
                (291.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $ARGSPLIT 286.))
               (($OPERATOR0P
                 (291.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $ARGSPLIT 286.))
                $ARG)
               ((MSETQ
                 (293.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $ARGSPLIT 286.))
                $NEWLIST
                (($APPEND
                  (293.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $ARGSPLIT 286.))
                 $NEWLIST
                 (($APPLY
                   (293.
                    #A((83.) BASE-CHAR
                       . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                    SRC $ARGSPLIT 286.))
                  ((MQUOTE
                    (293.
                     #A((83.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                     SRC $ARGSPLIT 286.))
                   $LISTOFOPS_NONRAT)
                  (($CONS
                    (293.
                     #A((83.) BASE-CHAR
                        . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                     SRC $ARGSPLIT 286.))
                   %EXP
                   (($ARGS
                     (293.
                      #A((83.) BASE-CHAR
                         . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                      SRC $ARGSPLIT 286.))
                    $ARG)))))
               T
               ((MSETQ
                 (294.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $ARGSPLIT 286.))
                $NEWLIST
                (($CONS
                  (294.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $ARGSPLIT 286.))
                 $ARG $NEWLIST)))))
            ((MLIST
              (295.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $ARGSPLIT 286.))
             $NEWLIST $LISTARGSDUM)))
          MEXPR) 
(ADD2LNC '(($ARGSPLIT) %EXP $LIST) $FUNCTIONS) 
(MDEFPROP $MULTTHRUSPLIT
          ((LAMBDA) ((MLIST) $FACTORDUM $SUMDUM $RTHISLEVELDUM)
           ((MPROG
             (297.
              #A((83.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
              SRC $MULTTHRUSPLIT 297.))
            ((MLIST
              (298.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $MULTTHRUSPLIT 297.))
             ((MSETQ
               (298.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $MULTTHRUSPLIT 297.))
              $SPLITDUM1
              (($ORPARTITIONL
                (298.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $MULTTHRUSPLIT 297.))
               $SUMDUM "+" $RTHISLEVELDUM)))
            ((MPLUS
              (299.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $MULTTHRUSPLIT 297.))
             (($MULTTHRU
               (299.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $MULTTHRUSPLIT 297.))
              $FACTORDUM
              (($LAST
                (299.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $MULTTHRUSPLIT 297.))
               $SPLITDUM1))
             ((MTIMES
               (299.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $MULTTHRUSPLIT 297.))
              $FACTORDUM
              (($FIRST
                (299.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $MULTTHRUSPLIT 297.))
               $SPLITDUM1)))))
          MEXPR) 
(ADD2LNC '(($MULTTHRUSPLIT) $FACTORDUM $SUMDUM $RTHISLEVELDUM) $FUNCTIONS) 
(MDEFPROP $AUTOFORM
          ((LAMBDA) ((MLIST) %EXP)
           ((MPROG
             (302.
              #A((83.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
              SRC $AUTOFORM 301.))
            ((MLIST
              (302.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $AUTOFORM 301.))
             ((MSETQ
               (302.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $AUTOFORM 301.))
              $FUN
              (($GET
                (302.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $AUTOFORM 301.))
               ((MQUOTE
                 (302.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $AUTOFORM 301.))
                $FACSUM)
               ((MQUOTE
                 (302.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $AUTOFORM 301.))
                $AUTOMATIC))))
            ((MCOND
              (303.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $AUTOFORM 301.))
             ((MNOT
               (303.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $AUTOFORM 301.))
              (($MEMBER
                (303.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $AUTOFORM 301.))
               ((MQUOTE
                 (303.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $AUTOFORM 301.))
                $NOUN)
               (($APPLY
                 (303.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $AUTOFORM 301.))
                ((MQUOTE
                  (303.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $AUTOFORM 301.))
                 $PROPERTIES)
                ((MLIST
                  (303.
                   #A((83.) BASE-CHAR
                      . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                   SRC $AUTOFORM 301.))
                 $FUN))))
             (($APPLY
               (304.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $AUTOFORM 301.))
              $FUN
              ((MLIST
                (304.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $AUTOFORM 301.))
               %EXP))
             T
             (($APPLY
               (305.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $AUTOFORM 301.))
              (($NOUNIFY
                (305.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $AUTOFORM 301.))
               $FUN)
              ((MLIST
                (305.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $AUTOFORM 301.))
               %EXP)))))
          MEXPR) 
(ADD2LNC '(($AUTOFORM) %EXP) $FUNCTIONS) 
(MDEFPROP $SQFRFACSUM
          ((LAMBDA)
           ((MLIST)
            ((MLIST
              (310.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $SQFRFACSUM 310.))
             $ARGLIST))
           ((MPROG
             (310.
              #A((83.) BASE-CHAR
                 . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
              SRC $SQFRFACSUM 310.))
            ((MLIST
              (311.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $SQFRFACSUM 310.))
             $DUM
             ((MSETQ
               (311.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $SQFRFACSUM 310.))
              $AUTODUM
              (($GET
                (311.
                 #A((83.) BASE-CHAR
                    . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                 SRC $SQFRFACSUM 310.))
               ((MQUOTE
                 (311.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $SQFRFACSUM 310.))
                $FACSUM)
               ((MQUOTE
                 (311.
                  #A((83.) BASE-CHAR
                     . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                  SRC $SQFRFACSUM 310.))
                $AUTOMATIC))))
            (($PUT
              (313.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $SQFRFACSUM 310.))
             ((MQUOTE
               (313.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $SQFRFACSUM 310.))
              $FACSUM)
             ((MQUOTE
               (313.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $SQFRFACSUM 310.))
              $SQFR)
             ((MQUOTE
               (313.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $SQFRFACSUM 310.))
              $AUTOMATIC))
            ((MSETQ
              (314.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $SQFRFACSUM 310.))
             $DUM
             (($FACSUML
               (314.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $SQFRFACSUM 310.))
              $ARGLIST))
            (($PUT
              (315.
               #A((83.) BASE-CHAR
                  . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
               SRC $SQFRFACSUM 310.))
             ((MQUOTE
               (315.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $SQFRFACSUM 310.))
              $FACSUM)
             $AUTODUM
             ((MQUOTE
               (315.
                #A((83.) BASE-CHAR
                   . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
                SRC $SQFRFACSUM 310.))
              $AUTOMATIC))
            $DUM))
          MEXPR) 
(ADD2LNC
 '(($SQFRFACSUM)
   ((MLIST
     (310.
      #A((83.) BASE-CHAR
         . "/usr/local/Cellar/maxima/5.47.0/share/maxima/5.47.0/share/simplification/facexp.mac")
      SRC $SQFRFACSUM 310.))
    $ARGLIST))
 $FUNCTIONS) 
(MDEFPROP $SQFRFACSUM T MLEXPRP) 
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
(DSKSETQ $TTYOFF 'NIL) 
(DSKSETQ $FACTORFLAG 'NIL) 
(DSKSETQ $PARTSWITCH 'NIL) 
(DSKSETQ $INFLAG 'NIL) 
(DSKSETQ $RATFAC 'NIL) 
(DSKSETQ $PIECE '%SIN) 
(DEFPROP %HYPERGEOMETRIC SIMP-%HYPERGEOMETRIC OPERATORS) 
(ADD2LNC '%HYPERGEOMETRIC $PROPS) 
(MDEFPROP $GNAUTO (NIL $DIAGEVAL_VERSION T) $PROPS) 
(ADD2LNC '$GNAUTO $PROPS) 
(DEFPROP $NEXTLAYERFACTORSAVE $BOOLEAN MODE) 
(ADD2LNC '$NEXTLAYERFACTORSAVE $PROPS) 
(SETQ $LINENUM 152.) 
(SETQ *ALPHABET*
        (NCONC '(#\LOW_LINE #\PERCENT_SIGN #\LOW_LINE #\PERCENT_SIGN)
               *ALPHABET*)) 
(DSKSETQ $CONTEXT '$INITIAL) 
(RESTORE-FACTS '(((MGREATERP) $A 0.))) 