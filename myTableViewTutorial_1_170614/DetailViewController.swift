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
        title = "More Infos" // title in the navigation bar on the top right to the "back button's title
        myTextView.text = daten[myIndex].puzzles
        
// In this detail view controller I am only showing a very simple text view (not even nicely layouted) which will show the title of that row which was tapped on in the ViewController. "daten" refers to the class in "myData.swift", it is an array of "myData" instances, so we use the subscript [myIndex] to grab a certain instance (element) in this "daten"-array. And this "[myIndex]" is initially set to "0" (see line 13) but it will be set/modified by the ViewController's (overriden) prepare method for the segue to this Detail View Controller; the prepare method there (see line 50-54 there) sets this "myIndex" variable here according to the specified row index in the tapped table row. Finally, we grab the corresponding puzzles property from the correct instance as the title for the text view.
    }
//below is ONE simple way of deleting a certain row via a button in this detail view controller
    @IBAction func deleteButton(_ sender: UIButton) {
        if !daten.isEmpty { // as long as the daten array is not empty (and therefore as long as our table has rows), we can delete one instance in the daten array
            daten.remove(at: myIndex)
        }
        navigationController?.popViewController(animated: true)
    }
}
