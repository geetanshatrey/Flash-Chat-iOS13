//
//  ErrorViewController.swift
//  Flash Chat iOS13
//
//  Created by Geetansh Atrey on 05/01/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ErrorViewController : UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    var error = ""
    
    override func viewDidLoad() {
        textLabel.text = error
    }
    
}
