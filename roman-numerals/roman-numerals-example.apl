#!/usr/bin/env apl --script

version ← '1.0.0' ⍝ roman-numerals exercise, GNU-APL track, exercism


∆thousands  ← {⍵ ⍴ 'M'}
∆hundreds   ← {('' 'C' 'CC' 'CCC' 'CD' 'D' 'DC' 'DCC' 'DCCC' 'CM') [⍵]}
∆tens       ← {('' 'X' 'XX' 'XXX' 'XL' 'L' 'LX' 'LXX' 'LXXX' 'XC') [⍵]}
∆units      ← {('' 'I' 'II' 'III' 'IV' 'V' 'VI' 'VII' 'VIII' 'IX') [⍵]}


∇ R ← roman B; T
    ⎕IO ← 0
    T ← 10 10 10 10 ⊤ B
    R ← ∊ (∆thousands T[0]), (∆hundreds T[1]), (∆tens T[2]), (∆units T[3])
∇
