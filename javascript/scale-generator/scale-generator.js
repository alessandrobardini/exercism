const usesSharps = ['C', 'G', 'D', 'A', 'E', 'B', 'F#', 'e', 'b', 'f#', 'c#', 'g#', 'd#', 'a']
const sharps = ['A', 'A#', 'B', 'C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#']
const flats = ['A', 'Bb', 'B', 'C', 'Db', 'D', 'Eb', 'E', 'F', 'Gb', 'G', 'Ab']
const intervalValues = {
  m: 1,
  M: 2,
  A: 3
}

export class Scale {
  constructor(tonic) {
    const properScale = usesSharps.includes(tonic) ? sharps : flats
    const indexOfTonic = properScale.indexOf(tonic.charAt(0).toUpperCase() + tonic.slice(1))
    this.scale = properScale.slice(indexOfTonic).concat(properScale.slice(0, indexOfTonic))
  }

  chromatic() {
    return this.scale
  }

  interval(intervals) {
    let scaleIndex = 0
    const result = []
    for (const i of intervals) {
      result.push(this.scale[scaleIndex])
      scaleIndex += intervalValues[i]
    }
    return result
  }
}
