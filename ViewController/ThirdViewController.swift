//
//  ThirdViewController.swift
//  PassInfoAssess
//
//  Created by Aaron Gerell on 8/5/19.
//  Copyright © 2019 MAC. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var thirdCollectionView: UICollectionView!
    
     var arrayOfNames = ["Bibbidy", "Bobbidy", "Boop",]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


    @IBAction func thirdBackTapped(_ sender: UIButton) {
         dismiss(animated: true, completion: nil)
    }
    
}
