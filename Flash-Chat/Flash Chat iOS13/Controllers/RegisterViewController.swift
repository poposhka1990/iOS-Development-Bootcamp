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
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                    
                    // Error message alert
                    let errorMessage = UIAlertController(title: "Error", message: e.localizedDescription, preferredStyle: .alert)
                    let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
                         print("Ok button tapped")
                      })
                     // Add OK button to a dialog message
                     errorMessage.addAction(ok)
                     // Present Alert to
                     self.present(errorMessage, animated: true, completion: nil)
                } else {
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
            }
            
        }
    }
    
}
