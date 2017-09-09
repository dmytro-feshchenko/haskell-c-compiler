# Tiny C compiler written in Haskell programming language
I'm interested in designing some interesting applications in different programming
languages (such as JavaScript, Java, Go, C#).

This project embodies my curiosity to Haskell programming language. Haskell is
different from any other programming languages. And it requires thinking differently.

I'm going to design and build an awesome compiler for C language.

## Prerequisites:
To get this build and run you should install Haskell programming language and
prepare GHC compiler.

You can also use any other Haskell compilers (such as Hugs), but this program
was not tested with this compilers and it can lead to some side-effects and bugs.
Use it at your own risk.

## Getting started:
Clone the repository:

`git clone https://github.com/technoboom/haskell-c-compiler`.

## Build the project:
The basic command for building your project is:

`stack build`

Very likely, you'll need to first tell Stack to install the appropriate GHC
version for your project. You can do this with:

`stack setup`

or by using the --install-ghc option to stack build:

`stack --install-ghc build`

## Running executables:

Let's suppose your project defines an executable called my-executable. How do you run it? There are three common ways:

1. `stack exec my-executable` will modify your `PATH` variable to include a number of additional directories, including the internal executable destination, and your build tools (like ghc).

2. `stack exec which my-executable` will use the `which` command to find the full path to your executable, which you could then run, without the additional modifications that `stack exec` implies. If you want to be clever, you could do something like this from your shell:

`$ $(stack exec which my-executable)`

3. The `stack install` command will copy your executables into a user-specific directory, such as `$HOME/.local/bin` on POSIX systems. The directory will be printed to your console.

## Testing:
Testing is also straightforward:

`stack test`

As it happens, this is just a convenience shortcut for:

`stack build --test`

The same applies to stack bench (for benchmarking) and stack haddock (for building Haddock documentation). What this means is that you can compose these flags to build the code, build the docs, run tests, and run benchmarks:

`stack build --test --bench --haddock`

## Common flags:
- `--file-watch` will run build in file-watch mode, where it will wait for changes to files and then automatically rebuild. This can be very convenient to run in a terminal while simulatenously editing in another window.
- `--fast` will disable optimizations
- `--pedantic` turns on `-Wall` `-Werror` for GHC (all warnings on, and warnings treated as errors)

So throwing a few of these together:

`stack build --test --file-watch --fast --pedantic`

## Project structure:
- app/Main.hs - the main haskell source file
- src/Lib.hs - the core lib source file
- test/Spec.hs - the spec source file
- haskell-c-compiler.cabal - the cabal build description
- Setup.hs
- stack.yaml
- ChangeLog.md - change log
- README - info
- LICENSE - license

## Stack:
- Haskell programming language
- Compiler: GHC
- Build system: Stack
- Haddok for generating documentation from annotated Haskell source code
- Testing: HSpec (spec testing), HUnit (unit testing)
- Distribution: Hackage
- Lint: HLint package

## Resources:
- Haskell documentation: https://www.haskell.org/documentation
- Stack Guide: https://docs.haskellstack.org/en/stable/GUIDE/
- Haddok Doc: http://haskell.org/haddock/
- HSpec: http://hspec.github.io/
- HUnit: http://hackage.haskell.org/package/HUnit
- Hackage: http://hackage.haskell.org/packages/hackage.html
