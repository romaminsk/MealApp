//
//  MealDiscriptionViewController.swift
//  MealApp
//
//  Created by Roma on 17.02.22.
//

import UIKit

final class MealDiscriptionViewController: UIViewController {

    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var ratingLabel: UILabel!
    @IBOutlet private weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = mealImage
        nameLabel.text = mealName
        priceLabel.text = String(mealPrice ?? 0.0)
        ratingLabel.text = meal.ratingBar
    }
    
    var mealImage: UIImage?
    var mealName: String?
    var mealPrice: Double?
    
    var meal = Meal(name: "", price: 0.0)
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
