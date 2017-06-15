//
//  DetailViewController.swift
//  myTableViewTutorial_1_170614
//
//  Created by Joachim Vetter on 15.06.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var myIndex = 0
    @IBOutlet weak var myTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "More Infos"
        myTextView.text = daten[myIndex].puzzles
    }

}
