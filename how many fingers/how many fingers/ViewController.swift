//
//  ViewController.swift
//  how many fingers
//
//  Created by Francis Gonzales Tello on 10/23/15.
//  Copyright © 2015 Francis Gonzales Tello. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fingerField: UITextField!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func guessFingers(sender: AnyObject) {
        var finger:Int = Int(arc4random_uniform(6));
        var fingerInserted:Int = Int(fingerField.text!)!;
        
        if finger == fingerInserted {
            messageLabel.text = "Good, you seem to be a fucking magician!!"
        } else {
            messageLabel.text = "Opps, you inserted \(fingerInserted) but I had \(finger)"
        }
    }

}

