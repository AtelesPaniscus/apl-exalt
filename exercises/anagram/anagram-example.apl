#!/usr/bin/env apl --script

version ← '1.1.0' ⍝ anagram exercise, GNU-APL track, exercism


alphabet ← 'abcdefghijklmnopqrstuvwxyz'
ALPHABET ← 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'

∆toLower ← {(alphabet, ⍵) [(ALPHABET, ⍵) ⍳ ⍵]}

∆sortLetters ← {⍵[⍋⍵]}

length∆filter ← {(∊ (⍴⍺) = ⍴¨ ⍵)}

compare∆letters ← {(∆sortLetters ⍺) ≡ (∆sortLetters ⍵)}

compare∆string ← {⍺ ≡ ⍵}

anagram∆filter ← {(⍺ compare∆letters ⍵) ∧ ~(⍺ compare∆string ⍵)}


∇R ← A anagrams B; L
    R ← ''
    B ← (A length∆filter B) / B
    → (0 = ⍴B) / quit

    L ← ∆toLower¨ B
    B ← ((⊂ ∆toLower A) anagram∆filter¨ L) / B
    → (0 = ⍴B) / quit

    R ← B
quit:
∇
