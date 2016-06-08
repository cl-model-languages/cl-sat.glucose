#|
  This file is a part of cl-sat.glucose project.
  Copyright (c) 2016 Masataro Asai (guicho2.71828@gmail.com)
|#

(in-package :cl-user)
(defpackage :cl-sat.glucose.test
  (:use :cl
        :cl-sat.glucose
        :fiveam
        :trivia :alexandria :iterate :cl-sat))
(in-package :cl-sat.glucose.test)



(def-suite :cl-sat.glucose)
(in-suite :cl-sat.glucose)

;; run test with (run! test-name) 

(test cl-sat.glucose

  )



