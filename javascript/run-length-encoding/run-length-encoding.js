export const encode = (inputString) => {
  if(inputString == ''){
    return ''
  }
  let result = '';
  let currentChar = inputString.charAt(0);
  let currentCounter = 1;
  for(let i = 1; i < inputString.length; i++){
    let c = inputString.charAt(i);
    if(c != currentChar){
      let counter = currentCounter != 1 ? currentCounter.toString() : '';
      result += (counter  + currentChar) 
      currentCounter = 0
      currentChar = c
    }
    currentCounter++;
  }
  let counter = currentCounter != 1 ? currentCounter.toString() : '';
  result += (counter  + currentChar) 
  return result
};

export const decode = (inputString) => {
  if(inputString == ''){
    return ''
  }
  let result = '';
  let currentChar = inputString.charAt(0);
  if(!(currentChar >= '1' && currentChar <= '9')){
    result = currentChar
    currentChar = ''
  } 
  for(let i = 1; i < inputString.length; i++){
    let c = inputString.charAt(i);
    if (c >= '1' && c <= '9'){
      currentChar = currentChar + c
    } else {
      let counter = currentChar == '' ? 1 : parseInt(currentChar) 
      for(let i = 0; i < counter; i++){
        result += c
      }
      currentChar = ''
    }
  }
  return result
};
