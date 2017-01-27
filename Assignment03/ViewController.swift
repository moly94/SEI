//
//  ViewController.swift
//  Assignment03
//
//  Created by Student on 26/01/2017.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NotificationCenter.default.addObserver(self,
        selector: #selector(ViewController.setPinLabel),
        name: Notification.Name.UIApplicationDidEnterBackground,
        object: nil)
    }
    
    func setPinLabel(notification: Notification){
        
        lblpin.text="PIN: "
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btn0(_ sender: AnyObject) {
        lblpin.text?.append("0")
    }
    
    
    @IBAction func btn1(_ sender: AnyObject) {
        lblpin.text?.append("1")
    }
    
    
    @IBAction func btn2(_ sender: AnyObject) {
        lblpin.text?.append("2")
    }
   
    @IBAction func btn3(_ sender: AnyObject) {
        lblpin.text?.append("3")
    }
    
    
    @IBAction func btn4(_ sender: AnyObject) {
        lblpin.text?.append("4")
    }
    
    
    
    @IBAction func btn5(_ sender: AnyObject) {
        lblpin.text?.append("5")
    }
    
    
    @IBAction func btn6(_ sender: AnyObject) {
        lblpin.text?.append("6")
    }
    
    
    
    @IBAction func btn7(_ sender: AnyObject) {
        lblpin.text?.append("7")
    }
    
    
    @IBAction func btn8(_ sender: AnyObject) {
        lblpin.text?.append("8")
    }
    
    
    @IBAction func btn9(_ sender: AnyObject) {
        lblpin.text?.append("9")
        
    }
    
    
    @IBOutlet weak var btn6: UIButton!
    
    @IBOutlet weak var lblpin: UILabel!
}

