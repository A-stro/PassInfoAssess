//
//  ViewController.swift
//  PassInfoAssess
//
//  Created by Aaron Gerell on 8/5/19.
//  Copyright © 2019 MAC. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var firstTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func page2ButtonTapped(_ sender: UIButton) {

            let secondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
            if let text = firstTextField.text, !text.isEmpty {
            secondViewController.arrayOfNames = secondViewController.arrayOfNames + [text]
            
        }
            
            present(secondViewController, animated: true, completion: nil)
    }
    
    

}

