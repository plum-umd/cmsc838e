#lang scribble/manual
@(require scribble/core racket/list)
@(require (for-label racket))
@(require redex/reduction-semantics
          redex/pict (only-in pict scale))

@(require scribble/examples racket/sandbox)

@(require "defns.rkt")

@(define core-racket
  (parameterize ([sandbox-output 'string]
                 [sandbox-error-output 'string]
                 [sandbox-memory-limit 50])
    (make-evaluator 'racket/base)))

@(core-racket '(require racket/match))

@(define-syntax-rule (ex e ...) (examples #:eval core-racket #:label #f e ...))



@(define-syntax-rule (render-grammar L)
   (scale (render-language L) 1))

@(define-syntax-rule (render-grammar/nts L nts)
   (scale (render-language L #:nts nts) 1))



@title[#:style 'unnumbered]{Software}

This course will make use of the following software:

@itemlist[
 @item{Coq}
]

@section{Installing Coq}

Follow instructions from @link["https://coq.inria.fr/download"]{The
Coq Proof Assistant installation} page.

There are several different ways to install Coq, so please choose what
works best for your system.  For me, using homebrew was the easiest.

You may also want to install Proof General.


