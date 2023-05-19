//
//  Little_Lemon_ReservationApp.swift
//  Little Lemon Reservation
//
//  Created by Mantiz on 20/01/23.
//

import SwiftUI

@main
struct Little_Lemon_ReservationApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                
        }
    }
    init() {
                for family in UIFont.familyNames.sorted() {
                    let names = UIFont.fontNames(forFamilyName: family)
                    print("Family: \(family) Font names: \(names)")
                }
            }
}
