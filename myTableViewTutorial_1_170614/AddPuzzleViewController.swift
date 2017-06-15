//
//  AddPuzzleViewController.swift
//  myTableViewTutorial_1_170614
//
//  Created by Joachim Vetter on 14.06.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit

class AddPuzzleViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func save(_ sender: UIButton) {
        if let myTemp = myTextField.text {
            let myTemp2 = myTemp.trimmingCharacters(in: .whitespaces)
            let myFinal = myTemp2.capitalized
            contentForRows.puzzles.append(myFinal)
            contentForRows.checkmarks.append(false)
            contentForRows.colors.append(UIColor.white)
            navigationController?.popViewController(animated: true)
        }
    }
}
