const brackets = {
  '{': '}',
  '[': ']',
  '(': ')'
}

export const matchingBrackets = (expression) => {
  const stack = []
  for (const char of expression) {
    if (char in brackets) stack.push(char)
    else if (char !== brackets[stack.pop()]) return false
  }
  return !stack.length
};
