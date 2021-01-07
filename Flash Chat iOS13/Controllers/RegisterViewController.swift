//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = K.registerPage
        navigationItem.title = title
    }
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                    if e.localizedDescription == "The email address is badly formatted." {
                        self.performSegue(withIdentifier: K.errorEmail, sender: self)
                    } else if e.localizedDescription == "The email address is already in use by another account." {
                        self.performSegue(withIdentifier: K.errorAlreadyRegistered, sender: self)
                    }
                    else {
                        self.performSegue(withIdentifier: K.errorPassword, sender: self)
                    }
                    
                } else {
                    // Navigate to the Chat View Controller
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
            }
        }
        
        
    }
    
}
