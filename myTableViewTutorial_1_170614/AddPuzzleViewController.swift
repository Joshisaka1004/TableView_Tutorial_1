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
            contentForRows.puzzles.append(myTemp)
            contentForRows.checkmarks.append(false)
            contentForRows.colors.append(UIColor.white)
            navigationController?.popViewController(animated: true)
        }
    }
}
