const sortedLettersOf = (word) => (
  [...word.toLowerCase()].sort().join()
)

export const findAnagrams = (word, candidates) => (
  candidates.filter(candidate => 
    candidate.toLowerCase() != word.toLowerCase() &&
    sortedLettersOf(word) == sortedLettersOf(candidate)
  )
)
