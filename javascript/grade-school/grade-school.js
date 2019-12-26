export class GradeSchool {

  constructor() {
    this._roster = {}
  }

  roster() {
    return Object.keys(this._roster).reduce(
      (copiedRoster, grade) => (
        {...copiedRoster, [grade]: [...this._roster[grade]]}
      ), {}
    )
  }

  add(name, grade) {
    if(!(grade in this._roster))
      this._roster[grade] = []
    this._roster[grade].push(name)
    this._roster[grade].sort()
  }

  grade(grade) {
    return this._roster[grade] 
      ? [...this._roster[grade]]
      : []
  }
}