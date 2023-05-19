//
//  MainView.swift
//  Little Lemon Reservation
//
//  Created by Mantiz
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    ReserveATableView(tabselection: .constant(1))
                    OrderView()
                    MealsView().environmentObject(MealModel())
                }
            }
            
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Image("Image")
                        .resizable()
                        .frame(width: 150, height: 35)
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Label("", systemImage: "line.3.horizontal")
                        .foregroundColor(Color("greenLemon"))
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Label("", systemImage: "cart.fill")
                        .foregroundColor(Color("greenLemon"))
                    
                }
            }
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
