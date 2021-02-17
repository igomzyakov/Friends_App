//
//  ViewController.swift
//  Friends
//
//  Created by Игорь Гомзяков on 17.02.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.isSecureTextEntry = true
        // Do any additional setup after loading the view.
    }


}

