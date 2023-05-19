//
//  MealsView.swift
//  Little Lemon Reservation
//
//  Created by Mantiz on 18/02/23.
//

import SwiftUI

struct MealsView: View {
    @EnvironmentObject var mealModel: MealModel
    var body: some View {
        ForEach(self.mealModel.allMeals, id: \.self) { dishes in
            HStack{
                VStack(alignment: .leading){
                    Text(dishes.mealName)
                        .font(.title2)
                        .padding(.bottom, 5)
                    Text(dishes.description)
                        .font(.caption)
                        .lineLimit(4)
                        .padding(.bottom, 5)
                    Text(dishes.price)
                }
                Spacer()
                Image(dishes.mealImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .clipped()

            }
            .padding()
        }
        .border(Color.gray, width: 2)
    }
}

struct MealsView_Previews: PreviewProvider {
    static var previews: some View {
        MealsView().environmentObject(MealModel())
    }
}
