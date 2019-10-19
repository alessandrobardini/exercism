export const transform = (old) => {
  let new_map = {};
  Object.entries(old).forEach(([key, value]) => value.forEach(letter => new_map[letter.toLowerCase()] = +key))
  return new_map
};
