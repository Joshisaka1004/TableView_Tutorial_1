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
        //we don't need delegate declarations with such a UITableViewController, it knows how to ask for the data source and also knows how to treat/react to user events with our table!
    }
    //But we MUST implement two methods to make our table work at all:
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCells = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        myCells.textLabel?.text = "Kakuro"
        return myCells
    }
}

