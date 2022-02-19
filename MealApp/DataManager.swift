//
//  DataManager.swift
//  MealApp
//
//  Created by Roma on 16.02.22.
//

import Foundation
import UIKit

final class DataManager {
    
    private init() {
        meals = [Meal(name: "Cola", price: 2.5, image: UIImage(named: "cola"), feedbacks: []),
                 Meal(name: "Potato", price: 3.1, image: UIImage(named: "potato"), feedbacks: []),
                 Meal(name: "Burger", price: 4.2, image: UIImage(named: "burger"), feedbacks: [])]
    }
    
    static let shared = DataManager()
    
    var meals: [Meal]
}
