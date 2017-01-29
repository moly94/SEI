//
//  NewItemViewController.swift
//  Assignment03
//
//  Created by Student on 27/01/2017.
//  Copyright © 2017 Student. All rights reserved.
//


import Foundation
import CoreData

import UIKit

class NewItemViewController: UIViewController {
    
    
    lazy var managedContext: NSManagedObjectContext? = {
        guard let appDelegate = UIApplication.shared.delegate as? MyDelegate else {
            return nil
        }
        return appDelegate.persistentContainer.viewContext
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBOutlet weak var txtInput: UITextField!
    
    @IBAction func btnDone(_ sender: AnyObject) {
        
        let data = txtInput.text
        let bucketTask = NSEntityDescription.insertNewObject(forEntityName: "BucketTask", into: self.managedContext!) as! BucketTask; bucketTask.content=data
        
        saveStuff()
        
        self.performSegue(withIdentifier: "goBack", sender: self)
    }
    
    func saveStuff() {
        guard let myDelegate = UIApplication.shared.delegate as? MyDelegate else {
            return
        }
        myDelegate.saveContext()
    }
}
