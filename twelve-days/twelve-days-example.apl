#!/usr/bin/env apl --script

version ← '1.0.0' ⍝ twelve-days exercise, GNU-APL track, exercism


∇ R ← ∆verse B
    R ← B ⊃ 'first' 'second' 'third' 'fourth' 'fifth' 'sixth' 'seventh' 'eighth' 'ninth' 'tenth' 'eleventh' 'twelfth'

    R ← 'On the ', R,' day of Christmas my true love gave to me,'

    → B ⊃ partridge turtleDoves frenchHens callingBirds goldRings geeseLaying swansSwimming maidsMilking ladiesDancing lordsLeaping pipersPiping drummersDrumming

drummersDrumming:
    R ← R, ' twelve Drummers Drumming,'
pipersPiping:
    R ← R, ' eleven Pipers Piping,'
lordsLeaping:
    R ← R, ' ten Lords-a-Leaping,'
ladiesDancing:
    R ← R, ' nine Ladies Dancing,'
maidsMilking:
    R ← R, ' eight Maids-a-Milking,'
swansSwimming:
    R ← R, ' seven Swans-a-Swimming,'
geeseLaying:
    R ← R, ' six Geese-a-Laying,'
goldRings:
    R ← R, ' five Gold Rings,'
callingBirds:
    R ← R, ' four Calling Birds,'
frenchHens:
    R ← R, ' three French Hens,'
turtleDoves:
    R ← R, ' two Turtle Doves, and'
partridge:
    R ← R, ' a Partridge in a Pear Tree.'

    R ← ⊂ R
∇


∇ R ← A recite B
    R ← ''
    → (A < 1) / exit
    → (A > B) / exit

repeat:
    R ← R, ∆verse A
    A ← A + 1
    → (A > B) / exit
    → (A > 12) / exit

    → repeat

exit:
∇
