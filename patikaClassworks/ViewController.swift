//
//  ViewController.swift
//  patikaClassworks
//
//  Created by Nazif Enes Kızılcin on 30.04.2022.
//

import UIKit

class ViewController: UIViewController {

    // MARK: PROPERTIES
    
    let username = "eneskzlcn"
    let password = "enes"

    // MARK: IBOUTLETS
    
    @IBOutlet weak var usernameTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var infoLBL: UILabel!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    // MARK: IBACTIONS
    
    @IBAction func onTapWelcomeButton(_ sender: UIButton) {
        
        if let usernameInp = usernameTF.text, let passwordInp = passwordTF.text{
            
            if usernameInp == username, passwordInp == password {
                infoLBL.textColor = .green
                activityIndicator.startAnimating()
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

