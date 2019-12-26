export const solve = (x, y) => {
  const distanceFromCentre = Math.sqrt(Math.pow(x, 2) + Math.pow(y, 2))
  if (distanceFromCentre <= 1) return 10
  if (distanceFromCentre <= 5) return 5
  if (distanceFromCentre <= 10) return 1
  return 0
}; 
