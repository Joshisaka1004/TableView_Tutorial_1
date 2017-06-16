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
        let thirdRow = myData(puzzles: "Hakyuu", checkmarks: false)
        let fourthRow = myData(puzzles: "Nurikabe", checkmarks: false)
        daten.append(contentsOf: [firstRow, secondRow, thirdRow, fourthRow])
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "details" {
            if let myZiel = segue.destination as? DetailViewController {
                if let myPath = tableView.indexPathForSelectedRow {
                    myZiel.myIndex = myPath.row
                }
                
            }
        }
    }
//Below is another option (more user friendly) to delete certain rows (alernatively or additionaly to what is presented with the delete button in the detail view controller) by giving the chance via an Edit button on the left of the navigation bar; if the table view is in editing mode, another tap on it will disable this mode and vice versa (so, touching the edit button will always switch between enabling and disabling this mode). Once the edit mode is enabled, you see a red cirlce with a minus symbol on the left of the row! If editing mode is enabled you can click this red cirlce and a "delete button"will appear at the right of that row. --> another method will be called when this delete button is clicked, see lines 69-72
    
    @IBAction func editButton(_ sender: UIBarButtonItem) {
        if tableView.isEditing {
            tableView.setEditing(false, animated: true)
        } else {
            tableView.setEditing(true, animated: true)
        }
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            daten.remove(at: indexPath.row) // after the delete button is clicked, first action is to delete one instance from the array containing the row's data (in "myData.swift") according to the specified indexPath.row
            tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.automatic) //but in a second step it is this mehtode which finally deletes the row according to the modified "indexPath" structure.
        }
    }
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let movedRow = daten[sourceIndexPath.row]
        daten.remove(at: sourceIndexPath.row)
        daten.insert(movedRow, at: destinationIndexPath.row)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tableView.reloadData()
    }
}

