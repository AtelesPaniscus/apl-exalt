#!/usr/bin/env apl --script

version ← '2.1.0' ⍝ beer-song exercise, GNU-APL track, exercism


∆∆ ← {(⍕⍺), ' ', ⍵, ' of beer'}

∆onTheWall      ← {⍵, ' on the wall, ', ⍵, '.'}
noneOnTheWall  ← {'No more bottles of beer on the wall, no more bottles of beer.'}

∆takeOne        ← {'Take one down and pass it around, ', ⍵, ' on the wall.'}
∆takeIt         ← {'Take it down and pass it around, ', ⍵, ' on the wall.'}
∆buySomeMore    ← {'Go to the store and buy some more, ', ⍵, ' on the wall.'}


∇ R ← ∆verse B
    → (B ≤ 0 1 2) / noBottles oneBottle twoBottles

    R ← (∆onTheWall B ∆∆ 'bottles') (∆takeOne (B-1) ∆∆ 'bottles')
    → exit

twoBottles:
    R ← (∆onTheWall B ∆∆ 'bottles') (∆takeOne 1 ∆∆ 'bottle')
    → exit

oneBottle:
    R ← (∆onTheWall 1 ∆∆ 'bottle') (∆takeIt 'no more' ∆∆ 'bottles')
    → exit

noBottles:
    R ← (noneOnTheWall) (∆buySomeMore 99 ∆∆ 'bottles')

exit:
∇


∇ R ← A recite B
    R ← ''
    → (B ≤ 0) / exit

repeat:
    R ← R, ∆verse A
    A ← A - 1
    B ← B - 1
    → (B ≤ 0) / exit

    R ← R, ⊂''
    → repeat

exit:
∇
