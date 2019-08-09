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
         self.firstLabel.isHidden = true
        // Do any additional setup after loading the view.
        
        NotificationCenter.default.addObserver(forName: Notification.Name("object"), object: nil, queue: .main) { [weak self] note in
            guard let dict = note.userInfo, let name = dict["name"] as? String else { return }
            self?.firstLabel.text = name
            self?.firstLabel.isHidden = false
            
        }
    }


    @IBAction func page2ButtonTapped(_ sender: UIButton) {

            let secondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
            if let text = firstTextField.text, !text.isEmpty {
            secondViewController.arrayOfNames = secondViewController.arrayOfNames + [text]
            
        }
            
            present(secondViewController, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "firstSegue" {
            let thirdVC = segue.destination as! ThirdViewController
            if let text = firstTextField.text {
                thirdVC.arrayOfNames.append(text)
            }
        }
    }
}

extension FirstViewController : SecondViewControllerDelegate{
    func passNameBack(_ name: String) {
        firstLabel.text = name
        firstLabel.isHidden = false
    }
}
