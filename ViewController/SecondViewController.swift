//
//  SecondViewController.swift
//  PassInfoAssess
//
//  Created by Aaron Gerell on 8/5/19.
//  Copyright © 2019 MAC. All rights reserved.
//

import UIKit

protocol SecondViewControllerDelegate : class {
    func passNameBack(_ name: String) //passBackName(kobi)
}

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var secondTableView: UITableView!
    
    weak var delegate : SecondViewControllerDelegate?
    var arrayOfNames = ["Bibbidy", "Bobbidy", "Boop",]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func secondBackTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
    
    extension SecondViewController: UITableViewDelegate, UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return arrayOfNames.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell",for: indexPath) as! SecondTableViewCell
            
            let name = arrayOfNames[indexPath.row]
            cell.secondMainLabel.text = name
            cell.secondSubLabel.text = "\(indexPath.row)"
            return cell
            
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 113
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let name = arrayOfNames[indexPath.row]
            delegate?.passNameBack(name)
            dismiss(animated: true, completion: nil)
        }

 }

