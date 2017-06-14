//
//  myData.swift
//  myTableViewTutorial_1_170614
//
//  Created by Joachim Vetter on 14.06.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit
// I use a struct (instead of a class) for defining the data for our rows; names for certain number-logic puzzle (like Sudoku etc.) are the label texts, and the variable checkmarks will store boolean values (true or false) to keep a reference if a currently selected row has a checkmark or if it doesn't.

struct myData {
    var puzzles = [String]() //first our arrays are empty
    var checkmarks = [Bool]()
    //the init()-function gives certain start values to our arrays; we simply fill the "boolean"-array with as many "false"-values as the puzzle array has elements.
    init() {
        puzzles = ["Sudoku", "Kakuro", "Hakyuu", "Nurikabe", "Battleships"]
        for _ in 0..<puzzles.count {
            checkmarks.append(false)
        }
    }
}
var contentForRows = myData() //Via "contentForRows" we get access to this structure all over in our code!
