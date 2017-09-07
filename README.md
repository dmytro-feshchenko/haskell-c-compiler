# Fully-functional Scheme interpreter written in Haskell programming language
I'm interested in designing some interesting applications in different programming
languages (such as JavaScript, Java, Go, C#).

This project embodies my curiosity to Haskell programming language. Haskell is
different from any other programming languages. And it requires thinking differently.
It's very interesting to learn ML ('Meta language' - programming language). This
interest populates to all descendants of the language.

I'm going to design and build an awesome interpreter for Scheme language.
Scheme is a statically scoped and properly tail-recursive dialect of the Lisp
programming language invented by Guy Lewis Steele Jr. and Gerald Jay Sussman.

## Prerequisites:
To get this build and run you should install Haskell programming language and
prepare GHC compiler.

You can also use any other Haskell compilers (such as Hugs), but this program
was not tested with this compilers and it can lead to some side-effects and bugs.
Use it at your own risk.

## Getting started:
Clone the repository:

`git clone https://github.com/technoboom/haskell-scheme-interpreter`.

Build binary with GHC:

`ghc -o scheme_interpreter --make Haq.hs`

Run the binary:

`./scheme_interpreter`

## Project structure:
- Haq.hs - the main haskell source file
- haq.cabal - the cabal build description
- README - info
- LICENSE - license

## Stack:
- Haskell programming language
- Compiler: GHC
- Build system: Cabal
- Haddok for generating documentation from annotated Haskell source code
- Testing: HSpec (spec testing), HUnit (unit testing)
- Distribution: Hackage

## Resources:
- Scheme Language Standard: http://www.schemers.org/Documents/Standards/R5RS/HTML/
- Haskell documentation: https://www.haskell.org/documentation
- Cabal User Guide: http://www.haskell.org/cabal/users-guide/
- Haddok Doc: http://haskell.org/haddock/
- HSpec: http://hspec.github.io/
- HUnit: http://hackage.haskell.org/package/HUnit
- Hackage: http://hackage.haskell.org/packages/hackage.html
