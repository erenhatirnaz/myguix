(define-module (myguix packages wm)
  #:use-module (guix gexp)
  #:use-module (guix utils)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages wm)
  #:use-module (myguix packages fonts))

(define-public stumpwm-terminus
  (package
   (inherit stumpwm)
   (name "stumpwm-terminus")
   (inputs
    `(("font-terminus-ll2-td1" ,font-terminus-ll2-td1)
      ,@(package-inputs stumpwm)))
   (synopsis "StumpWM with Terminus font")))
