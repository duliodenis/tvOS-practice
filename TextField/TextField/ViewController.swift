//
//  ViewController.swift
//  TextField
//
//  Created by Dulio Denis on 1/2/16.
//  Copyright © 2016 Dulio Denis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.addTarget(self, action: "textChanged:", forControlEvents: UIControlEvents.EditingChanged)
    }

    func textChanged(updatedText: UITextField) {
        label.text = updatedText.text
    }

}

