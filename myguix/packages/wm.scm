(define-module (myguix packages wm)
  #:use-module (guix gexp)
  #:use-module (guix utils)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages wm))

(define-public stumpwm-terminus
  (package
   (inherit stumpwm)
   (name "stumpwm-terminus")
   (inputs
    `(("font-terminus-ll2-td1" ,font-terminus-ll2-td1)
      ,@(package-inputs emacs)))
   (synopsis "StumpWM with Terminus font")))
