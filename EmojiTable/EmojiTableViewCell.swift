//
//  EmojiTableViewCell.swift
//  EmojiTable
//
//  Created by  Mr.Ki on 24.06.2021.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var emijiLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
//    }

}
