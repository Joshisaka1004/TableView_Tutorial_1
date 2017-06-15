//
//  myData.swift
//  myTableViewTutorial_1_170614
//
//  Created by Joachim Vetter on 15.06.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit

class myData {
    var puzzles = String()
    var checkmarks = Bool()
    init(puzzles: String, checkmarks: Bool) {
        self.puzzles = puzzles
        self.checkmarks = checkmarks
    }
}
var daten = [myData]()
