//
//  RegisterViewController.swift
//  LetsChat
//
//  Created by Mai Uchida on 2021/11/17.
//

import Foundation
import UIKit
import Firebase

class RegisterViewController: UIViewController{
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passswordTextField: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextField.text, let password = passswordTextField.text {
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let e = error{
                print(e)
            }else{
                self.performSegue(withIdentifier: "goTo", sender: self)
            }
          
        }
            
        }
        }
    }
    
    
    
    

