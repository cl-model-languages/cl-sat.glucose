#|
  This file is a part of cl-sat.glucose project.
  Copyright (c) 2016 Masataro Asai (guicho2.71828@gmail.com)
|#


(in-package :cl-user)
(defpackage cl-sat.glucose.test-asd
  (:use :cl :asdf))
(in-package :cl-sat.glucose.test-asd)


(defsystem cl-sat.glucose.test
  :author "Masataro Asai"
  :mailto "guicho2.71828@gmail.com"
  :description "Test system of cl-sat.glucose"
  :license "LLGPL"
  :depends-on (:cl-sat.glucose
               :fiveam)
  :components ((:module "t"
                :components
                ((:file "package"))))
  :perform (test-op :after (op c) (eval (read-from-string "(every #'fiveam::TEST-PASSED-P (5am:run! :cl-sat.glucose))"))
))
