//
//  ViewController.swift
//  Buttons
//
//  Created by Dulio Denis on 12/30/15.
//  Copyright © 2015 Dulio Denis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func selectedRed(sender: AnyObject) {
        view.backgroundColor = UIColor.redColor()
    }
    
    @IBAction func selectedBlue(sender: AnyObject) {
        view.backgroundColor = UIColor.blueColor()
    }
}

