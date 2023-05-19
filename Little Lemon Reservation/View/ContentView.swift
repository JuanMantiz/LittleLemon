//
//  ContentView.swift
//  Little Lemon Reservation
//
//  Created by Mantiz 
//

import SwiftUI




struct ContentView: View {
    @StateObject var model = Model()
    @State var tabSelection = 1
    var body: some View {
        TabView (selection: $model.tabViewSelectedIndex){
            
            HomeView()
                .tag(0)
                .tabItem {
                        Label("Home", systemImage: "house")
                    
                }
            LocationsView()
                .tag(1)
                .tabItem {
                    if !model.displayingReservationForm {
                        Label("Locations", systemImage: "fork.knife")
                    }
                }
            
            ReservationView()
                .tag(2)
                .tabItem {
                    if !model.displayingReservationForm {
                        Label("Reservation", systemImage: "square.and.pencil")
                    }
                }
        }
        .environmentObject(model)
        
    }
}

struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Model())
    }
}
