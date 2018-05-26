#!/usr/bin/env apl --script

version ← '1.0.0' ⍝ raindrops exercise, GNU-APL track, exercism


select∆sound ← {(⍺, 0 = +/ ⍺) / 'Pling' 'Plang' 'Plong', ⍵}

∆convert ← {∊ ,/ (0 = 3 5 7 | ⍵) select∆sound ⊂ ⍕ ⍵}


∇ R ← convert B
    R ← ∆convert B
∇
