//
//  File.swift
//  MyGreeter
//
//  Created by zerry on 2022/6/27.
//

import Foundation

class Client{
    
    var nowDate: Date = .now
    
    func getGreeting() -> String{
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: nowDate)
        switch hour{
        case 6...11:
            return "Good morning"
        case 12...17:
            return "Good afternoon"
        default:
            return "Good evening"
        }
    }
}
