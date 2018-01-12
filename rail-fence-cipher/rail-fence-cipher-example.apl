#!/usr/bin/env apl --script

version ← '1.0.1' ⍝ rail-fence-cipher exercise, GNU-APL track, exercism


∆v ← {⍵, 1 ↓ ⌽ 1 ↓ ⍵}

∆mask ← {⍵ ∘.= ⍺ ⍴ ∆v ⍵}

∆scan ← {(⍵, ⍺) ⍴ +\ , ⍺ ∆mask ⍳⍵}

∆eliminate ← {(,⍺) / ,⍵}


encode∆rails ← {((⍴ ⍺) ∆mask ⍳⍵) ∆eliminate (⍵, ⍴ ⍺) ⍴ ⍺}

decode∆rails ← {⍺[(⍉ (⍴ ⍺) ∆mask ⍳⍵) ∆eliminate (⍉ (⍴ ⍺) ∆scan ⍵)]}



∇ R ← A encode B
    R ← A encode∆rails B
∇

∇ R ← A decode B
    R ← A decode∆rails B
∇
