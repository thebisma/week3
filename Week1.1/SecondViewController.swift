//
//  SecondViewController.swift
//  Week1.1
//
//  Created by iosdev on 9/2/17.
//  Copyright © 2017 iosdev. All rights reserved.
//

import UIKit

protocol SecondVCDelegate: class {
    func SecondViewControllerDidFinish (_ SecondVC: SecondViewController, didUpdateTodoes todoes: Todoes)
}

//var penampung: [String] = []


class SecondViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var inputTextField: UITextField!
    var penampung: [String] = []
    var delegate: SecondVCDelegate?
    var global: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveButton(_ sender: Any) {
//        let name = inputTextField.text
        
//        if name != ""{
//            temp.append(name!)
//        }
        
//      self.dismiss(animated: true, completion: nil)
        
        //MARK: Ini week 2
//        let result = getCurrentDateString()
//        let tempTodo = Todoes(todo: (inputTextField.text!), dateandtime: result)
//        self.delegate?.SecondViewControllerDidFinish(self, didUpdateTodoes: tempTodo)
//        ayam.isHidden = true
//        
//        let dateString = getCurrentDateString()
//        penampung.append(dateString)
        
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMM yyyy - HH:mm"
        
        let result = formatter.string(from: date)
        let tempTodo = Todoes() //Todoes(todo: (addTodoTtextField.text!), dateandtime: result)
        tempTodo.todo = (inputTextField.text!)
        tempTodo.dateandtime = result
        
        self.delegate?.SecondViewControllerDidFinish(self, didUpdateTodoes: tempTodo)
        
        inputTextField.text = ""
        self.view.endEditing(true)
        tabBarController!.selectedIndex = 0
        
        
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

