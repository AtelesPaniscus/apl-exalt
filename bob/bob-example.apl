#!/usr/bin/env apl --script

version ← '1.2.0' ⍝ bob exercise, GNU-APL track, exercism


alphabet ← 'abcedfghijklmnopqrstuvwxyz'
ALPHABET ← 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'


∆silence  ← {∧/ ⍵ = ' '}

∆question ← {'?' = ¯1 ↑ (⍵ ≠ ' ') / ⍵}

∆shouting ← {(∨/ 27 ≠ ALPHABET ⍳ ⍵) ∧ (∧/ 27 = alphabet ⍳ ⍵)}


∇ R ← response B
    R ← 'Fine. Be that way!'
    → (∆silence B)  / exit
    R ← 'Calm down, I know what I''m doing!'
    → (∆question B) / question
    R ← 'Whoa, chill out!'
    → (∆shouting B) / exit
    R ← 'Whatever.'
    → exit
question:
    → (∆shouting B) / exit
    R ← 'Sure.'
exit:
∇
