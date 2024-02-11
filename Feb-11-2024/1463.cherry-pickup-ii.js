/*
 * @lc app=leetcode id=1463 lang=javascript
 *
 * [1463] Cherry Pickup II
 */

// @lc code=start
/**
 * @param {number[][]} grid
 * @return {number}
 */
function cherryPickup(grid) {
    const rows = grid.length;
    const cols = grid[0].length;
  
    // dp[i][j1][j2] represents the maximum cherries collected when
    // Robot 1 is at (i, j1) and Robot 2 is at (i, j2)
    const dp = Array.from({ length: rows }, () =>
      Array.from({ length: cols + 1 }, () => Array.from({ length: cols + 1 }, () => 0))
    );
  
    // Base case: bottom row
    for (let j1 = 0; j1 < cols; j1++) {
      for (let j2 = 0; j2 < cols; j2++) {
        dp[rows - 1][j1][j2] = grid[rows - 1][j1] + (j1 !== j2 ? grid[rows - 1][j2] : 0);
      }
    }
  
    // Iterate backwards from bottom to top
    for (let i = rows - 2; i >= 0; i--) {
      for (let j1 = 0; j1 < cols; j1++) {
        for (let j2 = 0; j2 < cols; j2++) {
          let maxVal = 0;
          for (const nextJ1 of [j1 - 1, j1, j1 + 1]) {
            for (const nextJ2 of [j2 - 1, j2, j2 + 1]) {
              // Check if move is valid (within grid and robots don't collide)
              if (
                0 <= nextJ1 &&
                nextJ1 < cols &&
                0 <= nextJ2 &&
                nextJ2 < cols &&
                nextJ1 !== nextJ2
              ) {
                // Calculate potential cherries collected
                const cherries =
                  grid[i][j1] +
                  (j1 !== j2 ? grid[i][j2] : 0) +
                  dp[i + 1][nextJ1][nextJ2];
                // Update max value if better
                maxVal = Math.max(maxVal, cherries);
              }
            }
          }
          dp[i][j1][j2] = maxVal;
        }
      }
    }
  
    // Return maximum cherries from top-left corner
    return dp[0][0][cols - 1];
  }
// @lc code=end

