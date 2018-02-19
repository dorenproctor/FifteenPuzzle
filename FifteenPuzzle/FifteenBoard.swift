//
//  FifteenBoard.swift
//  FifteenPuzzle
//
//  Created by Doren Proctor on 2/18/18.
//  Copyright © 2018 Doren Proctor. All rights reserved.
//

import Foundation

class FifteenBoard {
    var state : [[Int]] = [
    [1, 2, 3, 4],
    [5, 6, 7, 8],
    [9, 10, 11, 12],
    [13, 14, 15, 0] // 0 => empty slot
    ]
    
    func scramble(numTimes n: Int) {
        var i = n
        while (i>0) { // get a random tile and slide it
            var choices = [[Int]]()
            let pos = getRowAndColumn(forTile: 0)
            let r = pos!.row
            let c = pos!.column
            if (c > 0) {
                choices.append([r, c-1])
            }
            if (c < 3) {
                choices.append([r, c+1])
            }
            if (r > 0) {
                choices.append([r-1, c])
            }
            if (r < 3) {
                choices.append([r+1, c])
            }
            let randomIndex = Int(arc4random_uniform(UInt32(choices.count)))
            slideTile(atRow: choices[randomIndex][0], Column: choices[randomIndex][1])
            i -= 1
        }
    }
    func getTile(atRow r: Int, atColumn c: Int) -> Int {
        return state[r][c]
    }
    func getRowAndColumn(forTile tile: Int) -> (row: Int, column: Int)?  {
        for i in 0...3 {
            for j in 0...3 {
                if (state[i][j] == tile) {
                    return (i, j)
                }
            }
        }
        return (-1, -1)
    }
    func isSolved() -> Bool {
        if (state[0] == [1, 2, 3, 4] &&
            state[1] == [5, 6, 7, 8] &&
            state[2] == [9, 10, 11, 12] &&
            state[3] == [13, 14, 15, 0]) {
            return true
        }
        return false
    }
    func canSlideTileUp(atRow r : Int, Column c : Int) -> Bool {
        if (r > 0) {
            if (state[r-1][c] == 0) {
                return true
            }
        }
        return false
    }
    func canSlideTileDown(atRow r : Int, Column c : Int) -> Bool {
        if (r < 3) {
            if (state[r+1][c] == 0) {
                return true
            }
        }
        return false
    }
    func canSlideTileLeft(atRow r : Int, Column c : Int) -> Bool {
        if (c > 0) {
            if (state[r][c-1] == 0) {
                return true
            }
        }
        return false
    }
    func canSlideTileRight(atRow r : Int, Column c : Int) -> Bool {
        if (c < 3) {
            if (state[r][c+1] == 0) {
                return true
            }
        }
        return false
    }
    func canSlideTile(atRow r : Int, Column c : Int) -> Bool {
        if (canSlideTileUp(atRow: r, Column: c) ||
            canSlideTileDown(atRow: r, Column: c) ||
            canSlideTileLeft(atRow: r, Column: c) ||
            canSlideTileRight(atRow: r, Column: c) ) {
            return true
        }
        return false
    }
    func slideTile(atRow r : Int, Column c: Int) {
        if canSlideTileUp(atRow: r, Column: c) {
            state[r-1][c] = state[r][c]
            state[r][c] = 0
        } else if canSlideTileDown(atRow: r, Column: c) {
            state[r+1][c] = state[r][c]
            state[r][c] = 0
        } else if canSlideTileLeft(atRow: r, Column: c) {
            state[r][c-1] = state[r][c]
            state[r][c] = 0
        } else if canSlideTileRight(atRow: r, Column: c) {
            state[r][c+1] = state[r][c]
            state[r][c] = 0
        }
    }
}
