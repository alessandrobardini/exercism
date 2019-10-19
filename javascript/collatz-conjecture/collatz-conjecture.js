export const steps = (number) => {

  if(number < 1){
    throw 'Only positive numbers are allowed';
  }

  let number_of_steps = 0

  while(number > 1){
    number = number % 2 == 0 ? number /= 2 : number = (number * 3) + 1 
    number_of_steps++
  }
  
  return number_of_steps
};
