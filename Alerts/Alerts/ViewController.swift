//
//  ViewController.swift
//  Alerts
//
//  Created by Dulio Denis on 12/29/15.
//  Copyright © 2015 Dulio Denis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    // MARK: Simple Alert with one action
    
    @IBAction func alertOne(sender: AnyObject) {
        let title = "This is a simple alert"
        let message = "Your video download has completed. You can access the video from the main menu"
        
        let buttonTitle = "OK"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        
        let okAction = UIAlertAction(title: buttonTitle, style: UIAlertActionStyle.Default, handler: { _ in
            print("OK was tapped")
        })
        
        alert.addAction(okAction)
        
        presentViewController(alert, animated: true, completion: nil)
    }
    
    
    // MARK: An Alert with two actions
    
    @IBAction func alertTwo(sender: AnyObject) {
        let title = "Error Loading Video"
        let message = "There was a problem loading your video. Please try again."
        
        let okButton = "OK"
        let retryButton = "Retry Download"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        
        let okAction = UIAlertAction(title: okButton, style: .Default, handler: nil)
        
        let retryAction = UIAlertAction(title: retryButton, style: .Cancel) { _ in
            print("Retry was tapped")
        }
        
        alert.addAction(okAction)
        alert.addAction(retryAction)
        
        presentViewController(alert, animated: true, completion: nil)
    }

    
    // MARK: An Alert with two actions - one of which is a Destructive Style Action
    
    @IBAction func alertThree(sender: AnyObject) {
        let title = "Are you sure?"
        let message = "Deleting this will permanently remove it from your device."
        
        let cancelButton = "Cancel"
        let deleteButton = "Delete"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        
        let cancelAction = UIAlertAction(title: cancelButton, style: .Cancel, handler: nil)
        let deleteAction = UIAlertAction(title: deleteButton, style: .Destructive) { _ in
            print("Deleting file(s).")
        }
        
        alert.addAction(cancelAction)
        alert.addAction(deleteAction)
        presentViewController(alert, animated: true, completion: nil)
    }
}

