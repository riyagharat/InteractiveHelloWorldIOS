//
//  ViewController.swift
//  InteractiveHelloWorld
//
//  Created by riya on 8/30/17.
//  Copyright © 2017 riya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var inTextField:UITextField!
    @IBOutlet var outTextLabel:UILabel!
    
    
    @IBAction func buttonTouch(Sender: AnyObject){
        if let inText = inTextField.text {
            outTextLabel.text = "Hello \(inText)"
            print(inText)
        }else{
            outTextLabel.text = "????"
        }
        inTextField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

