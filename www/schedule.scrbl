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
	             @elem{}
		     @itemlist[
		       @item{Read: LF @link["https://softwarefoundations.cis.upenn.edu/lf-current/Basics.html"]{Basics},
		                      @link["https://softwarefoundations.cis.upenn.edu/lf-current/Induction.html"]{Induction}, &
				      @link["https://softwarefoundations.cis.upenn.edu/lf-current/Lists.html"]{Lists}}]))]

