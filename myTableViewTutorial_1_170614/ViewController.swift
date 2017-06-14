//
//  ViewController.swift
//  myTableViewTutorial_1_170614
//
//  Created by Joachim Vetter on 14.06.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit

// In this example I use a UITableViewController, so I've deleted the commom UIViewController from the IB and replaced it by the pre-configured UITableViewController from the object library, I call my correspondig class for this controller "myTableViewController" as you see below, and it inherits from UITableViewController; don't forget to give this new Controller the correct class name (myTableViewController) in the Identity inspector (top row there) and to set it as the Initial View Controller in the Attribute Inspector.

// We can either make a separate swift file containing a class for the table view cell object OR we can leave this away by giving a tag to the view(s) inside this prototype cell; first, I show how to use a separate class for this prototype cell, I call it myCellViews!

class myTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //we don't need delegate declarations with such a UITableViewController, it knows how to ask for the data source and also knows how to treat/react to user events with our table!
    }
    //But we MUST implement two methods to make our table work at all:
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCells = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! myCellView
        //above: the reusable cells of our table with the specified identifier and the specified index path is now downcasted as "myCellView", this means that our protoype cell must now be referenced to via our created class for this table view cell. The constant "myCells" is now the reference to the reusable (protoype) cells which are defined via our class "myCellView"
        myCells.myLabel.text = "Kakuro"
        //And now we refer to the Outlet variable "myLabel" in this class for the rable view cell. We have access to this variable because we created the reference above via the variable "myCells" and the downcasting "as! myCellView".
        myCells.accessoryType = .none
        //At the beginning we do not have any checkmarks for our rows.
        return myCells
    }
}

