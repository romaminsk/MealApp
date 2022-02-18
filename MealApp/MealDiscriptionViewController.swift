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
        ratingLabel.text = mealRatingBar
    }

    var mealImage: UIImage?
    var mealName: String?
    var mealPrice: Double?
    var mealRatingBar: String?
    var mealFeadback: [Feedback]? = []
    var index: Int?


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let mealImage = mealImage,
            let mealName = mealName,
            let mealPrice = mealPrice,
            let mealRatingBar = mealRatingBar,
            let mealFeadback = mealFeadback,
            let index = index,
            let destVC = segue.destination as? ReviewViewController else { return }

        destVC.mealImage = mealImage
        destVC.mealName = mealName
        destVC.mealPrice = mealPrice
        destVC.mealRatingBar = mealRatingBar
        destVC.mealFeadback = mealFeadback
        destVC.index = index
    }

}
