const totalNumberOfSquares = 64

export const square = (number) => {
  if (number <= 0 || number > totalNumberOfSquares) throw new Error('square must be between 1 and 64')
  return BigInt(Math.pow(2, number - 1))
};

export const total = () => {
  return BigInt(Math.pow(2, 64)) - 1n
};
