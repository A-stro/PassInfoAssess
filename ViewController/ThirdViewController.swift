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

extension ThirdViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ThirdCollectionCell", for: indexPath) as! ThirdCollectionCell
        
        let name = arrayOfNames[indexPath.row]
        cell.thirdLabel.text = name
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 116, height: 115)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let name = arrayOfNames[indexPath.row]
        let dict = ["name": name]
        NotificationCenter.default.post(name: Notification.Name("object"), object: nil, userInfo: dict)
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
}
