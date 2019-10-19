const EARTH_YEARS = {
  'earth': 1, 'mercury':  0.2408467, 'venus': 0.61519726,
  'mars': 1.8808158, 'jupiter': 11.862615, 'saturn': 29.447498, 
  'uranus': 84.016846, 'neptune': 164.79132
}
const EARTH_YEAR_IN_SECOND = 31557600

export const age = (planet, seconds) => Number((seconds / (EARTH_YEAR_IN_SECOND * EARTH_YEARS[planet])).toFixed(2)) 
