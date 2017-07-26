//
//  Utility.swift
//  Pods
//
//  Created by Niraj Pant on 7/26/17.
//
//

import Foundation
import Alamofire

public class Utility {
    
    /// find server method
    /// ping method
    /// create account class? takes in acct id/hash
    /// pass in as reference
    
    public init() {
        print("this is not a drill!!!")
    }
    
    public func ping() {
        let parameters: [String: Any] = [
            "method" : "ping"
        ]
        
        Alamofire.request(rippleServers[0], method:.post, parameters: parameters, encoding: JSONEncoding.default)
            .responseJSON { response in
                print(response)
        }
    }
    
    public func ledger_current() {
        let parameters: [String: Any] = [
            "method" : "ledger_current"
        ]
        
        Alamofire.request(rippleServers[0], method:.post, parameters: parameters, encoding: JSONEncoding.default)
            .responseJSON { response in
                print(response)
        }
    }
}
