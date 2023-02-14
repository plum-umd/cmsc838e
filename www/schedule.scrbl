#lang scribble/manual
@(require scribble/core racket/list)
@(require "defns.rkt")

@title[#:style 'unnumbered]{Schedule}

@(define (wk d) (nonbreaking (bold d)))

@tabular[#:style 'boxed
         #:sep @hspace[1] 
         #:row-properties '(bottom-border)
         (list (list @bold{Week} @bold{Topic} @bold{Work})
               (list @wk{1}
	       	     @secref["Intro"]
		     @itemlist[
		       @item{Read: @link["https://semantic-domain.blogspot.com/2022/09/the-golden-age-of-pl-research.html"]{The Golden Age of PL Research}}
                       @item{Survey: @link["https://umd.instructure.com/courses/1339016/quizzes/1595419"]{Getting to know you}}])
               (list @wk{2}
	             @secref["Coq-Basics"]
		     @itemlist[
		       @item{Read: LF @link["https://softwarefoundations.cis.upenn.edu/lf-current/Basics.html"]{Basics},
		                      @link["https://softwarefoundations.cis.upenn.edu/lf-current/Induction.html"]{Induction}, &
				      @link["https://softwarefoundations.cis.upenn.edu/lf-current/Lists.html"]{Lists}}])
               (list @wk{3}
	             @elem["Basic Mechanics of Operational Semantics"]
		     @itemlist[
		       @item{Slides: @link["http://www.cs.umd.edu/~dvanhorn/slides/plmw-icfp-2020.pdf"]{PLMW 2020}}
		       @item{Read: @link["http://siek.blogspot.com/2013/05/type-safety-in-three-easy-lemmas.html"]{Type Safety in Three Easy Lemmas}}
		       @item{Read: LF @link["https://softwarefoundations.cis.upenn.edu/lf-current/Poly.html"]{Poly}, @link["https://softwarefoundations.cis.upenn.edu/lf-current/Tactics.html"]{Tactics}}])
               (list @wk{4}
	             @elem["Mechanizing Basic Mechanics"]
		     @itemlist[
		       @item{Read: LF @link["https://softwarefoundations.cis.upenn.edu/lf-current/Logic.html"]{Logic},
		                      @link["https://softwarefoundations.cis.upenn.edu/lf-current/IndProp.html"]{IndProp},
				      @link["https://softwarefoundations.cis.upenn.edu/lf-current/Maps.html"]{Maps}}])
)]

