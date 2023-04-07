;; we make a global array here to use for the first question
(defparameter averageArray (make-array 4 :initial-contents '(4 5 28 2)))

;; this line prints the average of an array, the reduce function applies the '+' operation on all elements of the array and returns the result, then we divide that sum by the length of the array
(format t "~F~%" (/ (reduce #'+ averageArray) (array-dimension averageArray 0)))

;; we define the global array of days in a week here
(defparameter dayArray (make-array 7 :initial-contents '("Monday" "Tuesday" "Wednesday" "Thursday" "Friday" "Saturday" "Sunday")))

;; this function asks the user for an integer and then prints the day on that index, we check if the input is an integer to avoid errors
(defun printDayFromInput ()
    (format t "~%print day from list, enter an integer:")
    (let ((x 0))
        (setq x (read)) ;; we read the input here
        (if (integerp x)
            (aref dayArray x)   ;; this statement returns the object at index x
            (format t "~%enter only an integer after calling the function again."))))

(printDayFromInput) ;; we call our function
