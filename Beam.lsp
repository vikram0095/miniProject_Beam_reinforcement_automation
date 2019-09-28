

	
	
	(defun dtr (x)

	(* pi (/ x 180.0))
 
)	

(defun main()
(setq n (getint "Number of beams :"))
(setq po (sbeam))
(repeat n
(setq temp po)
(setq lb (getdist "\nEnter beam length(c/c): "))
(setq lr (getdist "\nEnter length of extra steel: "))
(setq  label1 ( getstring T "\nEnter label 1 : "))
(setq  label2 ( getstring T "\nEnter label 2 : "))
(setq  label3 ( getstring T "\nEnter label 3 : "))
(setq  label4 ( getstring T "\nEnter label 4 : "))
(setq  label5 ( getstring T "\nEnter label 5 : "))
(setq  label6 ( getstring T "\nEnter label 6 : "))

(setq po (beam temp lb lr label1 label2 label3 label4 label5 label6) )
)
(ebeam po)
)

(defun sbeam()


(setq oldsnap (getvar "osmode"))
	;save snap settings
 
	(setq oldblipmode (getvar "blipmode"))
	;save blipmode setting
 
;********************************************************
	;Switch OFF System Variables
(setvar "osmode" 0)
	;Switch OFF snap
 
	(setvar "blipmode" 0)
	
	
	
(setq p1 (getpoint "\nCenter Point "))

(command "Layer" "M" "concrete cover" "")
(setq p2 (polar p1  (dtr 90.0) 0.3786 ) )
(setq p3 (polar p1  (dtr 270.0) 0.3786 ) )
(setq p4 (polar p2  (dtr 0.0) 0.15 ) )
(setq p5 (polar p3  (dtr 0.0) 0.15 ) )
(command "line" p5 p3 p2 p4 "")
(command "Layer" "M" "bars" "")
(setq p2 (list (+ (car p1) 0.0557) (+ (cadr p1) 0.1486) ) )
(setq p3 (polar p2 (dtr 0.0) (- 0.15 0.0557)) )
(setq p4 (polar p2 (dtr 270.0) 0.4472) )
(command "line" p3 p2 p4 "")


(setq p2 (list (+ (car p1) (* 0.0557 2)) (- (cadr p1) 0.1486) ) )
(setq p3 (polar p2 (dtr 0.0) (- 0.15 (* 2 0.0557))) )
(setq p4 (polar p2 (dtr 90.0) 0.4472) )
(command "line" p3 p2 p4 "")


(setq p2 (list (+ (car p1) 0.0557) (+ (cadr p1) 0.0929) ) )
(setq p3 (polar p2 (dtr 0.0) (- 0.15 0.0557)) )
(command "line" p3 p2 "")
(setq p2 (list (+ (car p1) 0.0557) (- (cadr p1) 0.0929) ) )
(setq p3 (polar p2 (dtr 0.0) (- 0.15 0.0557)) )
(command "line" p3 p2 "")

(setq p2 (polar p1  (dtr 0.0) 0.15 ) )


(setvar "osmode" oldsnap)
	;Reset snap
 
	(setvar "blipmode" oldblipmode)
	;Reset blipmode
	(princ p2)
)



(defun ebeam(pe)


(setq oldsnap (getvar "osmode"))
	;save snap settings
 
	(setq oldblipmode (getvar "blipmode"))
	;save blipmode setting
 
;********************************************************
	;Switch OFF System Variables
(setvar "osmode" 0)
	;Switch OFF snap
 
	(setvar "blipmode" 0)
	
	
	
(setq p1 (list (+ (car pe) 0.15) (cadr pe) ) )

(command "Layer" "M" "concrete cover" "")
(setq p2 (polar p1  (dtr 90.0) 0.3786 ) )
(setq p3 (polar p1  (dtr 270.0) 0.3786 ) )
(setq p4 (polar p2  (dtr 180.0) 0.15 ) )
(setq p5 (polar p3  (dtr 180.0) 0.15 ) )
(command "line" p5 p3 p2 p4 "")
(command "Layer" "M" "bars" "")
(setq p2 (list (- (car p1) 0.0557) (+ (cadr p1) 0.1486) ) )
(setq p3 (polar p2 (dtr 180.0) (- 0.15 0.0557)) )
(setq p4 (polar p2 (dtr 270.0) 0.4472) )
(command "line" p3 p2 p4 "")


(setq p2 (list (- (car p1) (* 0.0557 2)) (- (cadr p1) 0.1486) ) )
(setq p3 (polar p2 (dtr 180.0) (- 0.15 (* 2 0.0557))) )
(setq p4 (polar p2 (dtr 90.0) 0.4472) )
(command "line" p3 p2 p4 "")


(setq p2 (list (- (car p1) 0.0557) (+ (cadr p1) 0.0929) ) )
(setq p3 (polar p2 (dtr 180.0) (- 0.15 0.0557)) )
(command "line" p3 p2 "")
(setq p2 (list (- (car p1) 0.0557) (- (cadr p1) 0.0929) ) )
(setq p3 (polar p2 (dtr 180.0) (- 0.15 0.0557)) )
(command "line" p3 p2 "")

(setq p2 (polar p1  (dtr 0.0) 0.15 ) )


(setvar "osmode" oldsnap)
	;Reset snap
 
	(setvar "blipmode" oldblipmode)
	;Reset blipmode
	(princ p2)
)



(defun beam (p1 lb lr label1 label2 label3 label4 label5 label6 /  p2 p3 p4 p5 p6 p7 p8 p9 p10 lb lr c1 c2 c2 c4 d1 d2 d3 d4)


(setq oldsnap (getvar "osmode"))
	;save snap settings
 
	(setq oldblipmode (getvar "blipmode"))
	;save blipmode setting
 
;********************************************************
	;Switch OFF System Variables
(setvar "osmode" 0)
	;Switch OFF snap
 
	(setvar "blipmode" 0)
	
(setq s1 0.0929 )
(setq s2 0.1486 )
(setq s3 0.2286 )
(setq hcolw 0.15 )



(command "Layer" "M" "bars" "")
(setq p2 (polar p1  (dtr 90.0) s2 ) )
(setq p3 (polar p2  (dtr 0.0) lb ) )
(setq d1 (polar p2  (dtr 0.0) (/ lb 2) ))
(setq d2 (polar d1  (dtr 90.0) 0.5 ))

(command "mleader" d1 d2 label1)
(setq p4 (polar p1  (dtr 270.0) s2 ) )
(setq p5 (polar p4  (dtr 0.0) lb ) )
(setq d3 (polar p4  (dtr 0.0) (/ lb 2) ))
(setq d4 (polar d3  (dtr 270.0) 0.5 ))
(command "mleader" d3 d4 label2)
(setq p6 (list (+ (car p1) hcolw) (+ (cadr p1) s3) ) )
(setq p7 (polar p6  (dtr 0.0) (- lb (* hcolw 2))) )

(setq p8 (list (+ (car p1) hcolw) (- (cadr p1) s3) ) )
(setq p9 (polar p8  (dtr 0.0) (- lb (* hcolw 2)) ) )

(command "line" p2 p3 "")
(command "line" p4 p5 "")

(command "Layer" "M" "concrete cover" "")

(command "line" p6 p7 "")
(command "line" p8 p9 "")
;left col
(setq c3 (polar p6  (dtr 90.0) hcolw) )
(setq c4 (polar p8  (dtr 270.0) hcolw ) )


(setq c1 (polar c3  (dtr 180.0) hcolw) )
(setq c2 (polar c4  (dtr 180.0) hcolw ) )

(command "line" p6 c3 c1 "")
(command "line" p8 c4 c2 "")


(setq c3 (polar c1  (dtr 90.0) hcolw) )
(setq c4 (polar c2  (dtr 270.0) hcolw ) )

(command "line" c3 c4  "")
;right col
(setq c3 (polar p7  (dtr 90.0) hcolw) )
(setq c4 (polar p9  (dtr 270.0) hcolw ) )


(setq c1 (polar c3  (dtr 0.0) hcolw) )
(setq c2 (polar c4  (dtr 0.0) hcolw ) )

(command "line" p7 c3 c1 "")
(command "line" p9 c4 c2 "")


(setq c3 (polar c1  (dtr 90.0) hcolw) )
(setq c4 (polar c2  (dtr 270.0) hcolw ) )

(command "line" c3 c4  "")
(command "Layer" "M" "bars" "")

;left  inf
(setq p2 (polar p1  (dtr 90.0) s1 ) )
(setq p3 (polar p2  (dtr 0.0) (+ lr hcolw ) ))
(setq d1 (polar p2  (dtr 0.0) (+ (/ lr 2) hcolw) ))
(setq d2 (polar d1  (dtr 90.0) 0.56))
(command "mleader" d1 d2 label3)

(setq p4 (polar p1  (dtr 270.0) s1 ))
(setq p5 (polar p4  (dtr 0.0) (+ lr hcolw ) ) )

(setq d3 (polar p4  (dtr 0.0) (+ (/ lr 2) hcolw) ))
(setq d4 (polar d3  (dtr 270.0) 0.56))
(command "mleader" d3 d4 label4)

(command "line" p2 p3 "")
(command "line" p4 p5 "")

(setq p7 (polar p3  (dtr 300.0) 0.07) )
(setq p6 (polar p5  (dtr 60.0) 0.07) )

(command "line" p3 p7 "")
(command "line" p5 p6 "")

;right inf
(setq p7 (polar p2  (dtr 0.0) lb) )
(setq p6 (polar p7  (dtr 180.0) (+ lr hcolw )) )

(setq d1 (polar p6  (dtr 0.0) (/ lr 2) ))
(setq d2 (polar d1  (dtr 90.0) 0.56))
(command "mleader" d1 d2 label5)

(setq p9 (polar p4  (dtr 0.0) lb ) )
(setq p8 (polar p9  (dtr 180.0) (+ lr hcolw )) )

(setq d3 (polar p8  (dtr 0.0) (/ lr 2) ))
(setq d4 (polar d3  (dtr 270.0) 0.56))
(command "mleader" d3 d4 label6)

(command "line" p6 p7 "")
(command "line" p8 p9 "")

(setq p7 (polar p6  (dtr 240.0) 0.07) )
(setq p9 (polar p8  (dtr 120.0) 0.07) )

(command "line" p6 p7 "")
(command "line" p8 p9 "")


(setq p3 (polar p1  (dtr 0.0) lb ) )

(setvar "osmode" oldsnap)
	;Reset snap
 
(setvar "blipmode" oldblipmode)
;Reset blipmode

(princ p3)
)







