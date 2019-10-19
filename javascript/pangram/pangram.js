const ALPHABET = [...'abcdefghijklmnopqrstuvwxyz']

export const isPangram = (input) => ALPHABET.every(letter => input.toLowerCase().includes(letter))