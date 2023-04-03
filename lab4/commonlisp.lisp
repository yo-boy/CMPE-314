;; question 1

(defun fun ()
  ;; here I will use a let form instead of a while loop-
  ;; since a let form evaluates the contents of the body once
  ;; here we declare the first definition of the variables
  (let((a 15)(b 20)(c 25))
    ;; then we declare the second definition of the variables, for usage inside-
    ;; the body of this let form (in this scope) this definition will be used
    (let ((b 30)(c 35)(d 40))
      ;; here we only print the variables that have been defined so far
      (format t "1: a=~a b=~a c=~a d=~a~%" a b c d)
      ;; in this let form we declare the third definition
      (let ((c 45) (d 50) (e 55))
	;; here we print all of the letters including e since it is now declared
	(format t "2: a=~a b=~a c=~a d=~a e=~a~%" a b c d e))
      ;;this is at the end of the second declaration so the variable e isn't defined here
      (format t "3: a=~a b=~a c=~a d=~a~%" a b c d))
    ;; and this is the end of the firt declaration so d isn't defined here
    (format t "4: a=~a b=~a c=~a~%" a b c)))
;; we call the function
(fun)

;; this common lisp program outputs the following

;; 1: a=15 b=30 c=35 d=40
;; 2: a=15 b=30 c=45 d=50 e=55
;; 3: a=15 b=30 c=35 d=40
;; 4: a=15 b=20 c=25


;; question 2

(defun fun1 ()
  (let (b c d)
    ;; here NIL is printed since no value is assigned to the variables in this scope yet
    (format t "b=~a c=~a d=~a~%" b c d)
    (setq b 4)
    (setq c 5)
    (setq d 6)
    (format t "b=~a c=~a d=~a~%" b c d)))

(defun fun2 ()
  (let ((c 1) (d 6) (e 9))
    (format t "c=~a d=~a e=~a~%" c d e)))

(defun fun3 ()
  (let ((d 14) (e 15) (f 16))
    (format t "d=~a e=~a f=~a~%" d e f)))

(defun main()
  ;; these variables can only be accessed in the scope of this function unlike global variables
  ;; so here they aren't changed by what we do to variables that have the same name inside a seperate function
  (let ((a 1) (b 2) (c 3))
    (format t "a=~a b=~a c=~a~%" a b c)
    (fun1)
    (fun2)
    (fun3)
    (format t "a=~a b=~a c=~a~%" a b c)))

(main)

;; this common lisp program outputs the following

;; a=1 b=2 c=3
;; b=NIL c=NIL d=NIL
;; b=4 c=5 d=6
;; c=1 d=6 e=9
;; d=14 e=15 f=16
;; a=1 b=2 c=3
