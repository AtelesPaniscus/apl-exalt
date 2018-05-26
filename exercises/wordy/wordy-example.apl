#!/usr/bin/env apl --script

version ← '1.0.0' ⍝ wordy exercise, GNU-APL track, exercism


∆dropQuestionMark ← {¯1 ↓ ⍵}

∆noSpace ← {(⍵ ≠ ' ') / ⍵}

∆words ← {∆noSpace¨ (1 + +\ ' ' = ⍵) ⊂ ⍵}

drop∆leading ← {(⍵ ≡ ↑ ⍺) ↓ ⍺}

∆dropBy ← {((⊂ 'by') ≢¨ ⍵) / ⍵}

∆reform ← {((∆dropBy ∆words ∆dropQuestionMark ⍵) drop∆leading 'What') drop∆leading 'is'}


fix∆minus ← {(⍺ ⍴ '¯'), ⍺ ↓ ⍵}

swap∆op ← {∊ (⍵ ⍺[2])[1 + ⍵ ≡ ⊃ ⍺[1]]}

swap∆plus ← {('plus' '+') swap∆op ⍵}
swap∆minus ← {('minus' '-') swap∆op ⍵}
swap∆times ← {('multiplied' '×') swap∆op ⍵}
swap∆divide ← {('divided' '÷') swap∆op ⍵}

∆translate ← {swap∆divide swap∆times swap∆minus swap∆plus ('-' = ↑ ⍵) fix∆minus ⍵}


∇ R ← answer B
    B ← ∆translate¨ ∆reform B

    R ← ((1 + (⍴B)) ÷ 2) ⍴ '('
repeat:
    R ← R, 1 ↑ B
    B ← 1 ↓ B
    → ((2 | (⍴B)) ≠ 0) / repeat
    R ← R, ')'
    → ((⍴B) > 0) / repeat

exit:
    R ← ⍎ ∊ R
∇
