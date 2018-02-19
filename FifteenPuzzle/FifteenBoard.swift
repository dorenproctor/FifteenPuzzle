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
        
    }
    func getTile(atRow r: Int, atColumn c: Int) -> Int {
        return 1
    }
    func getRowAndColumn(forTile tile: Int) -> (row: Int, column: Int)?  {
        return (1, 1)
    }
    func isSolved() -> Bool {
        return true
    }
    func canSlideTileUp(atRow r : Int, Column c : Int) -> Bool {
        return true
    }
    func canSlideTileDown(atRow r : Int, Column c : Int) -> Bool {
        return true
    }
    func canSlideTileLeft(atRow r : Int, Column c : Int) -> Bool {
        return true
    }
    func canSlideTileRight(atRow r : Int, Column c : Int) -> Bool {
        return true
    }
    func canSlideTile(atRow r : Int, Column c : Int) -> Bool {
        return true
    }
    func slideTile(atRow r : Int, Column c: Int) {
        
    }
}
