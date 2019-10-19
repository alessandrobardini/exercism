export class Matrix {
  constructor(matrix_string) {
    this.rows = matrix_string.split('\n').map(row => row.split(" ").map(element => +element))
    this.columns = this.rows[0].map((_, index) => this.rows.map(row => row[index]))   
  }
}
