//
//  ViewController.swift
//  myTableViewTutorial_1_170614
//
//  Created by Joachim Vetter on 14.06.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit


class myTableViewController: UITableViewController {

    @IBOutlet var cellsSection1: [UITableViewCell]!
    @IBOutlet weak var myTextLabel: UILabel!
   
    @IBOutlet weak var myPlaceLabel: UILabel!
    
    @IBOutlet weak var myDateLabel: UILabel!
    
    @IBOutlet weak var myImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTextLabel.text = "Sudoku"
        myPlaceLabel.text = "Sizes of 6x6, 9x9, 12x12 and 16x16"
        myImage.image = UIImage(named: "stevie")
        myImage.contentMode = .scaleAspectFit
        myImage.backgroundColor = UIColor.lightGray
        for j in cellsSection1 {
            j.backgroundColor = UIColor.yellow
        }
       
    }


}

