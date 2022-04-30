//
//  ViewController.swift
//  patikaClassworks
//
//  Created by Nazif Enes Kızılcin on 30.04.2022.
//

import UIKit

class ViewController: UIViewController {
    let username = "eneskzlcn"
    let password = "enes"
    
    @IBOutlet weak var usernameTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var infoLBL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    @IBAction func onTapWelcomeButton(_ sender: UIButton) {
        if let usernameInp = usernameTF.text, let passwordInp = passwordTF.text{
            
            if usernameInp == username, passwordInp == password {
                infoLBL.textColor = .green
                infoLBL.text = "You logged in."
            }
            else {
                infoLBL.textColor = .red
                infoLBL.text = "Wrong username or password"
            }
        }else {
            infoLBL.textColor = .brown
            infoLBL.text = "Fill the blanks"
        }
    }
    
}

