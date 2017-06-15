//
//  myCellView.swift
//  myTableViewTutorial_1_170614
//
//  Created by Joachim Vetter on 14.06.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit

class myCellView: UITableViewCell {

    
    @IBOutlet weak var myLabel: UILabel!
    //We create an IB Outlet connection to our prototype cell object in the IB and call this variable "myLabel"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

}
