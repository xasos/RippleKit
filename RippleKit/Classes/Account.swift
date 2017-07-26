//
//  Account.swift
//  Pods
//
//  Created by Niraj Pant on 7/26/17.
//
//

import Foundation
import Alamofire

public class Account {
    let parameters: [String: Any] = [
        "IdQuiz" : 102,
        "IdUser" : "iosclient",
        "User" : "iosclient",
        "List": [
            [
                "IdQuestion" : 5,
                "IdProposition": 2,
                "Time" : 32
            ],
            [
                "IdQuestion" : 4,
                "IdProposition": 3,
                "Time" : 9
            ]
        ]
    ]
    
    func account_info() {
        Alamofire.request(rippleServers[0], method:.post, parameters: parameters, encoding: JSONEncoding.default)
            .responseJSON { response in
                print(response)
                return response
        }
    }
}
