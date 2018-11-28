//
//  ViewController.swift
//  collectionViewGrid
//
//  Created by nirzar on 28/11/18.
//  Copyright © 2018 nirzar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - UICollectionView Outlet
    @IBOutlet weak var cvGrid: UICollectionView!
    
    //MARK: - ViewController Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

//MARK: -
extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if section % 2 == 0 {
            return 3
        } else {
            return 2
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = cvGrid.dequeueReusableCell(withReuseIdentifier: "GridCollectionViewCell", for: indexPath as IndexPath) as! GridCollectionViewCell
        
        if indexPath.section % 2 == 0 {
            cell.backgroundColor = UIColor.black
        } else {
            cell.backgroundColor = UIColor.green
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if indexPath.section % 2 == 0 {
            return CGSize(width: collectionView.frame.size.width/3.2, height: collectionView.frame.size.width/3.2)
        } else {
            return CGSize(width: collectionView.frame.size.width/2.25, height: collectionView.frame.size.width/2.25)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.init(top: 5, left: 0, bottom: 5, right: 0)
    }
}

