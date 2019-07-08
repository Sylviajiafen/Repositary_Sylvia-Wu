//
//  ViewController.swift
//  Week4TableView
//
//  Created by Sylvia Jia Fen  on 2019/7/8.
//  Copyright © 2019 Sylvia Jia Fen . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        if let myLabel = cell.textLabel {
            myLabel.text =
            "This is section \(indexPath.section), row \(indexPath.row)"
        }
        
        return cell
    }
    
    
}

//

var oddOrNot = {(_ input: Int) -> Bool in
    if input % 2 == 0 {
        return false
    } else {
        return true
    }
}

