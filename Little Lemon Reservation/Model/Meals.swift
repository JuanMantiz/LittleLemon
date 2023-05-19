//
//  Meals.swift
//  Little Lemon Reservation
//
//  Created by Mantiz

import Foundation

struct Meals: Hashable {
    let mealName: String
    let description: String
    let price: String
    let mealImage: String
    var id = UUID()
}

class MealModel: ObservableObject {
  let allMeals = [
            Meals(mealName: "Greek Salad", description: "The famous greek salad of crispy lettuce, peppers, olives and our Chicago style feta cheese, garnished with crunchy garlic and rosemary croutons.", price: "$12.99", mealImage: "image1"),
                Meals(mealName: "Brusheta", description: "Our Bruschetta is made from grilled bread that has been smeared with garlic and seasoned with salt and olive oil. Toppings of tomato, veggies, beans, cured pork, or cheese are examples of variations. In Italy, a brustolina grill is frequently used to create bruschetta.", price: "$7.99", mealImage: "image2"),
            Meals(mealName: "Grilled Cheese", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sed cursus.", price: "$20.99", mealImage: "image3"),
            Meals(mealName: "Pasta", description: "Traditional fetuchini pasta with a contemporary pressentation", price: "$18.99", mealImage: "image4")
        ]
    }

