//
//  ViewController.swift
//  Application
//
//  Created by Alex Gikaev on 21.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBAction func showMainScreenAction(_ sender: Any) {
        checkLogin()
    }
    
    
    func checkLogin() {
        let login = loginTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        
        if !(login.isEmpty && password.isEmpty) && login == "1" && password == "1" {
            print("Вы вошли")
        } else {
            print("Ошибка")
        }
    }
}

