(define-module (myguix packages fonts)
  #:use-module (guix gexp)
  #:use-module (guix utils)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages fonts))

(define-public font-terminus-ll2-td1
  (package
   (inherit font-terminus)
   (name "font-terminus-ll2-td1")
   (version "4.49.1")
   (source
    (origin
     (method url-fetch)
     (uri (string-append "mirror://sourceforge/terminus-font/terminus-font-"
                         (version-major+minor version)
                         "/terminus-font-" version ".tar.gz"))
     (sha256
      (base32 "0yggffiplk22lgqklfmd2c0rw8gwchynjh5kz4bz8yv2h6vw2qfr"))
     (patches
      (parameterize
          ((%patch-path
            (map (lambda (directory)
                   (string-append directory "/myguix/packages/patches"))
                 %load-path)))
        (search-patches "font-terminus-ll2.patch"
                        "font-terminus-td1.patch")))))))
