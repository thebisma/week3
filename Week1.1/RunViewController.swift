//
//  RunViewController.swift
//  Week1.1
//
//  Created by iosdev on 9/2/17.
//  Copyright © 2017 iosdev. All rights reserved.
//

import UIKit

class RunViewController: UIViewController {

    @IBOutlet weak var nextLabel: UILabel!
    var ayam: String!
    var banteng: String!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextLabel.text = ayam
        dateLabel.text = banteng
        
    }
    
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    
}
