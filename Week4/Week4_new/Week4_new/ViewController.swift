//
//  ViewController.swift
//  Week4_new
//
//  Created by Sylvia Jia Fen  on 2019/7/8.
//  Copyright © 2019 Sylvia Jia Fen . All rights reserved.
//

import Foundation
import UIKit

let GetURL = "https://stations-98a59.firebaseio.com/practice.json"

class ViewController: UIViewController {

    @IBOutlet weak var stationIDLabel: UILabel!
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var stationAddressLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let endpoint = Somewhere.Endpoint.place.url
        let task = URLSession.shared.dataTask(with: endpoint) { (data, response, error) in
            guard let data = data else { return }
            print(data)
            
  /*__          do {
                let json = try JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
            } catch {
                print(error)
            }
*/
            let decoder = JSONDecoder()
            let placeData = try! decoder.decode(StationData.self, from: data)
            
            guard let idURL = URL(string: placeData.stationID) else { return }
            let task = URLSession.shared.dataTask(with: idURL, completionHandler: { (data, response, error) in
                
                DispatchQueue.main.async {
                    self.stationIDLabel.text = placeData.stationID
                }
            })
            task.resume()
            
            guard let nameURL = URL(string: placeData.stationName) else { return }
            let task2 = URLSession.shared.dataTask(with: nameURL, completionHandler: { (data, response, error) in
                
                DispatchQueue.main.async {
                    self.stationNameLabel.text = placeData.stationName
                }
            })
            task2.resume()
            
            guard let addressURL = URL(string: placeData.stationAddress) else { return }
            let task3 = URLSession.shared.dataTask(with: addressURL, completionHandler: { (data, response, error) in
                
                DispatchQueue.main.async {
                    self.stationAddressLabel.text = placeData.stationAddress
                }
            })
            task3.resume()
            
            
        }
        
       task.resume()
    
}


struct StationData: Codable {
    let stationID: String
    let stationName: String
    let stationAddress: String
    }
}


