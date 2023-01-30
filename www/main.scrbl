#lang scribble/manual
@(require scribble/core
	  scriblib/footnote
	  scribble/decode
	  scribble/html-properties
	  "defns.rkt"
	  "utils.rkt")

@(define (blockquote . strs)
   (make-nested-flow (make-style "blockquote" '(command))
		     (decode-flow strs)))


@(define accessible
   (style #f (list (js-addition "js/accessibility.js")
		   (attributes '((lang . "en"))))))

@title[#:style accessible @courseno]{: Advanced Compilers}

@image[#:style float-right]{img/Dore-munchausen-illustration.jpg}

@emph{@string-titlecase[semester], @year}

@emph{Lectures: Tuesday & Thursday, 12:30-1:45pm, CSI 1121}

@emph{Professor: @prof, TA: @ta}

CMSC 838E is a graduate-level advanced compilers course.  Its major
goal is to introduce the basics of programming language theory and the
use of verified programming techniques for implementing languages. 

@bold{Communications:} @link["https://discord.gg/szxynAkf"]{Discord}

@bold{Assumptions:} As a graduate-level course, the major assumption
is that you are self-directed and motivated to pursue your own
educational goals and that you can collaborate with others.  Coming in
to this course, you should know how to program in a functional
programming language like OCaml and have some familiarity with
programming in C and Assembly. The course is built upon the foundation
of @link["https://www.cs.umd.edu/class/fall2022/cmsc430/"]{CMSC 430},
but it's not assumed you've taken the course; only that you can work
through the material quickly.

@bold{Disclaimer:} All information on this web page is tentative and
subject to change. Any substantive change will be accompanied with an
announcement to the class.

@include-section{syllabus.scrbl}
@include-section{schedule.scrbl}
@include-section{notes.scrbl}
@include-section{project.scrbl}
@include-section{software.scrbl}
