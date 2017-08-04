//
//  Transaction.swift
//  Pods
//
//  Created by Niraj Pant on 7/31/17.
//
//

import Foundation
import Alamofire

public class Transaction {
    
    public init() {
        print("this is not a drill!!!")
    }
    
    public func findPath() {
        let parameters: [String: Any] = [
            "method" : "ripple_path_find",
            "params": [
                [
                    "source_account": "r9cZA1mLK5R5Am25ArfXFmqgNwjZgnfk59",
                    "destination_account": "r9cZA1mLK5R5Am25ArfXFmqgNwjZgnfk59",
                    "destination_amount": [
                        "currency": "EUR",
                        "value": "0.00001",
                        "issuer": "rvYAfWj5gh67oV6fW32ZzP3Aw4Eubs59B"
                    ],
                    "source_currencies": [
                        "currency": "USD"
                    ]
                ]
            ]
        ]
        
        Alamofire.request(rippleServers[0], method:.post, parameters: parameters, encoding: JSONEncoding.default)
            .responseJSON { response in
                print(response)
        }
    }
    
    public func transactionHistory() {
        let parameters: [String: Any] = [
            "method" : "tx_history",
            "params": [
                [
                    "start": 0
                ]
            ]
        ]
        
        Alamofire.request(rippleServers[0], method:.post, parameters: parameters, encoding: JSONEncoding.default)
            .responseJSON { response in
                print(response)
        }
    }
    
    public func transaction(txID: String) {
        let parameters: [String: Any] = [
            "method" : "tx",
            "params": [
                [
                    "transaction": txID
                ]
            ]
        ]
        
        Alamofire.request(rippleServers[0], method:.post, parameters: parameters, encoding: JSONEncoding.default)
            .responseJSON { response in
                print(response)
        }
    }

}
