//
//  ViewController.swift
//  Lab2
//
//  Created by Christopher Aytona on 2018-06-07.
//  Copyright © 2018 Christopher Aytona. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var Solution: UILabel!
    @IBOutlet var n1: UITextField!
    @IBOutlet var n2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func InputCheck() -> Bool {
        if n1.text!.isEmpty || n2.text!.isEmpty {
            return true
        } else if Float(n1.text!) == nil || Float(n2.text!) == nil {
            return true
        }
        return false
    }
    
    func ShowWarning() {
        let warning = UIAlertController(title: "Warning", message: "Invalid Inputs", preferredStyle: .alert)
        warning.addAction(UIAlertAction(title:"Ok", style: .default, handler: nil))
        self.present(warning,animated: true)
    }

    @IBAction func Plus(_ sender: UIButton) {
        if InputCheck() {
            ShowWarning()
        } else {
            let val1 = Float(n1.text!)
            let val2 = Float(n2.text!)
            let sum = val1! + val2!
            Solution.text = String(sum)
        }
    }
    
    @IBAction func Minus(_ sender: UIButton) {
        if InputCheck() {
            ShowWarning()
        } else {
            let val1 = Float(n1.text!)
            let val2 = Float(n2.text!)
            let difference = val1! - val2!
            Solution.text = String(difference)
        }
    }
}

