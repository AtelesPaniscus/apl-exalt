#!/usr/bin/env apl --script

version ← '1.1.0' ⍝ two-fer exercise, GNU-APL track, exercism

∆twofer ← {'One for ', ⍵, ', one for me.'}


∇ R ← two_fer B
    R ← ∆twofer ↑ (0 ≠ ⍴B) ↓ (⊂'you'), ⊂B
∇
