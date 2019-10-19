export class Triangle {
  constructor(side_1, side_2, side_3) {
    this.side_1 = side_1;
    this.side_2 = side_2;
    this.side_3 = side_3;
  }

  kind() {
    let sorted_array_of_sides = [this.side_1, this.side_2, this.side_3].sort((a, b) => a - b)
    if (sorted_array_of_sides[0] + sorted_array_of_sides[1] <= sorted_array_of_sides[2] ) throw 'Exception' 
    if (this.side_1 == this.side_2 && this.side_1 == this.side_3) return 'equilateral'
    if ((this.side_1 == this.side_2) || (this.side_1 == this.side_3) || (this.side_2 == this.side_3) ) return 'isosceles'
    return 'scalene'
  }
}
