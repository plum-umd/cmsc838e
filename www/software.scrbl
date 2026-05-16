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
 @item{Lean}
]

@section{Installing Lean}

The recommended setup is Lean 4 with Visual Studio Code:

@itemlist[
 @item{Install @link["https://code.visualstudio.com/"]{Visual Studio Code}.}
 @item{Install the official @link["https://marketplace.visualstudio.com/items?itemName=leanprover.lean4"]{Lean 4}
       VS Code extension.  In VS Code, open the Extensions sidebar,
       search for @tt{Lean 4}, and install the extension published by
       @tt{leanprover}.}
 @item{Follow the @link["https://lean-lang.org/lean4/doc/quickstart.html"]{Lean
       quickstart} to create or open a Lean project.  The extension
       will guide you through installing the Lean toolchain using
       @tt{elan} if it is not already installed.}
]

After installation, open a @tt{.lean} file in VS Code and check that
the Lean infoview appears.  You can also confirm the command-line tools
with @tt{lean --version} and @tt{lake --version}.

