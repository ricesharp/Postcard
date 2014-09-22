//
//  ViewController.swift
//  Postcard
//
//  Created by Paul Rice on 9/15/14.
//  Copyright (c) 2014 ricesharp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblMessage: UILabel!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtMessage: UITextField!
    @IBOutlet weak var btnSend: UIButton!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func btnSendPressed(sender: UIButton) {
        
        // add a comment to test github
        
        lblMessage.text = "\(txtMessage.text)"
        lblMessage.hidden = false
        
        txtMessage.text = ""
        
        txtMessage.resignFirstResponder()
        
        lblMessage.textColor = UIColor.redColor()
        
        btnSend.setTitle("Sent", forState: UIControlState.Normal)
    }
}

