#|
  This file is a part of cl-sat.glucose project.
  Copyright (c) 2016 Masataro Asai (guicho2.71828@gmail.com)
|#

(in-package :cl-user)
(defpackage :cl-sat.glucose.test
  (:use :cl
        :cl-sat
        :cl-sat.glucose
        :fiveam
        :trivia :alexandria :iterate))
(in-package :cl-sat.glucose.test)



(def-suite :cl-sat.glucose)
(in-suite :cl-sat.glucose)

;; run test with (run! test-name) 

(test cl-sat.glucose
  (finishes (solve '(and a b c) :glucose))
  (finishes (solve '(or a b c) :glucose))
  (finishes (solve '(and (or a !b c) d) :glucose))
  (finishes (solve '(and (and (and a))) :glucose))
  (finishes (solve '(not (and a b)) :glucose))
  (finishes (solve '(not (or a b)) :glucose)))
