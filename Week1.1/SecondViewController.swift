//
//  SecondViewController.swift
//  Week1.1
//
//  Created by iosdev on 9/2/17.
//  Copyright © 2017 iosdev. All rights reserved.
//

import UIKit

var penampung: [String] = []


class SecondViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var inputTextField: UITextField!
    
    var global: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveButton(_ sender: Any) {
        let name = inputTextField.text
        
        if name != ""{
            temp.append(name!)
        }
        //self.dismiss(animated: true, completion: nil)
        ayam.isHidden = true
        
        let dateString = getCurrentDateString()
        penampung.append(dateString)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func getCurrentDateString() -> String {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMM yyyy - HH:mm"
        
        let result = formatter.string(from: date)
        
        return result
    }
    
}

