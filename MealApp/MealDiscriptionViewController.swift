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

        imageView.image = meal.image
        nameLabel.text = meal.name
        priceLabel.text = String(meal.price)
        ratingLabel.text = meal.ratingBar
    }

    var meal: Meal {
        DataManager.shared.meals[index]
    }

    var index: Int = 0

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? ReviewTableViewController {
            dest.index = index
        } else if let dest = segue.destination as? ReviewViewController {
            dest.index = index
        }
    }
}
