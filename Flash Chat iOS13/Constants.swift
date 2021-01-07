//
//  Constants.swift
//  Flash Chat iOS13
//
//  Created by Geetansh Atrey on 05/01/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation

struct K {
    static let appName = "⚡️FlashChat"
    static let loginPage = "Login Page"
    static let registerPage = "Registration Page"
    
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    
    static let welcomeToRegister = "WelcomeToRegister"
    static let welcomeToLogin = "WelcomeToLogin"
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
    static let errorEmail = "errorSegueForEmail"
    static let errorPassword = "errorSegueForPassword"
    static let errorAlreadyRegistered = "errorSegueForExisting"
    static let errorEmailNotFoundWhileLogin = "errorSegueForNoEmailLogin"
    static let passwordWrongLogin = "errorSegueForPasswordInvalidLogin"
    static let errorEmailFormatLogin = "errorEmailFormatLogin"
    
    struct BrandColors {
        static let lightRed = "BrandLightRed"
        static let red = "BrandRed"
        static let darkRed = "BrandDarkRed"
        static let lightBlue = "BrandLightBlue"
        static let grey = "BrandGrey"
        static let darkBlue = "BrandDarkBlue"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}
