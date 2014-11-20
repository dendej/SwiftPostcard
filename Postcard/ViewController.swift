//
//  ViewController.swift
//  Postcard
//
//  Created by Dendej Sawarnkatat on 11/4/14.
//  Copyright (c) 2014 Dendej Sawarnkatat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Adding some comment heres
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.text = ""
        messageLabel.textColor = UIColor.redColor()
        enterMessageTextField.resignFirstResponder()
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        
    }

}

