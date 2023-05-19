//
//  ReservationView.swift
//  Little Lemon Reservation
//
//  Created by Mantiz on 23/01/23.
//

import SwiftUI

struct ReserveATableView: View {
    @Binding var tabselection: Int
    var body: some View {
        ZStack {
            Color("greenLemon")
            VStack(alignment: .leading) {
                Text("Little Lemon")
                    .fontWeight(.bold)
                    .foregroundColor(.yellow)
                    .font(.custom(
                        "MarkaziText",
                        fixedSize: 34))
                    .padding(.leading)
                Text("Chicago")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding(.leading)
                VStack (alignment: .leading) {
                    HStack {
                        Text("We are a family owned Mediterranean restaurant, focused on traditional recipes served with a modern twist.")
                            .foregroundColor(.white)
                            .padding()
                        Image("reservationImage")
                            .resizable()
                            .frame(width: 150, height: 150)
                            .padding(.trailing)
                    }
                    NavigationLink (destination: LocationsView()){
                        Text("Reserve a table")
                            .frame(width: 150, height: 50, alignment: .center)
                            .background(Color.yellow)
                            .foregroundColor(Color.black)
                            .cornerRadius(60)
                    
                    }
                }
                .padding(.leading)
                .padding(.bottom)
                
            }
        }
        .padding(.init(top: 10, leading: 0, bottom: 10, trailing: 0))
    }

}


    

struct ReserveATableView_Previews: PreviewProvider {
    static var previews: some View {
        ReserveATableView(tabselection: .constant(1))
    }
}
