export class QueenAttack {
    constructor({ white, black } = { white: [0, 3], black: [7, 3] }) {
        if (white.toString() == black.toString()) {
            throw new Error('Queens cannot share the same space')
        }
        this.white = white
        this.black = black
        this.board = [...Array(8)].map(_ => Array(8).fill('_'))
        this.whiteQueenRow = white[0]
        this.whiteQueenColumn = white[1]
        this.blackQueenRow = black[0]
        this.blackQueenColumn = black[1]
        this.board[white[0]][white[1]] = 'W'
        this.board[black[0]][black[1]] = 'B'
    }

    toString() { 
        return this.board.map(row => row.join(' ')).join('\n') + '\n'
    }

    canAttack() {
        const dx = this.whiteQueenRow - this.blackQueenRow
        const dy = this.whiteQueenColumn - this.blackQueenColumn
        return !dx || !dy || Math.abs(dx) == Math.abs(dy)
    }
}
