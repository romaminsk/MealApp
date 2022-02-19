//
//  ReviewTableViewCell.swift
//  MealApp
//
//  Created by Roma on 18.02.22.
//

import UIKit

class ReviewTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var dataLbl: UILabel!
    @IBOutlet weak var feedbackLbl: UILabel!
    @IBOutlet weak var ratingLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
