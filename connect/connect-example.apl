#!/usr/bin/env apl --script

version ← '1.1.0' ⍝ connect exercise, GNU-APL track, exercism


⍝ This solution works backwards by eliminating isolated stones that cannot be
⍝ part of a winning path.  It still needs a loop for iteration but avoids the
⍝ need for recursion since there is no back tracking.
⍝
⍝ It considers all six neighbours of all cells using array operations instead
⍝ of using for each (¯) serveral times.
⍝
⍝ It still looks more complex than it should do.


remove∆from ← {(⍺ ≠ ⍵) / ⍵}

score∆board ← {((⍴⍵),(⍴↑⍵)) ⍴ ∊ ⍺ = ⍵}


∇ R ← winner B
    R ← ''
    B ← ' ' remove∆from¨ B
    R ← R, (∆winner ⍉ 'X' score∆board B) / 'X'
    R ← R, (∆winner   'O' score∆board B) / 'O'
∇


∆marker ← {(1 1 ≢ ⍵) + ¯1 ⊖ ⍵ ↑ 2 0 ↓ ⍵ ⍴ 1}

a∆c ← {((⍴⍵), 1) ⍴ (1 ↑ ⍺) ⌽ (¯1 ↑ ⍺) ⊖ ⍵}      ⍝ adjacent cells

∆neighbourhood ← {(0 1 a∆c ⍵), (1 0 a∆c ⍵), (1 ¯1 a∆c ⍵), (0 ¯1 a∆c ⍵), (¯1 0 a∆c ⍵), (¯1 1 a∆c ⍵)}

∆routes ← {⍵ ∧ ~ ⍵ ∧ 1 ⌽ ⍵}

∆neighbours ← {⍵ × +/ ∆routes ∆neighbourhood ⍵}

∆border ← {¯1 ⊖ ¯1 ⌽ (2 2 + ⍴⍵) ↑ ⍵}

∆noborder ← {¯2 ¯2 ↓ 1 ⊖ 1 ⌽ ⍵}

∆score ← {∆noborder ∆neighbours ∆border ⍵}


∇ R ← ∆winner B; M; T
    J ← B
    M ← ∆marker ⍴B

    R ← 0
repeat:
    → (~∧/∨/B) / exit
    T ← B
    B ← M ≤ ∆score B
    → (B ≢ T) / repeat

    R ← 1
exit:
∇
