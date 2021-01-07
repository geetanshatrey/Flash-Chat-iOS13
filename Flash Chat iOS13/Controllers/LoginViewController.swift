//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = K.loginPage
        navigationItem.title = title
    }

    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e)
                    if e.localizedDescription == "The email address is badly formatted." {
                        self.performSegue(withIdentifier: K.errorEmailFormatLogin, sender: self)
                    } else if e.localizedDescription == "There is no user record corresponding to this identifier. The user may have been deleted." {
                        self.performSegue(withIdentifier: K.errorEmailNotFoundWhileLogin, sender: self)
                    }
                    else {
                        self.performSegue(withIdentifier: K.passwordWrongLogin, sender: self)
                    }
                } else {
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
            }
        }
        
    }
    
}
