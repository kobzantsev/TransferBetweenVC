//
//  SecondVCViewController.swift
//  TransferBetweenVC
//
//  Created by maxxx on 20.02.2020.
//  Copyright © 2020 maxxx. All rights reserved.
//

import UIKit

protocol SecondViewControllerDelegate:class {
    func transferTextToFirstVC(name: String, surname: String)
}

class SecondViewController: UIViewController {

    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var surnameText: UITextField!
 
    weak var delegate: SecondViewControllerDelegate?
    var name = ""
    var surname = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
// Do any additional setup after loading the view.
    }
    

    @IBAction func retuntFioButton(_ sender: UIButton) {
 
        delegate?.transferTextToFirstVC(name: nameText.text!, surname: surnameText.text!)
        
        
    }
    
    
    
        
        
    }
