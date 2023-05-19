//
//  OrderView.swift
//  Little Lemon Reservation
//
//  Created by Mantiz
//

import SwiftUI

struct OrderView: View {
    let ordersForDelivery = [Orders(order: "Lunch"),
                             Orders(order: "Mains"),
                             Orders(order: "Desserts"),
                             Orders(order: "A La Cart"),
                             Orders(order: "Especials")
    ]
    var body: some View {
        VStack(alignment: .leading){
            Text("ORDER FOR DELIVERY!")
                .bold()
                .font(.title2)
                .padding(.bottom, 20)
            ScrollView(.horizontal){
                HStack{
                    ForEach(ordersForDelivery) { orders in
                        Text("\(orders.order)")
                            .frame(width: 100, height: 40, alignment: .center)
                            .background(Color.gray)
                            .foregroundColor(Color.white)
                            .cornerRadius(15)
                    }
                }
            }
        }
        .padding()
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
