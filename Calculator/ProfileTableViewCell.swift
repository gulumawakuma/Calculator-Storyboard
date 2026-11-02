//
//  ProfileTableViewCell.swift
//  Calculator
//
//  Created by Guluma Wakuma on 02/11/2026.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var firstName: UILabel!
    @IBOutlet weak var userName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(name: String, user: String, picture: String){
        profilePicture.image = UIImage(named: picture)
        firstName.text = name
        userName.text = user
    }
    
}
