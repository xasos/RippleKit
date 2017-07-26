//
//  ViewController.swift
//  RippleKit
//
//  Created by Niraj Pant on 07/26/2017.
//  Copyright (c) 2017 Niraj Pant. All rights reserved.
//

import UIKit
import RippleKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("yo")
        let account = Account()
        account.account_info()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

