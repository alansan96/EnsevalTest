//
//  ViewController.swift
//  EnsevalTest
//
//  Created by Alan Santoso on 12/06/20.
//  Copyright © 2020 Alan Santoso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    var emailData : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondView" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.tampilanEmail = emailData
            print(emailData)
        }
    }

    @IBAction func loginTapped(_ sender: UIButton) {
        if  checkMail() && checkPassword() {
            performSegue(withIdentifier: "toSecondView", sender: self)
            
        }
        
    }
    
    func checkMail() -> Bool{
        let email = emailTF.text
        
        if let mail = email {
            if mail.count > 9 && mail.count < 16 && mail.contains("@") {
                emailData = mail
                return true
            }
        }
        
        return false
    }
    
    func checkPassword() -> Bool{
        let password = passwordTF.text
        
    
    
        return true
    }
    
}

