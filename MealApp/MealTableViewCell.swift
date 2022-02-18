//
//  MealTableViewCell.swift
//  MealApp
//
//  Created by Roma on 18.02.22.
//

import UIKit

class MealTableViewCell: UITableViewCell {

    @IBOutlet weak var mealImage: UIImageView!
    @IBOutlet weak var mealNameLbl: UILabel!
    @IBOutlet weak var mealPriceLbl: UILabel!
    @IBOutlet weak var mealRatingLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
