//
//  addPuzzleType.swift
//  myTableViewTutorial_1_170614
//
//  Created by Joachim Vetter on 15.06.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit

class addPuzzleType: UIViewController {
    
    @IBOutlet weak var myTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func save(_ sender: UIButton) {
        if let myTemp = myTextfield.text {
            let myTemp2 = myTemp.trimmingCharacters(in: .whitespaces)
            let myInput = myTemp2.capitalized
            daten.append(myData(puzzles: myInput, checkmarks: false))
            navigationController?.popViewController(animated: true)
        }
    }
}
