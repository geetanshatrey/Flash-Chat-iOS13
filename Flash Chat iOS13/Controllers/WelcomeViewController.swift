//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UITextField!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let titleText = K.appName
        var charIndex = 0.0
        titleLabel.text = ""

        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.15 * charIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            charIndex = charIndex + 1
        }
        
    }
    
    @IBAction func registerPressed(_ sender: UIButton) {
        performSegue(withIdentifier: K.welcomeToRegister, sender: self)
    }
    
    @IBAction func loginPressed(_ sender: Any) {
        performSegue(withIdentifier: K.welcomeToLogin, sender: self)
    }
    
}
