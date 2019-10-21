export const hey = (message) => {
  const there_are_uppercase_characters = (message) => /[A-Z]/.test(message)
  const there_are_lowercase_characters = (message) => /[a-z]/.test(message)
  const there_are_only_whitespaces = (message) => /^[ \t\r\n]*$/.test(message)
  const is_a_question = (message) => message.trim().endsWith('?')
  if(is_a_question(message) && (there_are_uppercase_characters(message) && !there_are_lowercase_characters(message))){
    return 'Calm down, I know what I\'m doing!'
  }
  if (there_are_uppercase_characters(message) && !there_are_lowercase_characters(message)){
    return 'Whoa, chill out!' 
  }
  if(is_a_question(message)){
    return 'Sure.'
  }
  if(there_are_only_whitespaces(message)){
    return 'Fine. Be that way!'
  }
  return 'Whatever.'
};
