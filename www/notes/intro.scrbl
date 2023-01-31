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

@title[#:tag "Intro"]{Introduction and Overview}

Welcome to CMSC 838E: Advanced Topics in Programming Languages;
Compiler Construction, aka Advanced Compilers.

This is a graduate-level course on programming language research.  In
it we will explore research-level concepts related to the design and
implementation of programming languages.

I try to design this course with these two constituencies in mind:

@itemlist[

@item{early career PhD students who are primarily interested in
research areas other than programming languages, and}

@item{ambitous undergraduate students who want to go deeper than CMSC
430 and are interested in what research is all about and perahps
considering going to graduate school.}

]

For both of these groups, I try to give a sense of what PL research is
all about.  This means reading some papers from the PL literature and
studying the tools and techniques commonly used in these papers.  I
want to give students a sense of the values of the PL research
community and the intellectual tools they use to communicate and
evaluate ideas.

It also means @emph{doing} something in this domain.  Computer
science, and CS research in particular, is not a subject that can be
passively consumed.  You need to get your hands dirty doing it to
really internalize what's going on.  So to that end, we will be
engaging collectively in some PL research.  We will build something
together.


@section{Expectations for students}

While I try to design the course for two groups with different
experiences and priorities, I have the same expections for all
students involved in this class.  I expect that you are self-directed
and motivated to pursue your own educational goals and that you can
collaborate with others.

Compared to an undergraduate course, graduate classes are really meant
to give you an opportunity to pursue your own goals.  I have some
minimum expectations that every student much meet in order to pass the
class, but beyond that it's really up to you to put in what you want
to get out of the class.

How deep you go is really up to you.  If you're a graduate student who
wants to work in PL, there should be enough here for you to
potentially find a research topic for your dissertation or at least
get a sense of the lanscape in which you might work.  If you're not a
PL grad student, you should at least get a sense of this area.  For
undergraduate students, this is an opportunity to learn what research
and graduate school are all about.  If you go deep and work hard, you
will have a leg up when applying to graduate programs.

It's also OK to not go deep and to only meet the minimum expectations.
I understand that everyone has different priorities and constraints on
their time.  I will try to be explicit about these minimum
expectations and provide feedback on whether you're meeting them.

Here's what I expect of every student:

@itemlist[

@item{Show up to class and be an engaged member of the classroom.}

@item{Do the weekly work that I assign, which can consist of a mixture
of reading, writing, and coding.}

@item{Treat everyone in our class with courtesy and respect.  It's
encouraged that we have different opinions and perspectives.  I hope
we can engage in rigorous and spirited debates.  It's OK to attack
ideas, it is not OK to attack people.}

]

@section{Expectations for staff}

The course staff will also strive to treat every person with courtesy
and respect.  We will arrive prepared for every class and respond in a
timely manner when communicating.  Our goal is to be here for you and
provide the resources you need to succeed.

If you find that course staff are not meeting these expectations, you
can submit anonymous feedback @link[anon-feedback-url]{here}.


@section{What's this course about?}

This course changes from year to year, but every year I try to deliver on two goals:

@itemlist[
@item{Convey the basics of programming language research}
@item{Familiarize students with some aspect of cutting edge PL research}
]

To do that this year, we are going to focus on using so-called
@bold{verification-integrated programming languages}.  These languages
take the kind of behavioral guarantees offered by statically typed
languages and turn the dial to 11.  They have much more sophisticated
types and these types can express very strong invariants about a
program.

Verification-integrated languages have seen very active development in
the PL community in the past couple of decades, leading to some
amazing success stories, such as
@link["https://compcert.org/"]{CompCert} which is a formally verified
C compiler that is gcc compatible and
@link["https://sel4.systems/"]{seL4}, a verified Linux microkernal.

There are many languages that fall in to the category of
verifcation-integrated PL, each occupying different points in the
design space.  Some that you might want to check out, in no particular
order, are:

@itemlist[
@item{F*}
@item{Lean}
@item{Agda}
@item{Idris}
@item{Isabelle/HOL}
@item{Liquid Haskell}
@item{Coq}
]

The last one, Coq, is probably the most mature and widely used and is
the one we'll be focusing on in this course.  This is in some sense an
arbitrary choice; we could've gone with any of the others on this
list.  I chose Coq because there's a fair amount of local expertise on
campus, some students have used it in CMSC 631, it takes some strong
design cues from OCaml, which many folks here know, and there's
excellent material that covers how to program and prove in Coq.

The thing we going to build is a @bold{formally verified compiler for
the CMSC 430 functional programming language}.  This will require us
to cover all the basic foundational issues of defining a language and
its semantics and stating and proving our compiler correctness claim,
thus satisfying the first goal.  Doing all of this work in
verification language like Coq will satisfy the second, since building
verified compilers is itself an active area of research in the PL
community.  Our research objective is very similar to that of the
@link["https://cakeml.org/"]{Cake ML} project, although much smaller
in scope.

We will do this following a similar approach to that taking in CMSC
430, which is to incrementally grow the language over time, starting
from a very simple subset of the language we hope to eventually build.

I don't know exactly how far we will get.  This is not something I've
done before, so I will be learning right alongside you.  But in some
sense, this is the essence of research: operating at the boundaries of
your knowledge and trying to push further.  It can be uncomfortable at
times, and frustrutrating, but it also can be a deeply satisfying
experience which I hope you'll enjoy.



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