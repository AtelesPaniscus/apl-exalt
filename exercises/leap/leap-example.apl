#!/usr/bin/env apl --script

version ← '1.2.0' ⍝ leap exercise, GNU-APL track, exercism


∆leapYear ← {2 | ↑ ⍋ 400 100 4 1 | ⍵}


∇ R ← leapYear B
    R ← ∆leapYear B
∇
