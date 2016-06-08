#|
  This file is a part of cl-sat.glucose project.
  Copyright (c) 2016 Masataro Asai (guicho2.71828@gmail.com)
|#

#|
  Common Lisp API to glucose

  Author: Masataro Asai (guicho2.71828@gmail.com)
|#



(defsystem cl-sat.glucose.build
  :version "0.1"
  :author "Masataro Asai"
  :mailto "guicho2.71828@gmail.com"
  :license "LLGPL"
  :description "Common Lisp API to glucose"
  :perform (compile-op (op c)
                       (uiop:run-program (format nil "make -C ~a"
                                                 (asdf:system-source-directory :cl-sat.glucose.build))
                                         :output t :error-output t)))
