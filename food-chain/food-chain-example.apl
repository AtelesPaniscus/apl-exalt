#!/usr/bin/env apl --script

version ← '2.0.0' ⍝ food-chain exercise, GNU-APL track, exercism


∇ R ← ∆verse B
    R ← ''
    → (B = ⍳8) / verse1 verse2 verse3 verse4 verse5 verse6 verse7 verse8

verse1:
    R ← R, ⊂ 'I know an old lady who swallowed a fly.'
     → chorus1

verse2:
    R ← R, ⊂ 'I know an old lady who swallowed a spider.'
    R ← R, ⊂ 'It wriggled and jiggled and tickled inside her.'
    → chorus2

verse3:
    R ← R, ⊂ 'I know an old lady who swallowed a bird.'
    R ← R, ⊂ 'How absurd to swallow a bird!'
    → chorus3

verse4:
    R ← R, ⊂ 'I know an old lady who swallowed a cat.'
    R ← R, ⊂ 'Imagine that, to swallow a cat!'
    → chorus4

verse5:
    R ← R, ⊂ 'I know an old lady who swallowed a dog.'
    R ← R, ⊂ 'What a hog, to swallow a dog!'
    → chorus5

verse6:
    R ← R, ⊂ 'I know an old lady who swallowed a goat.'
    R ← R, ⊂ 'Just opened her throat and swallowed a goat!'
    → chorus6

verse7:
    R ← R, ⊂ 'I know an old lady who swallowed a cow.'
    R ← R, ⊂ 'I don''t know how she swallowed a cow!'
    → chorus7

verse8:
    R ← R, ⊂ 'I know an old lady who swallowed a horse.'
    R ← R, ⊂ 'She''s dead, of course!'
    → exit

chorus7:
    R ← R, ⊂ 'She swallowed the cow to catch the goat.'
chorus6:
    R ← R, ⊂ 'She swallowed the goat to catch the dog.'
chorus5:
    R ← R, ⊂ 'She swallowed the dog to catch the cat.'
chorus4:
    R ← R, ⊂ 'She swallowed the cat to catch the bird.'
chorus3:
    R ← R, ⊂ 'She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.'
chorus2:
    R ← R, ⊂ 'She swallowed the spider to catch the fly.'
chorus1:
    R ← R, ⊂ 'I don''t know why she swallowed the fly. Perhaps she''ll die.'
exit:
∇


∇ R ← A recite B
    R ← ''
    → (A < 1) / exit
    → (A > B) / exit

repeat:
    R ← R, ∆verse A
    A ← A + 1
    → (A > B) / exit

    R ← R, ⊂''
    → repeat

exit:
∇
