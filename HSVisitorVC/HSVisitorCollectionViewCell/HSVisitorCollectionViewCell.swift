//
//  HSVisitorCollectionViewCell.swift
//  HSVisitorVC
//
//  Created by Harsh Tiwari on 05/09/23.
//

import UIKit

class HSVisitorCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var detailsView: UIView!
    @IBOutlet weak var visitorImage: UIImageView!
    @IBOutlet weak var visitorNameLabel: UILabel!
    @IBOutlet weak var statusImage: UIImageView!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var visitorDetails: UILabel!
    @IBOutlet weak var entryTimeLabel: UILabel!
    @IBOutlet weak var exitTimeLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.commonSettings()
    }
    private func commonSettings(){
        visitorImage.layer.cornerRadius = 12
        
        detailsView.layer.cornerRadius = 12
        detailsView.backgroundColor = UIColor(red: 0.969, green: 0.945, blue: 0.965, alpha: 1)
    }
    func prePopulateCell(visitorName: String, visitingAdress: String){
        self.visitorNameLabel.text = visitorName
        self.visitorDetails.text = visitingAdress
        self.visitorImage.image = UIImage(named: "oldLady")
        self.statusLabel.text = "Present"
        self.statusLabel.textColor = UIColor(red: 0.071, green: 0.557, blue: 0.353, alpha: 1)
    }

}
