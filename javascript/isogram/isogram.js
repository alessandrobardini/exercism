export const isIsogram = (phrase) => {
  const lettersCount = countLetters(phrase)
  return noLetterIsRepeated(lettersCount)
};

const noLetterIsRepeated = (lettersCount) => {
  return Object.values(lettersCount).every(count => count < 2)
}

const countLetters = (chars) => {
  return chars.toLowerCase().split('').reduce((lettersCount, char) => {
    if(isLetter(char)) {
      lettersCount[char] = (lettersCount[char] || 0) + 1
    }
    return lettersCount
  }, {})
}

const isLetter =  (char) => {
  const letters = 'abcdefghijklmnopqrstuvwxyz'
  return letters.split('').includes(char)
}