const GIGASEC_IN_MS = 1e12

export const gigasecond = (date) => new Date(date.getTime() + GIGASEC_IN_MS) 
