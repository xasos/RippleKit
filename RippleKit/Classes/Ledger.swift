//
//  Ledger.swift
//  Pods
//
//  Created by Niraj Pant on 7/26/17.
//
//

import Foundation
import Alamofire

public class Ledger {

    public init() {
        print("this is not a drill!!!")
    }
    
    public func ledger() {
        let parameters: [String: Any] = [
            "method" : "ledger",
            "params": [
                [
                    "full": false,
                    "expand": false,
                    "transactions": true,
                    "accounts": true
                ]
            ]
        ]
        
        Alamofire.request(rippleServers[0], method:.post, parameters: parameters, encoding: JSONEncoding.default)
            .responseJSON { response in
                print(response)
        }
    }
    
    public func ledger_closed() {
        let parameters: [String: Any] = [
            "method" : "ledger_closed",
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
        // abstract this
        Alamofire.request(rippleServers[0], method:.post, parameters: parameters, encoding: JSONEncoding.default)
            .responseJSON { response in
                print(response)
        }
    }
}
