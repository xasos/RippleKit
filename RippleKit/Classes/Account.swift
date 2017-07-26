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
    
    /// find server method
    /// ping method
    
    public init() {
        print("this is not a drill!!!")
    }
    
    public func account_info(account: String) {
        let parameters: [String: Any] = [
            "method" : "account_info",
            "params": [
                [
                    "account" : account
                ]
            ]
        ]
        
        Alamofire.request(rippleServers[0], method:.post, parameters: parameters, encoding: JSONEncoding.default)
            .responseJSON { response in
                print(response)
        }
    }
}
