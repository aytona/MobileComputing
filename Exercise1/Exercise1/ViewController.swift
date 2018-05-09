//
//  ViewController.swift
//  Exercise1
//
//  Created by Christopher Aytona on 2018-05-08.
//  Copyright © 2018 Christopher Aytona. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.text = ""
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func Tap(_ sender: Any) {
        counter += 1
        label.text = "You've tapped: " + String(counter) + " Times"
    }
}

