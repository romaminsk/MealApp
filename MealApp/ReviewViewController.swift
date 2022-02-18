//
//  ReviewViewController.swift
//  MealApp
//
//  Created by Roma on 17.02.22.
//

import UIKit

final class ReviewViewController: UIViewController {

    @IBOutlet private weak var ratingBar: UISegmentedControl!
    @IBOutlet weak var textField: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    var mealImage: UIImage?
    var mealName: String?
    var mealPrice: Double?
    var mealRatingBar: String?
    var mealFeadback: [Feedback]? = []
    var index: Int?

    @IBAction private func ratingBarAction(_ sender: UISegmentedControl) {
    }

    @IBAction private func saveBtn(_ sender: Any) {
        guard let index = index
            else { return }

        DataManager.shared.meals[index].feedbacks.append(Feedback(text: textField.text, mark: Double(ratingBar.selectedSegmentIndex)))
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
