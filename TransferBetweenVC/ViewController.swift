//
//  ViewController.swift
//  TransferBetweenVC
//
//  Created by maxxx on 20.02.2020.
//  Copyright © 2020 maxxx. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        let destinationVC = segue.destination as? SecondViewController
        destinationVC?.delegate = self
    }
    
}

extension ViewController: SecondViewControllerDelegate {
    func transferTextToFirstVC(name: String, surname : String) {
        nameLabel.text = name
        surnameLabel.text = surname
    }
    
    
}
