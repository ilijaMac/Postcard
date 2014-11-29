//
//  ViewController.swift
//  Postcard
//
//  Created by Ilija on 11/29/14.
//  Copyright (c) 2014 Ilija. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameText: UITextField!
    @IBOutlet weak var enterMessageText: UITextField!
    @IBOutlet weak var sendBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailBtnClick(sender: UIButton) {
        messageLabel.hidden = false;
        messageLabel.text = enterNameText.text + ", you sent the message!";
        messageLabel.textColor = UIColor.redColor();
        sender.enabled = false;
        sendBtn.setTitle("Mail sent!", forState: UIControlState.Normal)
        enterNameText.enabled = false;
        enterMessageText.enabled = false;
        enterMessageText.resignFirstResponder();
    }

}

