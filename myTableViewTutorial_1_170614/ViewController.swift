//
//  ViewController.swift
//  myTableViewTutorial_1_170614
//
//  Created by Joachim Vetter on 14.06.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit

// In this example I use a UITableViewController, so I've deleted the commom UIViewController from the IB and replaced it by the pre-configured UITableViewController from the object library, I call my correspondig class for this controller "myTableViewController" as you see below, and it inherits from UITableViewController; don't forget to give this new Controller the correct class name (myTableViewController) in the Identity inspector (top row there) and to set it as the Initial View Controller in the Attribute Inspector.

class myTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.contentInset = UIEdgeInsets(top: 40, left: 0, bottom: 0, right: 0)
        //we don't need delegate declarations with such a UITableViewController, it knows how to ask for the data source and also knows how to treat/react to user events with our table!
        let firstRow = myData(puzzles: "Kakuro", checkmarks: false)
        let secondRow = myData(puzzles: "Sudoku", checkmarks: false)
        daten.append(contentsOf: [firstRow, secondRow])
    }
    //But we MUST implement two methods to make our table work at all:
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return daten.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCells = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! myCellView
        myCells.myLabel.text = daten[indexPath.row].puzzles
        if daten[indexPath.row].checkmarks == false {
            myCells.accessoryType = .none
        } else {
            myCells.accessoryType = .checkmark
        }
        return myCells
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let myCurrentRow = tableView.cellForRow(at: indexPath)
        if daten[indexPath.row].checkmarks == false {
            daten[indexPath.row].checkmarks = !daten[indexPath.row].checkmarks
            myCurrentRow?.accessoryType = .checkmark
        } else {
            daten[indexPath.row].checkmarks = !daten[indexPath.row].checkmarks
            myCurrentRow?.accessoryType = .none
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tableView.reloadData()
    }
}

