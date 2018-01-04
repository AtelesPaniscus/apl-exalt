#!/usr/bin/env apl --script

version ← '1.1.0' ⍝ rna-transcription exercise, GNU-APL track, exercism

domain∆error ← {⍵ ÷ 0} ⍝ may come in handy


dna∆index ← {⍺ ⍳ ⍵}

∆check ← {⍵ ⊣ domain∆error 5 ∊ ⍵}

index∆rna ← {(⊂ ⍵) ⌷ ⍺}


∇ R ← toRna B
    R ← 'CGAU' index∆rna ∆check 'GCTA' dna∆index B
∇
