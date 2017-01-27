//
//  NewItemViewController.swift
//  Assignment03
//
//  Created by Student on 27/01/2017.
//  Copyright © 2017 Student. All rights reserved.
//

import Foundation

import UIKit

class NewItemViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBOutlet weak var txtInput: UITextField!
    
    @IBAction func btnDone(_ sender: AnyObject) {
        
        
        self.performSegue(withIdentifier: "goBack", sender: self)
    }
}
