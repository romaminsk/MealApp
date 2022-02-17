//
//  ReviewViewController.swift
//  MealApp
//
//  Created by Roma on 17.02.22.
//

import UIKit

final class ReviewViewController: UIViewController {

    @IBOutlet private weak var ratingBar: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    var rating: String?
        
    
    @IBAction private func ratingBarAction(_ sender: UISegmentedControl) {
    }
    
    @IBAction private func saveBtn(_ sender: Any) {
        _ = navigationController?.popToRootViewController(animated: true)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
