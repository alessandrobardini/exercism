const factors = number => Array
    .from(Array(Math.floor(number / 2)), (_, i) => i + 1)
    .filter(i => number % i === 0)

export const classify = (number) => {
  if( number <= 0){
    throw new Error("Classification is only possible for natural numbers.");
  } 
  let factorsSum = factors.reduce((sum, number) => sum +  number, 0)
  if (factorsSum ===  number){
    return 'perfect'
  }
  if (factorsSum < number  ){
    return 'deficient'
  }
  else return 'abundant' 
};
