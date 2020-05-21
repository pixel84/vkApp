//
//  ViewController.swift
//  vkApp
//
//  Created by Alex Shader on 20.05.2020.
//  Copyright © 2020 shaderness. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var loginInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardUp(notification:)),
            name: UIResponder.keyboardWillShowNotification,
            object: nil)
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardDown(notification:)),
            name: UIResponder.keyboardWillHideNotification,
            object: nil)
    }
    
    //    @IBAction func buttonPressed() {
    //        let login = loginInput.text!
    //        let password = passwordInput.text!
    //        if login == "admin" && password == "123456" {
    //            print("Access Granted")
    //        } else {
    //            print("Access Denied")
    //        }
    //    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        switch identifier {
        case "loginSegue":
            
            let isAuth = login()
            
            if !isAuth {
                showErrorAlert()
            }
            
            return isAuth
        default:
            return true
        }
    }
    
    func login() -> Bool {
        let login = loginInput.text!
        let password = passwordInput.text!
        
        return login == "admin" && password == "123456"
    }
    
    func showErrorAlert() {
        let alert = UIAlertController(
            title: "Ошибка",
            message: "Попробуйте еще раз",
            preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    @objc func keyboardUp(notification: Notification) {
        let userInfo = (notification as NSNotification).userInfo as! [String: Any]
        let frame = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as! CGRect
        scrollBottomConstraint.constant = frame.height
        
    }
    @objc func keyboardDown(notification: Notification) {
        scrollBottomConstraint.constant = 0
        
    }
    
}

