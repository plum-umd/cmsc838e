#lang scribble/manual
@(require scribble/core racket/list)
@(require "defns.rkt")

@title[#:style 'unnumbered]{Schedule}

@(define (dt d) (nonbreaking (bold d)))

This schedule records the public outline of the Spring 2026 offering.

@tabular[#:style 'boxed
         #:sep @hspace[1] 
         #:row-properties '(bottom-border)
         (list (list @bold{Date} @bold{Topic} @bold{Notes})
               (list @dt{Jan 27} @elem{Snow week} @elem{No class})
               (list @dt{Jan 29} @elem{Snow week} @elem{No class})
               (list @dt{Feb 3}
                     @elem{Introduction and Overview}
                     @elem{Read: @link["https://lean-lang.org/functional_programming_in_lean/"]{Functional Programming in Lean}})
               (list @dt{Feb 5}
                     @elem{Operational Semantics}
                     @elem{Read: @link["https://lean-lang.org/theorem_proving_in_lean4/"]{Theorem Proving in Lean 4}})
               (list @dt{Feb 10} @elem{Introduction to Lean; Operational Semantics in Lean} @elem{Due: Paper reading proposal})
               (list @dt{Feb 12} @elem{Proving Semantics Equivalences} @elem{})
               (list @dt{Feb 17} @elem{Stack machine} @elem{})
               (list @dt{Feb 19} @elem{Compiler Correctness for Arithmetic} @elem{Due: Paper write-up})
               (list @dt{Feb 24} @elem{Variables and binding} @elem{Due: Inductive proof exercise})
               (list @dt{Feb 26} @elem{Type Systems} @elem{})
               (list @dt{Mar 3} @elem{Semantic Type Soundness} @elem{})
               (list @dt{Mar 5} @elem{Function Definitions and Calls} @elem{})
               (list @dt{Mar 10} @elem{Tuples and Projections; Heaps and Pointers} @elem{})
               (list @dt{Mar 12} @elem{Lambda: Syntax, Semantics, Types} @elem{Due: Type soundness proof exercise})
               (list @dt{Mar 17} @elem{Spring Break} @elem{No class})
               (list @dt{Mar 19} @elem{Spring Break} @elem{No class})
               (list @dt{Mar 24} @elem{Termination via Logical Relation} @elem{})
               (list @dt{Mar 26} @elem{Type Inferece; Principal Types; Unification} @elem{})
               (list @dt{Mar 31} @elem{Compiling Lambda} @elem{})
               (list @dt{Apr 2} @elem{Compiler Correctness for Functions} @elem{Due: Extended type soundness proof exercise})
               (list @dt{Apr 7} @elem{Compiler Correctness for Functions} @elem{})
               (list @dt{Apr 9} @elem{Project Overview} @elem{})
               (list @dt{Apr 14} @elem{Compiler Correctness for Functions} @elem{})
               (list @dt{Apr 16} @elem{Recursive Types; Type Soundness via Step-Indexed Logical Relation} @elem{})
               (list @dt{Apr 21} @elem{Special Topic: GTLC} @elem{})
               (list @dt{Apr 23} @elem{Gradual Guarantees} @elem{})
               (list @dt{Apr 28} @elem{Gradual Type Inference} @elem{})
               (list @dt{Apr 30} @elem{Prinicipal Gradual Typings} @elem{})
               (list @dt{May 5} @elem{Safe Gradual Type Migration} @elem{})
               (list @dt{May 7} @elem{Wrap-up} @elem{})
               (list @dt{May 14} @elem{Final exam period} (elem final-date)))]
