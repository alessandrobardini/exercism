export class Squares {
  constructor(n) {
    this.n = n
  }

  get sumOfSquares() {
    return [...Array(this.n + 1).keys()].reduce((sum, number) => sum + number**2, 0)
  }

  get squareOfSum() {
    return [...Array(this.n + 1).keys()].reduce((sum, number) => sum + number, 0)**2
  }

  get difference() {
    return this.squareOfSum - this.sumOfSquares
  }
}
