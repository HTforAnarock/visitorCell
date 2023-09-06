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
    @IBOutlet weak var noVisitorView: UIView!
    @IBOutlet weak var noVisitorVisitingLabel: UILabel!
    @IBOutlet weak var createPassButton: UIButton!
    
//    private let visitors = [String]()
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
        self.setUpUI()
        
    }

    private func setUpUI(){
        if visitors.count == 0{
            self.noVisitorUI()
            self.visitorCollectioniew.isHidden = true
            self.noVisitorView.isHidden = false
        } else{
            self.visitorCollectioniew.isHidden = false
            self.noVisitorView.isHidden = true
            visitorCollectioniew.delegate = self
            visitorCollectioniew.dataSource = self
            
            self.visitorCollectioniew.register(UINib(nibName: "HSVisitorCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HSVisitorCollectionViewCell")
        }
    }
    
    @IBAction func viewAllAction(_ sender: Any) {
        print("View All clicked")
    }
    
    func noVisitorUI(){
        self.noVisitorView.backgroundColor = UIColor(red: 0.969, green: 0.945, blue: 0.965, alpha: 1)
        self.noVisitorView.layer.cornerRadius = 12
        self.createPassButton.setTitleColor(UIColor(red: 0.518, green: 0.047, blue: 0.435, alpha: 1), for: .normal)
    }
    
    @IBAction func createPassAction(_ sender: Any) {
        print("Pass Create")
    }
    
}
extension HSVisitorTableViewCell: UICollectionViewDelegate{
    
}
extension HSVisitorTableViewCell: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return visitors.count
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
