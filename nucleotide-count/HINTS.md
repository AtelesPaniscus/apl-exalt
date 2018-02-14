# Nucleotide Count - Hints

The exercise README demands a solution compute how many times each nucleotide occurs but says nothing about how the results are to be presented.

The test cases expect the results returned to be:

  * a 4 × 2 array
  * one row per nucleotide
  * the first column contains a nucleotide symbol ('A', 'C', 'G' or 'T')
  * the second column contains the corresponding nucleotide count
  * rows are ordered on the first column.

E.g:

```apl
    nucleotideCounts 'AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC')
    A 20
    C 12
    G 17
    T 21
```
