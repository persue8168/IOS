//
//  ViewController.swift
//  AlertController
//
//  Created by student on 2018/11/7.
//  Copyright © 2018年 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func actionSheet(_ sender: Any) {
        let alert = UIAlertController(title: "action sheet", message: "this is an action sheet", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "red", style: .default, handler: {
                (action) in
                print("OK,I am clicked!")
            self.view.backgroundColor = UIColor.red
        }))
        alert.addAction(UIAlertAction(title: "green", style: .destructive, handler: {
            (action) in
            print("destructive clicked!")
            self.view.backgroundColor = UIColor.green
        }))
        alert.addAction(UIAlertAction(title: "blue", style: .cancel, handler: {
            (action) in
            print("cancel clicked!")
            self.view.backgroundColor = UIColor.blue
        }))
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func login(_ sender: Any) {
        let alert = UIAlertController(title: "login", message: "please input you username:", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "login", style: .default, handler: {
            (action) in
            if let usernametextField = alert.textFields?.first,let passwordtextField = alert.textFields?.last{
                print("username:\(usernametextField.text!) password:\(passwordtextField.text!)")
            }
        }))
        alert.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: {
            (action) in
        }))
        alert.addTextField{(textField) in
            textField.placeholder = "your user name?"
        }
        alert.addTextField{(textField) in
            textField.placeholder = "your password?"
            textField.isSecureTextEntry = true
        }
        present(alert, animated: true, completion: nil)
    }
}

