#!/usr/bin/env apl --script

version ← '1.3.0' ⍝ pangram exercise, GNU-APL track, exercism


alphabet ← 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'


∆inscopeIndicies ← {(⍵ ≠ (1 + ⍴ ⍵)) / ⍵}

∆isPangram ← {26 = ↑ ⍴ ∪ 26 | ∆inscopeIndicies alphabet ⍳ ⍵}


∇ R ← isPangram B
    R ← ∆isPangram B
∇
