const factorsMap = {
  3: 'Pling',
  5: 'Plang',
  7: 'Plong',
}

const getSound = (number, factor) => (
  number % factor === 0 ? factorsMap[factor] : ''
)

export const convert = (number) => (
  Object.keys(factorsMap).reduce((result, factor) => result + getSound(number, factor), '') || number.toString()
)

