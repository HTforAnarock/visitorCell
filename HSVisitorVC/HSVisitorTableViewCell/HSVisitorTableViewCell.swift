//
//  HSVisitorTableViewCell.swift
//  HSVisitorVC
//
//  Created by Harsh Tiwari on 05/09/23.
//

import UIKit

class HSVisitorTableViewCell: UITableViewCell {
    @IBOutlet weak var todaysVisitorLabel: UILabel!
    @IBOutlet weak var viewAllButton: UIButton!
    @IBOutlet weak var visitorCollectioniew: UICollectionView!
    
    private let visitors = [
        "Soumya Dutta",
        "Vansh",
        "Archit"
    ]
    private let address = [
        "Guest • Alice - 768",
        "Guest • Versa - 324",
        "Guest • Elysium - 942"
    ]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        visitorCollectioniew.delegate = self
        visitorCollectioniew.dataSource = self
        
        self.visitorCollectioniew.register(UINib(nibName: "HSVisitorCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HSVisitorCollectionViewCell")
    }
    
    @IBAction func viewAllAction(_ sender: Any) {
        print("View All clicked")
    }
}
extension HSVisitorTableViewCell: UICollectionViewDelegate{
    
}
extension HSVisitorTableViewCell: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = visitorCollectioniew.dequeueReusableCell(withReuseIdentifier: "HSVisitorCollectionViewCell", for: indexPath) as! HSVisitorCollectionViewCell
        cell.prePopulateCell(visitorName: visitors[indexPath.row], visitingAdress: address[indexPath.row])
        return cell
    }
    
    
}
extension HSVisitorTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 336, height: 106)
    }
}
