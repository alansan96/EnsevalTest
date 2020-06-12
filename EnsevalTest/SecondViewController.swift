//
//  SecondViewController.swift
//  EnsevalTest
//
//  Created by Alan Santoso on 12/06/20.
//  Copyright © 2020 Alan Santoso. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var fullEmail: UILabel!
    @IBOutlet weak var selamatText: UILabel!
    @IBOutlet weak var emailText: UILabel!
    @IBOutlet weak var dateNow: UILabel!
    
    var tampilanEmail: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        dateNow.text = currentDate()
        print(tampilanEmail)
        emailText.text = tampilanEmail?.replacingOccurrences(of: "@", with: "")
        fullEmail.text = tampilanEmail
        selamatText.text = "Selamat \(showConditionDay())"
    }
    
    func showConditionDay() -> String{
        let currDate = currentDate()
        let now = currDate.prefix(2)
        if now < "12" {
            return "Pagi"
        }else if now > "11" {
            return "Siang"
        }else {
            return "Malam"
        }
    }
    
    func currentDate() -> String {
        let date = Date()
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "hh:MM"
        let newDate = dateformatter.string(from: date)
        
        return newDate
    }
    
    
    @IBAction func logutButtonTapped(_ sender: UIBarButtonItem) {
        print("logout")
        navigationController?.popToRootViewController(animated: true)
    }
    
}
