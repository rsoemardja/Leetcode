/*
 * @lc app=leetcode id=36 lang=javascript
 *
 * [36] Valid Sudoku
 */

// @lc code=start
/**
 * @param {character[][]} board
 * @return {boolean}
 */
function isValidSudoku(board) {
    const N = board.length;
    const rows = new Array(N).fill(0).map(() => new Array(N).fill(false));
    const cols = new Array(N).fill(0).map(() => new Array(N).fill(false));
    const boxes = new Array(N).fill(0).map(() => new Array(N).fill(false));
  
    for (let row = 0; row < N; row++) {
      for (let col = 0; col < N; col++) {
        if (board[row][col] === '.') {
          continue;
        }
  
        const num = board[row][col].charCodeAt(0) - '1'.charCodeAt(0); // Convert digit to index
        const boxIndex = (Math.floor(row / 3) * 3) + Math.floor(col / 3);
  
        if (rows[row][num] || cols[col][num] || boxes[boxIndex][num]) {
          return false;
        }
  
        rows[row][num] = cols[col][num] = boxes[boxIndex][num] = true;
      }
    }
  
    return true;
  }
// @lc code=end

