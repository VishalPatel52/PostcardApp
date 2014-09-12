//
//  ViewController.swift
//  Postcard
//
//  Created by Vishal Patel on 09/09/14.
//  Copyright (c) 2014 Vishal Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UITextField!
    
    @IBOutlet weak var enterMessageLabel: UITextField!
    
    @IBOutlet weak var sendButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMessageButtonPressed(sender: UIButton) {
        
        // code will evaluate when we pressed button
        messageLabel.hidden = false
        messageLabel.text = enterMessageLabel.text
        enterMessageLabel.text = ""
        enterMessageLabel.resignFirstResponder()
        
        messageLabel.textColor = UIColor.redColor()
        sendButton.setTitle("Message sent", forState: UIControlState.Normal)
        
    }

}

