(require "asdf")

(load "hw.lisp")

(setq uiop:*image-entry-point* #'main)

(uiop:dump-image "hello.exe" :executable t)

;; run with 
;; sbcl --script hello-bin.lisp

;; or run this in sbcl specific without uiop
;; (load "hw.lisp")
;; (sb-ext:save-lisp-and-die "sbcl-hello.exe" :toplevel #'main :executable t)



