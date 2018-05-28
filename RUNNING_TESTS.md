<!-- apl-exalt by NewForester:  Exercism-style exercises in APL and a test case generator in Python 3 -->

## Running Exercise Test Cases Yourself

As you write a solution to an exercise you should check your progress by running it against the exercise's test cases.

You will need to fetch one small file from the Exercism GNU-APL repository:

```bash
    $ rm test.apl
    $ wgetc https://github.com/exercism/gnu-apl/raw/master/test.apl
```

To run the test cases for the exercise `slug-name`:

```bash
    $ cd slug-name
    $ apl -s -T slug-name.tc
```

When you are very lucky you will get the report:

```code
    0 errors in 1(1) testcase files
```

This indicates that your solution passes all test cases.

If you are not quite so lucky you may get a report of how many errors there are and
be able to see from the test output which test cases have failed.

### Unlucky Sometimes

However, you may not be so lucky.  GNU APL may crash producing incomprehensible stack traces that
will not help you figure out what you need to change to avoid the crash.

If you are really unlucky, GNU APL will go into an infinite loop thowing exceptions to report an attempt
to throw an exception while handing an exception thrown while handling ... you get the general idea.

You will need to kill GNU APL from another command line and will be left with no information as to which
test case failed or why.  It may be something as simple as a missing close parenthesis.

This misbehaviour can be very off putting.
Sufficiently so that this project saw no activity for three months.

There is some unconfirmed evidence that this might be a result of an overzealous use of lambda functions.
However, there is no evidence to suggest that not using lamda function is an effective or even a sensible precaution.

### A Short Term Workaround

If you get this behaviour, try:

```bash
    slugtest -tc
```

If this too produces infinitely loopy exceptions, try:

```bash
    slugtest -apl
```

Before you use `slugtest` for the first time, look for the file `apl-exalt.rc`.
You should find it in the repository's root directory.
You need to source this.
If your current working directory is an exercise directory, then something like:

```bash
    $ cd ../..
    $ source apl-exalt.rc
    $ cd -
```

should do the trick.
Of course, it helps if you are using a command line shell.

Examine the output for test cases that should not produce an error.
Any that do raise an error  (INDEX ERROR, VALUE ERROR or similar) need to be fixed by changing your solution.
Only once these have been fixed will it safe to try running `apl ... -T ...` again.

### A Longer Term Workaround

So if the Exercism way of running these tests is unreliable, why not just use the workaround all the time ?

First, this project is about producing Exercism compatible exercises.
Not testing the Exercism way will soon lead to divergence that will lead to incompatibility.
That would be a shame as the problem lies in GNU APL itself and not in the tiny Exercism test harness that is 'test.apl'.

Second, the workaround is new and only time will tell if it is effective or not.

Third, there are still plenty of Exercism exercises that have no generated test and that is where the time should go.

Fourth time is short.  More thought is needed as to how to ditch both the GNU APL test case mode and the current Exercism test harness
and replace it with something that is still Exercism compatible, even if it no longer compatible with the Exercism GNU APL track.

Fifth that may mean finding an alternative to GNU APL.

--

*apl-exalt* by NewForester.
Notes licensed under a Creative Commons Attribution-ShareAlike 4.0 International Licence.

<!-- EOF -->
