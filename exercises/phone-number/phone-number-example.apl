#!/usr/bin/env apl --script

version ← '1.2.0' ⍝ phone-number exercise, GNU-APL track, exercism

domain∆error ← {⍵ ÷ 0} ⍝ may come in handy


∆clean ← {(11 ≠ '0123456789' ⍳ ⍵) / ⍵}

∆country ← {((11 = ⍴⍵) ↓ ⍵) ⊣ domain∆error (11 = ⍴⍵) ∧ '1' ≠ ⍵[1]}

∆area ← {⍵ ⊣ domain∆error (10 ≠ ⍴⍵) ∨ 3 ≠ '01' ⍳ ⍵[1]}

∆exchange ← {⍵ ⊣ domain∆error 3 ≠ '01' ⍳ ⍵[4]}

∆validate ← {∆exchange ∆area ∆country ⍵}


∇ R ← clean B
    R ← ∆validate ∆clean B
∇
