#lang scribble/manual

@(require "../fancyverb.rkt" "../defns.rkt")
@(require racket/system)

@;{
@(define (make-coq-repl)
  (define buffer (make-bytes 1000))

  (define-values (coq-in coq-out pid coq-err coq-msg)
    (apply values (process "coqtop" #;"/Applications/Coq-Platform~8.15~2022.04.app/Contents/Resources/bin//coqtop")))

  ; ignore welcome
  (read-line coq-in)
  (λ s
    (displayln (apply string-append s) coq-out)
    (flush-output coq-out)
    (define bs (read-bytes-avail! buffer coq-in))
    (bytes->string/utf-8 buffer #f 0 bs)))

@(define coq-repl (make-coq-repl))

@(define (coq . s)
   (define r (apply coq-repl s))
   (apply verbatim (append (list "Coq < ") s (list "\n" r))))
}

@title[#:tag "Coq-Basics"]{Coq Basics}

There are two themes that we'll be alternating between:

@itemlist[

@item{learning the verification-integrated programming language we'll use to build our verified compiler, and}

@item{learning the foundations of programming language theory in order to precisely define and state the compiler correctness property we hope to prove.}]

Eventually these two will intersect, but until then, we'll be
switching back and forth between the two themes.

Today we're going to work on the first in hopes of getting you
quickly up to speed.

We're going to be using the Coq Proof Assistant as our
verification-integrated programming language.  Coq is one of the most
mature and widely used langauges that fall within the
verification-integrated family of languages and tools.

There are many advanced features, as well see in due time, but today I
just want to give a sense of what it's like using Coq to do some
fairly mundane things that should feel pretty comfortable if you've
used a statically typed functional programming language (e.g. OCaml)
before.






@;{
@coq|{
Definition five := 5.
}|

Then we can compute:

@coq|{
Compute five + five.
}|



@fancy-ocaml[
#<<HERE
let rec foo x =
  match x with
  | Bar y -> 8
  | Foo (q,u) -> y
;;
HERE
]
...
}