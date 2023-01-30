#lang racket
(provide (all-defined-out))
(require (only-in xml cdata)
         scribble/core
         scribble/base
         scribble/html-properties
         racket/runtime-path)

(define-runtime-path here ".")

(define PANDOC
  (format "pandoc ~a -f markdown -t html"
          (apply string-append
                 (map (λ (f) (format "--syntax-definition ~a " (build-path here "xml" f)))
                      '("fish.xml" "nasm.xml" "ocaml.xml")))))

(define (fancy-c s)
  (fancyverbatim "c" s))

(define (fancy-nasm s)
  (fancyverbatim "nasm" s))

(define (fancy-make s)
  (fancyverbatim "makefile" s))

(define (fancy-ocaml s)
  (fancyverbatim "ocaml" s))

(define (fancyverbatim l . d)
  (define in (apply string-append (append (list "```" l "\n") d '("\n```"))))
  (with-input-from-string in
    (lambda ()
      (elem #:style (style #f (list 
                               (xexpr-property
                                (cdata #f #f
                                       (with-output-to-string
                                         (lambda ()
                                           (system PANDOC))))
                                (cdata #f #f ""))))))))
