const createPascalTriangle = (number_of_rows) => {
  var pascalTriangle = [];    
  for (var i = 0; i < number_of_rows; i++) { 
    pascalTriangle[i] = new Array(i+1);  
    for (var j = 0; j < i+1; j++) {            
      if (j === 0 || j === i) {
        pascalTriangle[i][j] = 1;
      } else {
        pascalTriangle[i][j] = pascalTriangle[i-1][j-1] + pascalTriangle[i-1][j];
      }
    }
  } 
  return pascalTriangle;
}

export class Triangle {
  constructor(number_of_rows) {
    this.number_of_rows = number_of_rows;
    }

  get rows(){
    if(this.pascalTriangle == null)
      this.pascalTriangle = createPascalTriangle(this.number_of_rows)
    return this.pascalTriangle
  }

  get lastRow() {
    return this.rows[this.rows.length - 1]
  }
}
