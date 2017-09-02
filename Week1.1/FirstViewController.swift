//
//  FirstViewController.swift
//  Week1.1
//
//  Created by iosdev on 9/2/17.
//  Copyright © 2017 iosdev. All rights reserved.
//

import UIKit

var temp: [String] = []
var ayam: UILabel!

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var labelToDo: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ayam = labelToDo
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.delegate = self
        tableView.dataSource = self
        
        self.tableView.reloadData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return temp.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath) as! nicoViewCell
        let name = temp[indexPath.row]
        
        cell.textLabel?.text = name
        cell.dateLabel.text = penampung[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "segue", sender: indexPath)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var indexPath = sender as! IndexPath
        if segue.identifier == "segue"{
            let vc: RunViewController = segue.destination as! RunViewController
            vc.ayam = temp[indexPath.row]
            vc.banteng = penampung[indexPath.row]
            
        }
    }
}

