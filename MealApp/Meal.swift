//
//  Meal.swift
//  MealApp
//
//  Created by Roma on 16.02.22.
//

import Foundation
import UIKit

struct Meal {
    
    var name: String
    var price: Double
    var image: UIImage?
    
    var feedbacks: [Feedback] = []
    
    var ratingBar: String {
        if let rating = rating {
            return String(repeating: "⭐️", count: Int(rating.rounded(.up)))
        } else {
            return "Здесь ещё нет отзывов"
        }
    }
    
    private var rating: Double? {
        if feedbacks.isEmpty {
            return nil
        } else {
            var sum: Double = 0
            for rewiev in feedbacks {
                sum += rewiev.mark
            }
            return sum / Double(feedbacks.count)
        }
    }
}

struct Feedback {
    
    private let date = Date()
    
    let text: String
    let mark: Double
    
    var ratingBar: String {
        String(repeating: "⭐️", count: Int(mark.rounded(.up)))
    }
    
    var dateString: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
        dateFormatter.locale = Locale(identifier: "ru_Ru")
        return dateFormatter.string(from: date)
    }
}
