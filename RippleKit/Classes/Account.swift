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
    
    public func account_lines(account: String) {
        let parameters: [String: Any] = [
            "method" : "account_lines",
            "params": [
                [
                    "account" : account,
                    "ledger": "current"
                ]
            ]
        ]
        
        Alamofire.request(rippleServers[0], method:.post, parameters: parameters, encoding: JSONEncoding.default)
            .responseJSON { response in
                print(response)
        }
    }
    
    public func account_offers(account: String) {
        let parameters: [String: Any] = [
            "method" : "account_offers",
            "params": [
                [
                    "account" : account,
                    "ledger": "current"
                ]
            ]
        ]
        
        Alamofire.request(rippleServers[0], method:.post, parameters: parameters, encoding: JSONEncoding.default)
            .responseJSON { response in
                print(response)
        }
    }
    
    public func account_tx(account: String) {
        let parameters: [String: Any] = [
            "method" : "account_tx",
            "params": [
                [
                    "account" : account,
                    "ledger_index_min": -1,
                    "ledger_index_max": -1,
                    "binary": false,
                    "count": false,
                    "descending": false,
                    "offset": 0,
                    "limit": 10,
                    "forward": false
                ]
            ]
        ]
        
        Alamofire.request(rippleServers[0], method:.post, parameters: parameters, encoding: JSONEncoding.default)
            .responseJSON { response in
                print(response)
        }
    }
}
