//
//  SecondViewController.swift
//  TableViewProject
//
//  Created by Student on 07/01/2019.
//  Copyright © 2019 Artur sp.zoo. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var surnameField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    
    var nameVar: String = ""
    var surnameVar: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameField.text = nameVar
        surnameField.text = surnameVar
    }
    
}
