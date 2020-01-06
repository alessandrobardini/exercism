const allowedChars = ['A', 'C', 'G', 'T']

export class NucleotideCounts {
  static parse(strand) {
    if ([...strand].some( char => !allowedChars.includes(char))) {
      throw new Error('Invalid nucleotide in strand')
    }
    return Object.values([...strand].reduce((counter, char) => {
      counter[char] += 1
      return counter
    }, Object.fromEntries(allowedChars.map(char => [char, 0])))).join(' ')
  }
}
