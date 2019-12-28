export const compute = (string1, string2) => {
  if(!string1 && !string2) return 0
  if(!string1) throw new Error('left strand must not be empty') 
  if(!string2) throw new Error('right strand must not be empty') 
  if(string1.length !== string2.length) throw new Error('left and right strands must be of equal length') 
  return [...string1].filter((char, index) => char !== string2[index]).length
};
