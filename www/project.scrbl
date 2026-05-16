#lang scribble/manual
@(require "defns.rkt")
@title[#:style '(unnumbered)]{Project}


This page records the project structure used for the Spring 2026
offering.

There was a final course project completed over the last several
weeks of the course. The project involved conducting a verification
project related to programming languages and compilers.

@section{Project Proposal}

Due: during the second half of the semester

The project proposal is a short (2-4 page) document that sketches out
the verification problem and proposed solution which will be
investigated in your project.

The project proposal should have a descriptive title and list all of the
co-authors contributing to this project. You may work individually or with any
number of collabatorators.

The project proposal should motivate a verification problem within the
field of programming languages. Your project does NOT need to be
novel, although a novel project has a better chance of leading to a
publishable result. You should take inspiration from papers published
in reputable conferences or journals. For PL, the main conferences are
PLDI, ICFP, POPL, and OOPSLA, but there are many more. If you'd like
guidance on other venues, please ask.

The project must be a verification project.  The options are:

@itemlist[
@item{Mechanize an existing research paper (in any research area).}
@item{Add exceptions to the language and prove correctness for an extended
version of the stack machine.}
@item{Prove correctness for the final compiler targeting the register machine.}
@item{Something else, subject to instructor approval.}
]

The best way to motivate and discuss a problem is to use concrete examples
to bolster the discussion.

The final deliverables for each project included:

@itemlist[

@item{A full project report, which should look more or less like a conference or
workshop paper (but will not be evaluated based on novelty).}

@item{A software artifact that provides support for the claims made in the
report.}

]

The project proposal should sketch a proposed approach to the problem identified
in the proposal. Describe what methods or techniques will be used. The proposal
should also describe how the success of the proposed solution will be measured.
This should include theorems to be stated and proved, the definitions
needed to state them, and any supporting examples or tests.

The proposal should include a discussion of related work from the literature and
cite each reference that is discussed. The proposal should identify a few
(between 1 and 3) primary references which will closely guide the approach of
the project, but also discuss several (at least two, but potentially many more)
secondary references that are closely related by not directly guiding the
proposed work.

Projects should be scoped in a way that at least preliminary results can be
achieved and reported on by the end of the course. Good projects proposals have
incremental milestones so that results can still be shown even if the work isn't
fully completed by the deadline (and it's often good to think about a larger
scope for a project in case you're interested in continuing with it after the
semester ends.)

@subsection{Project ideas}

This list of project options is intended to help get you started if
you're not sure what to work on.

@itemlist[

@item{Mechanize an existing research paper (in any research area).}
@item{Add exceptions to the language and prove correctness for an extended
version of the stack machine.}
@item{Prove correctness for the final compiler targeting the register machine.}
@item{Something else, subject to instructor approval.}

]

@section{Artifact}

Due: end of semester

All final projects must be accompanied by a mechanized software
artifact. Often these artifacts are Lean developments that formalize
definitions and prove correctness, soundness, termination, or related
properties.

@section{Project Report}

Due: end of semester

The full project report should describe the chosen verification
problem and explain why it is interesting or important.  It should
state the claims that are validated by machine-checked proof and
identify where those claims appear in the artifact.

The report should also describe the high-level structure of the proof,
including the main definitions, invariants, and theorems.  It should
make clear how the main theorems fit together to establish the
project's central correctness, soundness, termination, or other
verification claim.

Finally, the report should state any limitations, incomplete pieces,
or issues that could not be overcome by the deadline.
