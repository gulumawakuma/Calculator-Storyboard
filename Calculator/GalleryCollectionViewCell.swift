//
//  GalleryCollectionViewCell.swift
//  Calculator
//
//  Created by Guluma Wakuma on 02/11/2026.
//

import UIKit

class GalleryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var galleryImage: UIImageView!
    
    override class func awakeFromNib() {
        super.awakeFromNib()
//        Initial code
    }
    
    
    func configure(name: String){
        galleryImage.image = UIImage(named: name)
        
    }
    
}
