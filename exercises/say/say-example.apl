#!/usr/bin/env apl --script

version ← '1.0.0' ⍝ say exercise, GNU-APL track, exercism

domain∆error ← {⍵ ÷ 0} ⍝ may come in handy


∆sayDigit ← {('zero' 'one' 'two' 'three' 'four' 'five' 'six' 'seven' 'eight' 'nine') [1 + ⍵]}
∆sayTeen  ← {('ten' 'eleven' 'twelve' 'thirteen' 'fourteen' 'fifteen' 'sixteen' 'seventeen' 'eighteen' 'nineteen') [1 + ⍵]}
∆sayTen   ← {('digits' 'teens' 'twenty' 'thirty' 'forty' 'fifty' 'sixty' 'seventy' 'eighty' 'ninety') [1 + ⍵]}


∇ R ← ∆sayHundreds B
    R ← ''

    B ← 10 10 10 ⊤ B
    → (B[1] = 0) / noHundreds

    R ← R (∆sayDigit B[1]) ' hundred'

    → (∧/ B[2 3] = 0 0) / exit

⍝   R ← R ' and '
    R ← R ' '

noHundreds:

    → (B[2] = 1) / teens
    → (B[2] = 0) / digits

    R ← R (∆sayTen B[2])

    → (B[3] = 0) / exit

    R ← R '-'

digits:
    R ← R (∆sayDigit B[3])
    → exit

teens:
    R ← R (∆sayTeen B[3])

exit:
∇


∇ R ← ∆say B;L
    R ← ''
    B ← 1000 1000 1000 1000 ⊤ B
    L ← ' billion' ' million' ' thousand'

continue:
    → (B[1] = 0) / next

    R ← R (∆sayHundreds B[1]) L[1]

    → (0 = +/ 1 ↓ B) / exit

    R ← R ' '

next:
    B ← 1 ↓ B
    L ← 1 ↓ L

    → (0 ≠ ⍴ L) / continue

    R ← R (∆sayHundreds B[1])

exit:
∇


∇ R ← say B
    R ← ∊ (∆say B) ⊣ domain∆error (B < 0) ∨ (B ≥ 1e12)
∇
