//
//  url.swift
//  Week4_new
//
//  Created by Sylvia Jia Fen  on 2019/7/8.
//  Copyright © 2019 Sylvia Jia Fen . All rights reserved.
//

import Foundation

class Somewhere {
    enum Endpoint: String {
        case place = "https://stations-98a59.firebaseio.com/practice.json"
        
        var url: URL {
            return URL(string: self.rawValue)!
        }
    }
}
