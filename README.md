# apl-exalt

## Six Faithful Serving Men

### What

Exercises in APL in the [Exercism](http://exercism.io/) style.

### Who

The Exercism project provides generic (or canonical) exercise specifications from which programming language specific exercises are derived.
These specifications are suitable for automatic generation of test cases.

AtelesPaniscus has written such an exercise generator program (EGP) and also reference solutions for many exercises.

### How

The Exercism [Problem Specifications](http://github.com/exercism/problem-specifications) repository provides the source files for the EGP.

The Exercism source directory is expected to provide three files:

  * canonical-data.json
  * description.md
  * metadata.yml

The EGP produces four files:

  * README.md
  * slug-name.tc
  * slug-name.apl
  * slug-name-example.apl

The EGP is of my own, not the Exercism project's, devising.
It is written in Python 3.
It evolves rapidly but will eventually be published here.

### Why

Naturally there is more than one reason behind this repository/project:

  * I wanted to practise APL but the Exercism track had only 7 exercises.
  * I thought building an exercise generator program would be fun.
  * My code is not up to the very high standards required by the Exercism project.
  * Longer term I will need non-trivial APL test cases for another project.

This last is likely to be the final, but not the only reason,
for dropping compatibility with the Exercism GNU APL track at some point in the unforeseeable future.

### Where

On [GitHub](https://github.com/AtelesPaniscus/apl-exalt).

### When

2018 CE.


## The Files that Comprise an Exercise

### The README.md File

This is a verbatim copy of `description.md` with an extra paragraph that acknowledges the exercise's source.
This paragraph is a short sentence derived from the contents of `metadata.yml`.

This file is produced by the EGP program but
invariably the sentence derived from the contents of `metadata.yml` is modified by hand so that it scans properly.

### The slug-name.tc File

This is the file containing test cases.
It is generated by the EGP from the `canonical-data.json` file.

Generally, if the EGP does not produce what is required, it is modified to do so:
only one or two test case files have been modified by hand.

The test case files are not stand alone but require the Exercism GNU APL test harness to run.
This maintains some measure of compatibility.

### The slug-name.apl

This provides students with a place to start - essentially an empty solution.

The rational behind this is that otherwise the first thing the student must do is look at the test cases
in order to find out the name(s) of the function(s) they are expected to write.
It is our belief that students should only examine the test cases as a last resort.

### The slug-name-example.apl

The Exercism project requires each exercise be accompanied by a reference solution.
The Exercism guide to implementing an exercise from specification states:

> The solution does not need to be particularly great code, it is only used to verify that the exercise is coherent.

I need to implement reference solutions to indirectly test the EGP.

The reference solutions are the (first pass) solutions that I would have submitted to Exercism were the exercises available there.

I do not claim my code is great code:  my code is fun code.
Show me your code and I will learn from it:
do not waste your time trying to telling me what I may already know.

If you too want to practice writing APL, then ignore my reference solution until you have a working solution of your own.

## Use and Abuse of Substance

### EGP Extension Policy

It is viewed as inevitable that hand correction of the EGP output will be needed for some exercises.
Adapting the EGP to handle lots of unique special cases would very likely be more trouble than it is worth.

If a special case appears to be another example of a special case already dealt with by hand,
then a general solution that can be implemented in the EGP will be sought.

If the special case appears to represent a small lacuna in the EGP that can be fixed by extension of the code within the current design,
then the extension will be implemented.

If the special case appears to be a regression then the EGP will be corrected.

### Running the Tests Cases for Yourself

For this you need the Exercism GNU APL test harness.
This is SEP: do not direct any criticism of it towards me.

The simplest way to set yourself up to run the test cases is to first clone the Exercism APL and then clone this repository so that relative paths all line up.

Thus:

```bash
    mkdir mayday
    cd mayday

    git clone git@github.com:exercism/gnu-apl.git
    cd gnu-apl

    git clone git@github.com:AtelesPaniscus/apl-exalt.git
    cd apl-exalt
```

ought to do the trick.


To run the test cases for the exercise `slug-name`:

```bash
    cd slug-name
    apl --emacs -s -T *.tc
```

When you are very lucky you will get the report:

```code
    0 errors in 1(1) testcase files
```

Otherwise you may get get anything from report that more tests have failed than there are cases to fail
to an infinite loop as the GNU APL interpreter juggles exceptions deep within its bowels.

I find this last behaviour obliges me to kill the APL interpreter from another command line.

There are several cases in GNU APL of the interpreter behaving in a sane manner when used interactively
but not so when using the GNU APL test harness.  This is one of them.
I think this is retribution on the part of GNL APL for breaking the Exercism commandment
"Thou shall not use lambda functions".

There is little Exercism or I can do about these but they may eventually push me to abandon the
GNU APL test harness and so compatibility with the Exercism track.


## Week 1

The task for the first week was to build an EGP to regenerate the seven exercises that had previously been built by hand by the GNU APL track team.
This was done because these are the only exercises for which there is a reference
against which the output of the EGP may be compared.

The seven exercises were:

  * hello-world
  * leap
  * hamming
  * rna-transcription
  * raindrops
  * difference-of-squares
  * pangram

These are simple exercises that provide good examples of the `canonical-data.json` input the EGP needs to handle
(in particular the 'nesting' of 'cases').

It was felt necessary to introduce flags for the EGP to control the output and/or provide information missing from `canonical-data.json` or
override the information present.

First, some exercises have 'bad' test cases.
What error should the EGP expect ?
In the seven exercises, 'hamming' solutions are expected to generate LENGTH ERROR and 'rna-transcription' solutions DOMAIN ERROR.
The '`-e`' flag was added to tell the EGP which error to expect (and provide the means).

Second, the '`-n`' (for parameter name) was added.
For dyadic functions ('hamming'), this flag may be used to ensure the parameters are the way round humans might expect them to be.
For monadic functions ('leap'), this flag may be used to override the some times lame parameter name used in the `canonical-data.json` file.

Third the '`-t`' (for types) was added to indicate the type of function parameters and their results.
The EGP needs to enclose strings and characters in apostrophes and to use 0 and 1, not False and True, for Booleans.
It may be possible for the EGP to deduce the types correctly most of the time
so this flag was first introduced to handle cases where the deduction was incorrect or inappropriate.
However, always specifying the types explicitly is more consistent so the flag quickly became expected.

## Week 2

The exercises undertaken during week 2 were:

  * isogram
  * collatz-conjecture
  * rotational-cipher
  * atbash-cipher
  * rail-fence-cipher
  * sieve
  * grains

It was expected with these exercises that a couple of small adjustments might be made to the EGP.
The hind sight impression is that each required a change.
The most challenging of which arose from 'sieve' and 'grains'.

Exercism requires some sort of test framework.
Many programming languages now have an xUnit testing framework along the lines of Junit, pyUnit and so forth.
Other Exercism language tracks take advantage of this but Exercism does not require anything so sophisticated.

So far as I know, APL has no xUnit framework.
GNU APL does have a test case framework and the Exercism track uses this.

The GNU APL framework, for those familiar with Python, is more like pyDoc than pyUnit.
It is, I think, meant for regression testing of GNU APL itself.
This has advantages and disadvantages.
None of the latter, on their own, is enough to warrant building something else.

The framework checks the actual output against the expected output letter-by-letter, line-by-line.
If the function under test outputs so much as an extra blank line in one test case, the test case fail and so do all the subsequent test cases.

The last test case of 'sieve' produces a list of primes up to 1000.
This is too long to fit on one line so, to pass, the EGP should mimic GNU APL's line-wrapping.
Hand corrections are tedious.
Neither solution is 'portable'.

The last two test cases of 'grains' fail because GNU APL chooses to print numbers (including integers) larger than 2^53 in real number notation.
I could find no mechanism in GNU APL to alter this behaviour.

The match (`≡`) primitive of APL allows these problems to be side-stepped.  It also allows comparison of the rank (and other otherwise
invisible differences) of the actual test result and the reference.
There is a drawback:  the actual test output is not printed, which hampers debugging.

With xUnit test frameworks, a routine or macro is used to compare actual with expected test results.
The advantage is that the routine or macro can do all sorts of extra stuff if it needs to.
Thus the function `assert∆match` was introduced.
It does the match and if that fails, prints out the actual test result.

The EGP was changed to use `≡` by default except for functions with a Boolean result.
The flag `-c` may be used to override this.
Currently, `-c=a` tells the EGP to use `assert∆match`.
Current policy is to used `-c=a` for all exercises except for those with function(s) with a Boolean result.

This is a stop gap measure that sits uncomfortably with the existing test harness.
As yet not enough exercises have been done to enable a more permanent, informed, choice to be made.
